# working with XML files
# instaling XML package
install.packages("XML")
# Loading packages XML and methods
library("XML")
library("methods")
# Loading XML file input.xml stored in same folder
xmlinputdata  <- xmlParse(file = "input.xml")
# printing data
print(xmlinputdata)
# getting nodes present in XML
countnode <- xmlRoot(xmlinputdata)
# xmlSize counts no of nodes in whole XML document
countsize <- xmlSize(rootnode)
print(countsize)
# to get specifice node details retrive data from countnode var usind index
print(countnode[2])
# getting elements form node
print((countnode[2][1]))
# conversion xml to dataframe
xmltodataframedata <- xmlToDataFrame("input.xml") 
print(xmltodataframedata)