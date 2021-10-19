#Importing library

library(e1071)

# For downloading library;
# install.packages("e1071")

# Impoting the data

data = read.table("data.csv",header=T,sep=';')

# Data analysis

mean2004=mean(data$price2004)
mean2005=mean(data$price2005)
mean2006=mean(data$price2006)
mean2007=mean(data$price2007)
mean2008=mean(data$price2008)

# Joining data into one vector

mean=c(mean2004,mean2005,mean2006,mean2007,mean2008)

# Defining time period (for plotting)

time=2004:2008

# Plotting the data

plot(time,mean,type="b",col="blue")

