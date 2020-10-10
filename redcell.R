redcell <- read.table("redcell.txt", header = T) #read data
names(redcell) #show the names of vars
is.factor(redcell$ventilation) #check that ventilation is being treated as a factor
plot(folate~ventilation, data = redcell) #plot folate vs ventilation
model <- lm(folate~ventilation, data = redcell) #run the model (ANOVA due to the categorical var)
summary(model) #show the summary