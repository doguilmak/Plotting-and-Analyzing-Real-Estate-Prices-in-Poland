#Importing library

library(e1071)

# For downloading library;
# install.packages("e1071")

# Impoting the data

data = read.table("data.csv",header=T,sep=';')

# Data analysis

kurtosis2004=kurtosis(data$price2004)
kurtosis2005=kurtosis(data$price2005)
kurtosis2006=kurtosis(data$price2006)
kurtosis2007=kurtosis(data$price2007)
kurtosis2008=kurtosis(data$price2008)

# Joining data into one vector

kurtosis=c(kurtosis2004,kurtosis2005,kurtosis2006,kurtosis2007,kurtosis2008)

# Defining time period (for plotting)

time=2004:2008

# Plotting the data

plot(time,kurtosis,type="b",col="red")