# Histograms in R
# hist(v,main,xlab,xlim,ylim,breaks,col,border)

#creating data
v <-  c(9,13,21,8,36,22,12,41,31,33,19)

#creating file
png(file = "sample_histogram.png")

#plotting histogram
hist(v,xlab = "Weight",col = "yellow",border = "blue")
#saving
dev.off()

# viewing x and y range of values
# using same values as above
# creating a file
png(file = "histogram_lim_breaks.png")

#plotting histogram
hist(v,xlab = "Weight",col = "green",border = "red", xlim = c(0,40), ylim = c(0,5),breaks = 5)
#saving
dev.off()
