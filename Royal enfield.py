import requests
from bs4 import BeautifulSoup
import csv


url = "https://www.bikewale.com/royalenfield-bikes/"
page = requests.get(url)


soup = BeautifulSoup(page.content,'html.parser')


# images
img1 = []
image = soup.findAll('div',class_= "o-C o-os")
for i in image:
    j = i.img['src']
    img1.append(j)
print(img1)

# links
links = []
link = soup.findAll('div',class_="o-o FTJfQA")
print(link)

    


