import requests
print(requests.get('https://check.torproject.org/api/ip').json())
