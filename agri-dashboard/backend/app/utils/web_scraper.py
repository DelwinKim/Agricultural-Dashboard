import requests
from bs4 import BeautifulSoup
from datetime import datetime
from sqlalchemy import func
from app import db
from app.models.weather import GeneralWeatherData, WeatherStation


def get_latest_date(station_id):
    station = WeatherStation.query.filter_by(station_id=station_id).first()
    if not station:
        return datetime.min.date()
    
    latest = db.session.query(func.max(GeneralWeatherData.date)).filter(
        GeneralWeatherData.station_id == station.id
    ).scalar()
    return latest or datetime.min.date()


def scrape_table(url, table_id, station_id):
    latest_date = get_latest_date(station_id)
    print(latest_date)  # debugging

    headers = {"User-Agent": "Mozilla/5.0"}
    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        print(f"Failed to fetch data from {url}. Status code: {response.status_code}")
        return []
    soup = BeautifulSoup(response.text, 'html.parser')
    if table_id == "chillUnits":
        table_div = soup.find('div', id=table_id)
        if not table_div:
            print(f"Failed to find div with id: {table_id}")
            return []
        table = table_div.find_all('table')[1]
    else:
        table_div = soup.find('div', id=table_id)
        if not table_div:
            print(f"Failed to find div with id: {table_id}")
            return []
        table = table_div.find('table')
        if not table:
            print(f"Failed to find div with id: {table_id}")
            return []

    rows = table.find_all('tr')
    data = []
    count = 1
    for row in rows[2:-1]:  # Skip header and summary rows
        cells = []
        print(count)  # debugging
        for cell in row.find_all('td'):
            if table_id == "generalWeatherSummary":  # special parsing for general weather table
                anchor = cell.find('a')
                if anchor and 'title' in anchor.attrs:
                    title_text = anchor['title']
                    min_val = title_text.split('Min:')[1].split(' ')[0]
                    max_val = title_text.split('Max:')[1]
                    cells.extend([min_val, max_val])
                else:
                    text = cell.text.strip()
                    if len(cells) == 0:  # First column is the date
                        parsed_date = datetime.strptime(text.split(' - ')[0], "%b %d, %Y").date()
                        if parsed_date <= latest_date:  # stop scraping if we reach the latest date in the database
                            print("reached latest date")  # debugging
                            return data
                        cells.append(parsed_date.strftime("%Y-%m-%d"))
                    else:
                        cells.append(text.replace(',', ''))
            else:  # for all other table types
                text = cell.text.strip()
                if len(cells) == 0 and table_id != "chillUnits":  # first column is the date
                    parsed_date = datetime.strptime(text.split(' - ')[0], "%b %d, %Y").date()
                    if parsed_date <= latest_date:  # stop scraping if we reach the latest date in the database
                        print("reached latest date")  # debugging
                        return data
                    cells.append(parsed_date.strftime("%Y-%m-%d"))
                elif len(cells) == 0 and table_id == "chillUnits":  # first column is the month
                    month_order = {
                        'January': 4, 'Jan': 4, 'February': 5, 'Feb': 5, 'March': 6, 'Mar': 6, 'April': 7, 'Apr': 7,
                        'May': 8, 'June': 9, 'Jun': 9, 'July': 10, 'Jul': 10, 'August': 11, 'Aug': 11,
                        'September': 12, 'Sep': 12, 'October': 1, 'Oct': 1, 'November': 2, 'Nov': 2, 'December': 3, 'Dec': 3
                    }
                    cells.append(text.replace(',', ''))
                    cells.append(month_order[text])
                else:
                    cells.append(text.replace(',', ''))
        data.append(cells)
        count += 1
    return data

def scrape_all_tables(url, station_id):
    return {
        "general_weather": scrape_table(url, "generalWeatherSummary", station_id),
        "detailed_weather": scrape_table(url, "detailedCropSummary", station_id),
        "heat_units": scrape_table(url, "heatUnits", station_id),
        "seasonal_chill_units": scrape_table(url, "chillUnits", station_id),
    }