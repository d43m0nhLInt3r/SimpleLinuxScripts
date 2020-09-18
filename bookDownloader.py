import os
import urllib.request
from datetime import datetime

print("\\\---Book Downloader v.1.3---///")
dateTimeObj = datetime.now()
timestampStr = dateTimeObj.strftime("Book" + "%d-%b-%Y")
os.makedirs(timestampStr)

for x in range(1, 536): #Enter here the correct page numbers
    urllib.request.urlretrieve("https://enteryoururl.example/page" + str(x) + ".jpg", timestampStr + "/page" + str(x) + ".jpg") #Enter the correct URL
print("Download finished")
