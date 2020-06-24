# boxplot chart
# boxplot(x, data, notch, varwidth, names, main)
# x is a vector or a formula.
# data is the data frame.
# notch is a logical value. Set as TRUE to draw a notch.
# varwidth is a logical value. Set as true to draw width of the box proportionate to the sample size.
# names are the group labels which will be printed under each boxplot.
# main is used to give a title to the graph.

# existing data used
input <- mtcars[,c('mpg','cyl')]
print(head(input))

# creating new file
png(file="boplot_sample.png")
#plotting box chart
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",ylab = "Miles Per Gallon", main = "Mileage Data")
# saving 
dev.off()

#plotting with better view(Notch)
# creating file
png(file= "notch_boxplot.jpg")
#plotting boxplot
boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data",
        notch = TRUE, 
        varwidth = TRUE, 
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low")
)

#saving
dev.off()
