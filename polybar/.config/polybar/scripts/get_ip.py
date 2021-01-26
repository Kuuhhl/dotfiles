#!/usr/bin/env python
import requests
import sys

if __name__ == "__main__":
    try:
        with requests.get("https://api.myip.com") as response:
            response = response.json()
    except:
        sys.stdout.write("睊 No connection")
        exit()
    ip = response["ip"]

    sys.stdout.write("  " + ip)
