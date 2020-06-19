print(getwd())
# importing dataset from csv file in working dir
data <- read.csv("input.csv")
print(data)
# return true or false
print(is.data.frame(data))
# analyzing row and cols
print(ncol(data))
print(nrow(data))
# getting max salary
maxSal <- max(data$salary)
print(maxSal)
# getting the person detail having max salary
maxSalPerson <- subset(data, salary== max(salary))
print(maxSalPerson)
print(data)
# getting min salary
minSal <- min(data$salary)
print(minSal) 
# getting details of person having min salary
minSalPerson <- subset(data, salary== min(salary))
print(minSalPerson)
print(data)
# getting people working in Operations dept
deptOperation <- subset(data, dept == "Operations")
print(deptOperation)
#getting people working in IT dept
deptIT <- subset(data, dept == "IT")
print(deptIT)
#getting people working in HR dept
deptHR <- subset(data, dept == "HR")
print(deptHR)
#getting people working in Finance dept
deptFinance <- subset(data, dept == "Finance")
print(deptFinance)
# people who joined on or after 2014
joinAfter <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(joinAfter)
print(data)
# Ctrl + Lto clear console
# writing into a CSV file
data <- read.csv("input.csv")
joinAfter <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(joinAfter)
# write.csv() can create a csv file in existing dir
write.csv(joinAfter,"output.csv")
newFileData <- read.csv("output.csv")
print(newFileData)
print(joinAfter)
# newFileData (that is output.csv) and joinAfter var have same datasets 

