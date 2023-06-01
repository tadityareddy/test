# Define the data 
x <- c(21, 62, 10, 53) 
labels <- c("London", "New York", "Singapore", "Mumbai") 
# Generate random rainbow colors 
colors <- rainbow(length(x)) 
# Create the pie chart 
pie(x, labels = labels, col = colors, main = "City Pie Chart")


p1 = pnorm (55,60,4) 
p2 = 1 - pnorm (68, 60,4) 
print (p1) 
print(p2)


data(mtcars) 
model <- lm(mpg ~ ., data = mtcars) 
summary(model)


sequence <- c() 
num <- 1 
for (i in 1:47) 
{ 
if (num %% 2 == 0 || num %% 3 == 0) {
sequence <- c(sequence, 0) 
} else { 
sequence <- c(sequence, num) }
num <- num + 1 }
sequence