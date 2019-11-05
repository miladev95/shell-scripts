from bs4 import BeautifulSoup
import urllib2
import requests


def crawler1():
    url ="https://setare.com/fa/news/60/%D8%B1%D8%A7%D9%87%D9%86%D9%85%D8%A7%DB%8C-%DA%A9%D8%A7%D9%85%D9%84-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%D9%BE%D9%84%D8%A7%DA%A9-%D8%AE%D9%88%D8%AF%D8%B1%D9%88-%D8%A8%D9%87-%D8%AA%D9%81%DA%A9%DB%8C%DA%A9-%D8%B4%D9%87%D8%B1-%D9%88-%D8%A7%D8%B3%D8%AA%D8%A7%D9%86"
    req = urllib2.Request(url)
    con = urllib2.urlopen(req)

    response = requests.get(url)
    html = response.content
    soup = BeautifulSoup(html,'lxml')
    data = []
    for row in soup.find_all('td'):
	with open('pelaks.txt','a+') as output:
		result = row.getText().encode('utf-8')
		output.write(result+"\n")
def crawler2():
	url = "https://www.isna.ir/news/98011002895/%D9%87%D8%B1-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%D9%BE%D9%84%D8%A7%DA%A9-%D9%85%D8%AA%D8%B9%D9%84%D9%82-%D8%A8%D9%87-%DA%86%D9%87-%D8%A7%D8%B3%D8%AA%D8%A7%D9%86%DB%8C-%D8%A7%D8%B3%D8%AA"
	req = urllib2.Request(url)
	con = urllib2.urlopen(req)
	soup = BeautifulSoup(con,'lxml')
	for row in soup.find_all('p'):
		print(row.getText())
crawler1()
