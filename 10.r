serial_no<-seq(1:8) 
x<-seq (145,185,5) 
lower_limit<-seq(145,180,5) 
f<-c(4,6,28,58,64,30,5,5) 
n<-sum(f) 
cf<-cumsum(f) 
class_interval<-c("145-150","150-155","155-160","160-165","165-170","170-175","175-180","180-185") 
df<-data.frame(serial_no,class_interval,lower_limit,f,cf) 
df 
s1<-min(which(cf>=n/2)) 
f1<-f[s1] 
h<-5 
c<-cf[s1-1] 
L<-x[s1] 
median<-L+((n/2-c)/f1)*h 
median


# install below packages if its not installed 
# install.packages("caTools") 
# install.packages("caret") 
library(e1071) 
library(caTools) 
library(caret) 
data(iris) 
str(iris) 
split <- sample.split(iris,SplitRatio=0.7) 
train_cl <- subset(iris,split=="TRUE") 
test_cl <- subset(iris,split=="FALSE") 
train_scale <- scale(train_cl[,1:4]) 
test_scale <- scale(test_cl[,1:4]) 
set.seed(120) 
classifier_cl <- naiveBayes(Species ~ ., data = train_cl) 
classifier_cl 
y_pred <- predict(classifier_cl,newdata = test_cl) 
cm <- table(test_cl$Species, y_pred) 
cmconfusionMatrix(cm)

today <- Sys.Date() 
print(today)



# Load the mtcars dataset 
data(mtcars) 
# Create a boxplot of "mpg" by "cyl" 
boxplot(mpg ~ cyl, data = mtcars, xlab = "Miles per Gallon", ylab = "Number of Cylinders")


