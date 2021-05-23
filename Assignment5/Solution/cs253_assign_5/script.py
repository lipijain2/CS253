#bar- Total runs Vs Format
#group bar - Number of 100s/50s vs Format
#line - Average vs Year(3 for test,odi,t20)
#group line - Number of 4s/6s vs Year
#pie - chart- No. of wins,losses,draw as Captain(3 for test odi t20)
#bar - Number of catches vs Format
#bar - Number of stumpings vs Format

import numpy as np 
import matplotlib.pyplot as plt
import pandas as pd 
import warnings
warnings.filterwarnings("ignore")

#Batsman
x=np.arange(6)
y=[4876,10773,1617,780,4432,449]
width=0.5
plt.bar(x,y,width)
plt.xticks(x,['Test', 'ODI', 'T20I', 'World Cup', 'IPL', 'CL'])
plt.xlabel("Format")
plt.ylabel("Total Runs")
plt.show()

x=np.arange(6)
y1=[33,73,2,5,23,1]
y2=[6,10,0,0,0,0]
width=0.4
plt.bar(x-0.2, y1, width)
plt.bar(x+0.2, y2, width)
plt.xticks(x,['Test', 'ODI', 'T20I', 'World Cup', 'IPL', 'CL'])
plt.xlabel("Format")
plt.ylabel("Number of 50s/100s")
plt.legend(["50s", "100s"])
plt.show()

x=np.array([2005,2006,2007,2008,2009,2010,2011,2012,2013,2014])
y=np.array([37.2,29.3,52.0,35.2,92.2,41.6,26.9,40.6,45.9,33.4])
plt.xticks(x,['2005','2006','2007','2008','2009','2010','2011','2012','2013','2014'],rotation=90)
plt.xlabel("Year")
plt.ylabel("Test Average")
plt.plot(x,y)
plt.show()


x=np.array([2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019])
y=np.array([9.5,49.7,41.0,44.1,57.7,70.5,46.2,58.8,65.5,62.8,52.2,45.7,27.8,60.6,25.0,60.0])
plt.xticks(x,['2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019'],rotation=90)
plt.xlabel("Year")
plt.ylabel("ODI Average")
plt.plot(x,y)
plt.show()  

x=np.array([2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019])
y=np.array([0.0,32.6,9.0,23.0,42.5,19.5,53.6,24.0,77.0,25.0,47.6,42.0,41.0,43.3])
plt.xticks(x,['2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019'],rotation=90)
plt.xlabel("Year")
plt.ylabel("T20I Average")
plt.plot(x,y)
plt.show()

x=np.array([2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019])
y1=np.array([2,87,157,152,134,123,134,107,106,125,112,52,34,79,32,51])
y2=np.array([1,36,32,37,22,29,26,25,23,30,18,12,18,28,6,16])
plt.xticks(x,['2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019'],rotation=90)
plt.xlabel("Year")
plt.ylabel("Count of International 4s/6s")
plt.plot(x,y1)
plt.plot(x,y2)
plt.legend(["4s","6s"])
plt.show()

#Captain
x = np.array([27,18,15])
mylabels = ["Won","Lost","Draw/NR"]
myColors = ["Green","Red","Blue"]
plt.pie(x, labels=mylabels, colors=myColors)
plt.legend(title = "Test")
plt.show()

x = np.array([110,74,16])
mylabels = ["Won","Lost","Draw/NR"]
myColors = ["Green","Red","Blue"]
plt.pie(x, labels=mylabels, colors=myColors)
plt.legend(title = "ODI")
plt.show()

x = np.array([41,28,3])
mylabels = ["Won","Lost","Draw/NR"]
myColors = ["Green","Red","Blue"]
plt.pie(x, labels=mylabels, colors=myColors)
plt.legend(title = "T20")
plt.show()

#Wicketkeeper
x=np.arange(6)
y=[256,321,57,34,98,14]
width=0.5
plt.bar(x,y,width)
plt.xticks(x,['Test', 'ODI', 'T20I', 'World Cup', 'IPL', 'CL'])
plt.xlabel("Format")
plt.ylabel("Number of Catches")
plt.show()

x=np.arange(6)
y=[38,123,34,8,38,11]
width=0.5
plt.bar(x,y,width)
plt.xticks(x,['Test', 'ODI', 'T20I', 'World Cup', 'IPL', 'CL'])
plt.xlabel("Format")
plt.ylabel("Number of Stumpings")
plt.show()