import requests
from bs4 import BeautifulSoup
from datetime import datetime
from weatherdashboard.models import GeneralWeatherData
from django.apps import apps

def get_latest_date(station_id):  # currently assuming all tables have the same data as general FIXME: might change later
    if GeneralWeatherData.objects.filter(station__station_id=station_id).exists():
        return GeneralWeatherData.objects.filter(station__station_id=station_id).latest('date').date
    return datetime.min.date()

def scrape_table(url, table_id, station_id):
    latest_general_weather_date = get_latest_date(station_id) 
    print(latest_general_weather_date)  # debugging

    headers = {"User-Agent": "Mozilla/5.0"}
    response = requests.get(url, headers=headers)
    # Ensure the response is successful
    if response.status_code != 200:
        print(f"Failed to fetch data from {url}. Status code: {response.status_code}")
        return []
    soup = BeautifulSoup(response.text, 'html.parser')

    table = soup.find('div', id=table_id).find('table')
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
                        if parsed_date <= latest_general_weather_date:  # stop scraping if we reach the latest date in the database
                            print("reached latest date")  # debugging
                            return data
                        cells.append(parsed_date.strftime("%Y-%m-%d"))
                    else:
                        cells.append(text)
            else:
                text = cell.text.strip()
                if len(cells) == 0:  # First column is the date
                    parsed_date = datetime.strptime(text.split(' - ')[0], "%b %d, %Y").date()
                    if parsed_date <= latest_general_weather_date:  # stop scraping if we reach the latest date in the database
                        print("reached latest date")  # debugging
                        return data
                    cells.append(parsed_date.strftime("%Y-%m-%d"))
                else:
                    cells.append(text)
        data.append(cells)
        count += 1
    return data

def scrape_all_tables(url, station_id):
    return {
        "general_weather": scrape_table(url, "generalWeatherSummary", station_id),
        "detailed_weather": scrape_table(url, "detailedCropSummary", station_id),
        "heat_units": scrape_table(url, "heatUnits", station_id),
        "chill_units": scrape_table(url, "chillUnits", station_id),
    }