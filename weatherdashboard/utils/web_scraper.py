import requests
from bs4 import BeautifulSoup
from datetime import datetime

def scrape_table(url, table_id):
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
    for row in rows[2:-1]:  # Skip header and summary rows
        cells = []
        for cell in row.find_all('td'):
            if table_id == "generalWeatherSummary":  # Special parsing for general weather table
                anchor = cell.find('a')
                if anchor and 'title' in anchor.attrs:
                    title_text = anchor['title']
                    min_val = title_text.split('Min:')[1].split(' ')[0]
                    max_val = title_text.split('Max:')[1]
                    cells.extend([min_val, max_val])
                else:
                    text = cell.text.strip()
                    # Parse the date field
                    if len(cells) == 0:  # First column is the date
                        parsed_date = datetime.strptime(text.split(' - ')[0], "%b %d, %Y").strftime("%Y-%m-%d")
                        cells.append(parsed_date)
                    else:
                        cells.append(text)
            else:
                text = cell.text.strip()
                # Parse the date field
                if len(cells) == 0:  # First column is the date
                    parsed_date = datetime.strptime(text.split(' - ')[0], "%b %d, %Y").strftime("%Y-%m-%d")
                    cells.append(parsed_date)
                else:
                    cells.append(text)
        data.append(cells)
    return data

def scrape_all_tables(url):
    return {
        "general_weather": scrape_table(url, "generalWeatherSummary"),
        "detailed_weather": scrape_table(url, "detailedCropSummary"),
        "heat_units": scrape_table(url, "heatUnits"),
        "chill_units": scrape_table(url, "chillUnits"),
    }