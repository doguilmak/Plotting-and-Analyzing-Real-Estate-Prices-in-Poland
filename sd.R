#Importing library

library(e1071)

# For downloading library;
# install.packages("e1071")

# Impoting the data

data = read.table("data.csv",header=T,sep=';')

# Data analysis

sd2004=sd(data$price2004)
sd2005=sd(data$price2005)
sd2006=sd(data$price2006)
sd2007=sd(data$price2007)
sd2008=sd(data$price2008)

# Joining data into one vector

sd=c(sd2004,sd2005,sd2006,sd2007,sd2008)

# Defining time period (for plotting)

time=2004:2008

# Plotting the data

plot(time,sd,type="b",col="blue")