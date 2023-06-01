# Giving serial number to a data frame
sno <- seq(1:8)

# Define the class intervals
cint <- c("145 - 150", "150 - 155", "155 - 160", "160 - 165", "165 - 170", "170 - 175", "175 - 180", "180 - 185")

# Define the midpoints of class intervals
mid <- seq(147.5, 182.5, 5)

# Given frequency values
f <- c(4, 6, 28, 58, 64, 30, 5, 5)

# Calculate the product of frequency and midpoint
fm <- f * mid

# Create a data frame
df <- data.frame(sno, cint, f, mid, fm)

# Compute the mean
mean_value <- sum(fm) / sum(f)
mean_value






library(datasets)
data(mtcars)
# Fit a Poisson regression model with mpg as the response variable and disp, hp, drat, and wt as the explanatory variables
model<-glm(mpg~disp+hp+drat+wt,data=mtcars,family="poisson")

# Summarize the model
summary(model)



# Coefficient matrix
A <- matrix(c(1, 2, 3,
              2, 2, 3,
              3, 2, 8), nrow = 3, byrow = TRUE)

# Right-hand side vector
B <- c(20, 100, 200)

# Solve the system of equations
solution <- solve(A, B)

# Extract the values of x, y, and z
x <- solution[1]
y <- solution[2]
z <- solution[3]

# Print the solution
print(paste("x =", x))
print(paste("y =", y))
print(paste("z =", z))



library(ggplot2)

g <- function(t) {
  sqrt(t^2 + 1)
}

# Generate data points
t_values <- seq(0, 5, length.out = 100)
g_values <- g(t_values)

# Create a data frame with t and g(t) values
data <- data.frame(t = t_values, g = g_values)

# Create the plot using geom_point
ggplot(data, aes(x = t, y = g)) +
  geom_point() +
  labs(x = "t", y = "g(t)", title = "Plot of g(t) = (t^2 + 1)^0.5")





