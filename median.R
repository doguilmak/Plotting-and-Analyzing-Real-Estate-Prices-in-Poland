#Importing library

library(e1071)

# For downloading library;
# install.packages("e1071")

# Impoting the data

data = read.table("data.csv",header=T,sep=';')

# Data analysis

median2004=median(data$price2004)
median2005=median(data$price2005)
median2006=median(data$price2006)
median2007=median(data$price2007)
median2008=median(data$price2008)

# Joining data into one vector

median=c(median2004,median2005,median2006,median2007,median2008)

# Defining time period (for plotting)

time=2004:2008

# Plotting the data

plot(time,median,type="b",col="blue")