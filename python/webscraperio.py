import requests, re 
from bs4 import BeautifulSoup

data = requests.get("https://www.microcenter.com/product/611893/logitech-mx-master-3-advanced-wireless-mouse-black").content
soup = BeautifulSoup(data, 'html.parser')
details = soup.find("h1")
thisspan = ""
for d in details:
    title = d.find("span")
if title is not None and title != -1:
    thisspan = title
print("The price of "+ thisspan.__str__('data-name'), "is "+ thisspan.__str__('data-price'))
