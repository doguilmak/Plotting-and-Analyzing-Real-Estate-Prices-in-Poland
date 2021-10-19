#Importing library

library(e1071)

# For downloading library;
# install.packages("e1071")

# Impoting the data

data = read.table("data.csv",header=T,sep=';')

# Data analysis

skewness2004=skewness(data$price2004)
skewness2005=skewness(data$price2005)
skewness2006=skewness(data$price2006)
skewness2007=skewness(data$price2007)
skewness2008=skewness(data$price2008)

# Joining data into one vector

skewness=c(skewness2004,skewness2005,skewness2006,skewness2007,skewness2008)

# Defining time period (for plotting)

time=2004:2008

# Plotting the data

plot(time,skewness,type="b",col="blue")