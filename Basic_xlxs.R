#install packages xlxs
install.packages("xlsx")
#loading package xlsx
library("xlsx")
# reading xlsx input.xlsx in project folder
inputdata <- read.xlsx("input.xlsx", sheetIndex = 1)
print(inputdata)
citydata <- read.xlsx("city.xlsx", sheetIndex = 1)
print(citydata)
