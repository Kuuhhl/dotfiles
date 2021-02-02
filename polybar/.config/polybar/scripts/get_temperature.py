#!/usr/bin/env python
import requests
import sys

if __name__ == "__main__":
    # Variables for API
    key = os.environ.get("OPENWEATHERKEY")
    city_name = "Staufen im Breisgau"

    try:
        with requests.get(
            f"https://api.openweathermap.org/data/2.5/weather?q={city_name}&appid={key}"
        ) as response:
            response = response.json()

    # Ignore Errors (site down leads to no widget in bar
    # and doesnt spam bar with errors)
    except:
        exit()

    # Get temperature and convert it from Kelvin to Celsius
    # Also, round the float to integer
    temperature = round(float(response["main"]["temp"]) - 273.15)

    # Get thermometer-icon according to temperature
    if temperature <= 5:
        icon = ""  # <---- empty
    elif temperature <= 10:
        icon = ""  # <---- quarter
    elif temperature <= 15:
        icon = ""  # <---- half
    elif temperature <= 20:
        icon = ""  # <---- three-quarter
    else:
        icon = ""  # <---- full

    # Print result to Bar
    sys.stdout.write(icon + " " + str(temperature) + "°C")
