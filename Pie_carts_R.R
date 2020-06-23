# Pie Charts in R 
# Syntax - 
# pie(x, labels, radius, main, col, clockwise)
# x- vector containing numeric values in pie
# labels is used to give description to the slices
# radius indicates the radius of the circle of the pie chart.(value between −1 and +1).
# main indicates the title of the chart.
# col indicates the color palette.
# clockwise is a logical value indicating if the slices are drawn clockwise or anti clockwise.

# giving sample data and generating file
x <- c(31, 52, 10, 53)
labels <- c("data1", "data2", "data3", "data4")
 
# creating chart
png(file= "data.png")
# after executing these a data.png file is automatically created in wroking dir

#plotting chart 
pie(x, labels)
# saving
dev.off()
# adding colors and labels to pie chart

png(file="color_chart.jpg")

# adding rainbow pallet colors
pie(x, labels, main = "Sample Data", col = rainbow(length(x)))

# saving
dev.off()

# adding new data to x and labels
x <- c(30, 20, 15, 15, 20)
labels <- c("data1", "data2", "data3", "data4", "data5")

# adding colors and creating a png/jpg file for chat
png(file="new_data_xlableplot.jpg")

# plotting pie chart in new_data_xlableplot.jpg file
pie(x, labels, main="new_data_xlableplot", col= rainbow(length(x)))

# saving
dev.off()

#adding percent and chart legend
# adding for same x and lables values

piedatapercentage <- round(100*x/sum(x), 1)

#addinga png file
png(file= "percentage_new_data.jpg")

# plotting pie
pie(x, labels, main= "Sample Data with Legend and Percent", col = rainbow(length(x)))
# legend can be placed anywhere here its on topleft (other exapmle: topright)
legend("topleft", c("data1", "data2", "data3", "data4", "data5"), cex= 0.8 , fill = rainbow(length(x)))

# saving 
dev.off()

# 3D view of pie
# using same x and label values
# installing package 
install.packages("plotrix")
# loading library
library("plotrix")
# adding png file
png(file="3d_normal.jpg")

#plotting pie in 3d_normal.jpg
pie3D(x,labels = labels,explode = 0.1, main = "3D view of PIE")

# saving 
dev.off()

# adding legend and percent to 3D view
piedatapercentage <- round(100*x/sum(x), 1)
# creating new file
png(file="3d_with_legendpercent.jpg")
# plotting pie
pie3D(x, labels = labels, explode = 0.1, main= "3D view with Legend anf Percent")

legend("topleft", c("data1", "data2", "data3", "data4", "data5"), cex= 0.8 , fill = rainbow(length(x)))

# saving
dev.off()
