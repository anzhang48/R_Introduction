# data structures
cats_df <- data.frame(coat = c("calico","black","tacky"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_strings = c(1, 0, 1))
rm(cats)
print(cats_df)

#structure of cats dataframe
str(cats_df)

#Addng numerical with categorical?
cats_df$weight + 2
cats_df$weight + cats_df$coat
paste("My cat is ", cat_df$coat)

#types of data
typeof(cats_df$weight) #double
typeof(TRUE) #logical
typeof(cats_df$coat) #character
?typeof

# Writing Files
?write.csv
write.csv(x = cats_df,
          file = "cats_df.csv",
          row.names = FALSE)

# Matrix
example_mat <- matrix(0, ncol = 6, nrow = 3)
example_mat
?matrix

# Dimensions
dim(example_mat)
dim(cats_df)

# Subsetting
head(cats_df)
cats_df[3]
cats_df$likes_strings

# Using square brackets [row, column]
str(cats_df[1])
str(cats_df$coat)
cats_df[1,]
cats_df[2,3]
cats_df[1:2,]

cats_df[,2]
cats_df[2]
cats_df[]

cats_df[c(1,3),]

# Creating a Numerical Vector

example_mat[1,4]

# Install a package
install.packages("ggplot2")
library(ggplot2)

# Download Data

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv", 
              destfile = "gapminder_data.csv")
read.csv("gapminder_data.csv")
gapminder_df <- read.csv(file = "gapminder_data.csv")

str(gapminder_df)

# Plotting Data 

ggplot(data = gapminder_df,
       mapping = aes(x = gdpPercap, y = lifeExp,
                     color = continent)) +
  geom_point(alpha = 0.5) + 
  labs(x = 'GDP Per Capita',
       y = "Life Expectancy (yrs)") + 
  # Make Multiple Plots by Continent
  facet_wrap(.~continent)

# Checkup
head(gapminder_df)

# Longitudal Study
ggplot(data = gapminder_df,
       mapping = aes(x = year, y = lifeExp,
                     # Grouping to clean up data
                     group = country))
         #Adding lines and points
         geom_line(aes(color = continent)) +
         geom_point(aes(color = continent))
    

# Manipulating Data (from lines 72)
ggplot(data = gapminder_df,
       mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5, aes(color = continent)) + 
  labs(x = 'GDP Per Capita',
       y = "Life Expectancy (yrs)") + 
  scale_x_log10() +
  geom_smooth(method = "lm")

# Make a plot modify the colors and the shape of the points
ggplot(data = gapminder_df,
       mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5, aes(shape = continent, color = continent, size = pop))+
  labs(x = 'GDP Per Capita',
       y = "Life Expectancy (yrs)") + 
  scale_x_log10() +
  geom_smooth(method = "lm")

head(gapminder_df)


# What Software do I have?
sessionInfo()

# Briefwork problem

ggplot(data = gapminder_df,
       mapping = aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(alpha = 0.5, aes(size = pop, color = continent))+
  labs(x = "GDP Per Capita (log10)",
       y = "Life Expectancy, years(log10)") +
  scale_x_log10() +
  scale_y_log10() +
  geom_smooth(method = "lm")

# Feb 7 Lab




          


