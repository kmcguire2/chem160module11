cs <- read.table("cal_sodium.txt")   #read in the data
model <- lm(Calories~Sodium, data = cs) #run a linear model, with calories as y, sodium as x
plot(Calories~Sodium, data = cs) #plot the model
abline(model) #add best fit line
summary(model) #print out the info