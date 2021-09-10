
setwd("C:\\Users\\JAYANTA MAZUMDER\\Desktop\\LEARNBAY\\R Class by Nitish")
getwd()
# Exercises for dplyr

library(dplyr)

iris
names(iris)

# Exercise 1
# Select the first three columns of the iris dataset using their column names. HINT: Use select().

first3 <- select(iris,Sepal.Length,Sepal.Width,Petal.Length)
head(first3)



# Exercise 2
# Select all the columns of the iris dataset except "Petal Width". HINT: Use "-".

head(select(iris, -Petal.Width))
  

# Exercise 3
# Select all columns of the iris dataset that start with the character string "P".

head(select(iris, starts_with("P")))



# Exercise 4
# Filter the rows of the iris dataset for Sepal.Length >= 4.6 and Petal.Width >= 0.5.

filter(iris, Sepal.Length >= 4.6, Petal.Width>=0.5)

# Exercise 5
# Pipe the iris data frame to the function that will select two columns (Sepal.Width and Sepal.Length). HINT: Use pipe operator.

iris %>%
  select(Sepal.Length, Sepal.Width) %>%
  head


# Exercise 6
# Arrange rows by a particular column, such as the Sepal.Width. HINT: Use arrange().

iris %>% arrange(Sepal.Width) %>% head


# Exercise 7
# Select three columns from iris, arrange the rows by Sepal.Length, then arrange the rows by Sepal.Width.

iris %>%
  select(Species, Sepal.Length, Sepal.Width) %>%
  arrange(Sepal.Length, Sepal.Width) %>%
  head


# Exercise 8
# Create a new column called proportion, which is the ratio of Sepal.Length to Sepal.Width. HINT: Use mutate().

iris %>%
  mutate(proportion = Sepal.Length / Sepal.Width) %>%
  head


# Exercise 9
# Compute the average number of Sepal.Length, apply the mean() function to the column Sepal.Length, and call the summary value "avg_slength". HINT: Use summarize().

iris %>%
  summarize(avg_slength = mean(Sepal.Length))


# Exercise 10
# Split the iris data frame by the Sepal.Length, then ask for the same summary statistics as above. HINT: Use group_by().


iris %>%
  group_by(Sepal.Length) %>%
  summarise(avg_slength = mean(Sepal.Length),
            min_slength = min(Sepal.Length),
            max_slength = max(Sepal.Length),
            total = n())

