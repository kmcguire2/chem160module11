rmr<-read.table("rmr.txt",header=T) #read the data, has a header
model <- lm(metabolic.rate~body.weight, data = rmr) #is metabolic rate corrlated to body weight
sum.model<-summary(model)
R2 <- sum.model$r.squared #save the R-squared stat from the output
f <- sum.model$fstatistic #save the f stat from the output
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value) #print out the R2 and p values
cat(output) #print the output
intercept <- model$coefficients[1] #define the intercept
slope <- model$coefficients[2] #define the intercept
output<-sprintf("slope=%f  intercept=%f",slope, intercept)  #print the slope and intercept
cat(output) #print the output
png("graph.png") #create a png film
plot(metabolic.rate~body.weight, data = rmr) #plot a graph of metabolic rate v body weight
abline(model) #add a best fit line
dev.off() #close off the image file
