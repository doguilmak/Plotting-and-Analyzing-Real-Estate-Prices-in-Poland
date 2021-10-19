#Importing library

library(e1071)

# For downloading library;
# install.packages("e1071")

# Impoting the data

data = read.table("data.csv",header=T,sep=';')

# Data analysis

variance2004=var(data$price2004)
variance2005=var(data$price2005)
variance2006=var(data$price2006)
variance2007=var(data$price2007)
variance2008=var(data$price2008)

# Joining data into one vector

variance=c(variance2004,variance2005,variance2006,variance2007,variance2008)

# Defining time period (for plotting)

time=2004:2008

# Plotting the data

plot(time,variance,type="b",col="red")