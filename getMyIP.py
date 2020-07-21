import requests
r = requests.get('https://check.torproject.org/api/ip').json()
print(r)
