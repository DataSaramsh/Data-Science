remove(list=ls()) # Clearing the environment 

setwd("~/Desktop/Islington Lab")


library(dplyr) 

data() # You can see many built in datasets of R 

help("mtcars")

df <- mtcars # Usually df is noted for dataframe 
# For example: sports_df 
class(df) # To see the data type
dim(df) # To know the dimension/shape of the dataframe 

head(df) # To see the initial first few observations 
tail(df)

sapply(df, mean) # This applies the function mean to all variables of df 
# For detail understanding of several apply functions, do research on your own

View(df) # To see your dataset in the form of Excel type sheet 

### Basic Data Analysis and Manipulation ### 

mean(df$wt)

# Filter Operation 

filter(df, wt > 3.21) # To filter all the rows that satisfy the condition 

df[df$wt>3.21, ] # 

df[1, 5] # Give me 1st row 5th column value 
df[1, ] # Give me 1st row and all column value


filter(df, wt > 3.21 & cyl ==6) # You can club different conditions 
filter(df, wt > 3.21 | cyl ==6) # Or operator 


### Select Operation ###

select(df, mpg, wt, cyl) # Selects the column that you want only 
df[, c(wt, mpg, cyl)] # Alternative 

### Sorting / Arranging the dataset ###

arrange(df, wt) # By default ascending order 
arrange(df, desc(wt)) # Now sorts the dataframe on the basis of descending order

order() # Using order function also you can sort your dataframe 

table(df$wt) # Just to see the frequency count of values
table(df$cyl) # Helps you know if a numerical variable is continuous or categorical 

# %>% Pipe Operator # Used in combining multiple operators 
group_by(df, cyl) %>% summarise(mean(wt))

filter(df, cyl == 6) %>% select(wt, cyl)

### Mutate # To change your dataset by adding/updating variables 

df <- mutate(df, new_wt = wt*100) # Adding a new variable 

df <- mutate(df, new_wt = new_wt/100) # Updating existing variable 
df

df$extra_weight <- df$wt * 100 # This is also same as mutate 
head(df)

rename(df, renamed_weight = extra_weight) # To rename a variable 
colnames(df) # To see the column names of dataframe 
# colnames(df) <- c("") # You could give a full list of new names this way

# To create user defined function 
my_function <- function(x, y){
  return(x+y)
}

my_function(2, 3)


### Now we will see Data Visualization ###


library(ggplot2)

### gg = Grammar of Graphics  # 2 basically means 2nd version 

# Univariate Analysis # 

# Histogram vs Bar Plot # 

table(df$wt)

hist(df$wt, main="Histogram of Weight")

plot(density(df$wt)) # To see the distribution/density of your variable

table(df$cyl)

barplot(df$cyl)
barplot(table(df$cyl)) # Now this is problematic 

boxplot(df$wt) # Plots 5 num summary along with outliers 
fivenum(df$wt) # This gives me 5 num summary 

### Bivariate Analysis ###

plot(x=df$wt, y = df$mpg, main="Scatter Plot", xlab = "Weight", ylab = "Mileage") 

plot(df$wt, df$mpg)
ggplot(df, aes(wt, mpg)) + geom_point()

### Grammar of Graphics ###

### First Part: Data 
### Second Part: Aesthetics (Variables that we are concerned with)
### Third Part: Geometry (Which shape/figure that we want to plot)


ggplot(df, aes(wt)) + geom_histogram()
ggplot(df, aes(cyl)) + geom_bar()


ggplot(df, aes(x=wt, y=mpg, shape=am)) + geom_point()

table(df$wt)

### Changing the type of variable ### From cont to factor

df$am <- as.factor(df$am) # To change into factor/categorical 

class(df$am)
class(df$cyl)



my_plot <- ggplot(df, aes(x=wt, y=mpg, shape=as.factor(carb), color=as.factor(cyl))) + geom_point()

my_plot + labs(x="Weight", y="Mileage")

my_plot + geom_smooth(method="lm")


ggplot(df, aes(wt, mpg))+geom_point()+geom_smooth(method="lm")

group_by(df, cyl) %>% summarise(mean(mpg))


