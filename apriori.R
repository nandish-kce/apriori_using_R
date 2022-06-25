#loading libraries
library("arules")
library(arulesViz)
library(RColorBrewer)

#loading data
data(Groceries)

#print("Hello")
#creating the model
model<-apriori(Groceries,parameter = list(supp=0.01,conf=0.2))
inspect(model[1:10])

#plot the data 
arules::itemFrequencyPlot(Groceries,topN=20,
                          col=brewer.pal(8,'Pastel2'),main='Item frequency Plot',
                          type="relative",
                          ylab="Item frequency")
