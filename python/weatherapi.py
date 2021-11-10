import requests
import json

r = requests.get('http://api.openweathermap.org/data/2.5/weather?zip=12345,us&appid=4ba99017ff4ab0b68cf49f352599ef32')
data = r.json()

print(type(data['weather'][0]['description']))
print(data['weather'][0]['description'])