
### Import export data set

# Create your own daat set and save in R
a<- 1:30
save(a,file="/Users/anushrimore/Dropbox/Mac/Documents/R_codes/data/dummydata.Rdata")
load("/Users/anushrimore/Dropbox/Mac/Documents/R_codes/data/dummydata.Rdata")
print(a)

# create and read CSV files
var1 <- 1:5
var2 <- (1:5) / 10
var3 <- c("R", "and", "Data Mining", "Examples", "Case Studies")
df1 <- data.frame(var1, var2, var3)
names(df1) <- c("VariableInt", "VariableReal", "VariableChar")

## Data Exploration

dim(iris)  # 150 rows and 5 columns
names(iris) #"Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"     
head(iris)
tail(iris)

## Slicing your data set 
iris[1:6,2:4]  # or iris[1:6,c('Sepal.Width','Petal.Length','Petal.Width')]
iris$Petal.Length[1:20] ## All rows of specific column

# Summary
summary(iris)
quantile(iris$Sepal.Width)
hist(iris$Sepal.Width)
plot(density(iris$Sepal.Width))

## Data exploration for categorical variables 

pie(table(iris$Species)) # pie chart to see count in each categories 
barplot(table(iris$Species)) # pie chart to see count in each categories 
with(iris, plot(Sepal.Length, Sepal.Width, col=Species, pch=as.numeric(Species))) # lot(iris$Sepal.Length, iris$Sepal.Width, col=iris$Species)
pairs(iris) ## visualize the correlation plot

## Exploring ggplot2
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(alpha = 0.1,aes(color = Species))
ggplot(data = iris, aes(x = Species, y = Sepal.Width)) +  geom_boxplot(alpha = 0.1,aes(color = Species)) ## Box plot

