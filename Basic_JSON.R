# installing json package
install.packages("rjson")
print(getwd())
# adding library rjosn
library("rjson")
# input json filr
jsondata <- fromJSON(file= "input.json")
print(jsondata)
# json data in data frame format
jsondataformat <- as.data.frame(jsondata)
print(jsondataformat)