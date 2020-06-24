# plotting bar chart in R
# syntax: barplot(H,xlab,ylab,main, names.arg,col)
# H is a vector or matrix containing numeric values used in bar chart.
# xlab is the label for x axis.
# ylab is the label for y axis.
# main is the title of the bar chart.
# names.arg is a vector of names appearing under each bar.
# col is used to give colors to the bars in the graph.

# creating data for graph
# H vaules 
H <- c(10, 14, 25, 61, 18, 21)

#creating a bar chart file
png(file= "simple_barcahrt.jpg")

# plotting bar chart
barplot(H)
# saving state
dev.off()

# creating chart variables and filling colors
# creating data
H <- c(10, 14, 25, 61, 18, 21)
M <- c("data 1","data 2","data 3","data 4","data 5","data 6")

# creating a new file for this 
png(file="labeled_barchart.jpg")

# plotting graph
barplot(H, names.arg = "Set-of-Data", ylab= "data values", col = "orange", main = "Bar chart with labels and colors", border = "green")
# saving 
dev.off()

# Create the input vectors.
colors = c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)

# Give the chart file a name
png(file = "barchart_stacked.png")

# Create the bar chart
barplot(Values, main = "total revenue", names.arg = months, xlab = "month", ylab = "revenue", col = colors)

# Add the legend to the chart
legend("topleft", regions, cex = 1.3, fill = colors)

# Save the file
dev.off()

