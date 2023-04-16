library(ggplot2)
data(iris)
#Scatterplot of Sepal Length vs Sepal Width, colored by Species
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point() +
  labs(title = "Scatterplot of Sepal Length vs Sepal Width", 
       x = "Sepal Length", y = "Sepal Width")
#Boxplots of Petal Length by Species
ggplot(iris, aes(x = Species, y = Petal.Length)) + 
  geom_boxplot() +
  labs(title = "Boxplots of Petal Length by Species", 
       x = "Species", y = "Petal Length")
#Histogram of Petal Width, colored by Species
ggplot(iris, aes(x = Petal.Width, fill = Species)) + 
  geom_histogram(binwidth = 0.2, alpha = 0.5) +
  labs(title = "Histogram of Petal Width, colored by Species", 
       x = "Petal Width", y = "Count")
#Density plot of Sepal Length by Species
ggplot(iris, aes(x = Sepal.Length, fill = Species)) + 
  geom_density(alpha = 0.5) +
  labs(title = "Density plot of Sepal Length by Species", 
       x = "Sepal Length", y = "Density")
#Stacked Bar chart of Species counts
ggplot(iris, aes(x = "", fill = Species)) + 
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Stacked Bar chart of Species counts")
#Bubble plot of Petal Length and Width by Species
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, size = Sepal.Length, color = Species)) + 
  geom_point(alpha = 0.7) +
  labs(title = "Bubble plot of Petal Length and Width by Species", 
       x = "Petal Length", y = "Petal Width", size = "Sepal Length")
