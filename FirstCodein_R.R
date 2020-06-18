head(cars)
str(cars)
#lazy command
plot(cars)
#good way to do this below command can be used to controll data
plot(cars$speed, cars$dist)
#co relation 
#lazy method
cor(cars)
#controlling data on co-relation
cor(cars$speed, cars$dist)
#Linear Mod
linearMod <- lm(speed ~ dist, data=cars)
summary(linearMod)
#setting seed
set.seed(100)
# 0.8 says 80% of rows
TrainingRowIndex <- sample(1:nrow(cars), 0.8*nrow(cars))
TrainingData <- cars[-TrainingRowIndex,]
TestData <- cars[-TrainingRowIndex,]
#above 3 makes 80% data in TrainingRowIndex and rest 20% in TrainingData
lmMod <- lm(dist ~ speed, data=TrainingData)
distPred <- predict(lmMod,TestData)
summary(lmMod)
actuals_predicts <- data.frame(cbind(actuals=TestData$dist, predicted=distPred))
head(actuals_predicts)

correlatin_accuracy <- cor(actuals_predicts)
correlatin_accuracy
DMwR::regr.eval(actuals_predicts$actuals, actuals_predicts$predicted)
#part1 done

#importing library
library(rpart)
library(rpart.plot)
data('iris')
head(iris)
str(iris)
# set seed
set.seed(9850)
g <- runif(nrow(iris))
iris_ran <- iris[order(g),]
head(iris_ran)
#building a model around iris
modelView <- rpart(Species ~ ., data=iris_ran[1:100, ], method = 'class')
modelView
# plot using rpart
rpart.plot(modelView, type = 4, fallen.leaves = T, extra = 104)
# predicting model
model_predict <- predict(modelView, iris_ran[101: 150, ], type= 'class')
model_predict
# building confusion matrix
#setting libraries caret and e1071
library('caret')
library('e1071')
confusionMatrix(iris_ran[101:150, 5], reference = model_predict)
