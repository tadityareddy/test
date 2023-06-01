# Create the data frame 
df <- data.frame( 
Item = c("Baby food", "Cereal", "Office supplies", "Fruits", "Office supplies", "Household", "Household"), 
OrderPriority = c(1, 2, 3, 1, NA, 3, 3), UnitPrice = c(255.28, 205.7, NA, 9.33, 651.21, 668.27, 668.27), 
UnitsSold = c(9925, 2804, 1779, 8102, 5062, 8974, NA), 
stringsAsFactors = FALSE ) 
# Print the data frame 
df


mean_order_priority <- mean(df$OrderPriority, na.rm = TRUE) 
df$OrderPriority <- replace(df$OrderPriority, is.na(df$OrderPriority), mean_order_priority)
# Print the data frame 
df

median_units_sold <- median(df$UnitsSold, na.rm = TRUE) 
df$UnitsSold <- replace(df$UnitsSold, is.na(df$UnitsSold), median_units_sold)
# Print the data frame 
df

df <- na.omit(df)
# Print the data frame 
df

# df$UnitPrice <- unique(df$UnitPrice)
# Print the data frame 
# df

total_missing <- sum(is.na(df)) 
cat("Total number of missing values in df:", total_missing, "\n")




# Load the mtcars dataset 
data(mtcars) 
# Fit the Poisson regression model 
model <- glm(mpg ~ ., data = mtcars, family = poisson) 
# Print the model summary 
summary(model)


# Character vector with white spaces 
text <- c("Hello ", " World", " Open AI ") 
# Remove white spaces 
text <- gsub("\\s", "", text) 
# Print the modified character vector 
print(text)
