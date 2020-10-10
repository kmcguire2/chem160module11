diabetes <- read.table("diabetes.txt", header = T)  #read in the data
model <- lm(glucose~., data = diabetes) #glucose as response var, test all possible explanatory vars
step(model) #step regression (backwards by default)
model <- lm(glucose~1, data = diabetes) #start with 1 as explanatory var, replace with values from dataset
step(model, direction = "forward", scope = list(upper = terms(glucose~., data = diabetes)))  #run forward step regression