
remove(list=ls()) # Clearing your environment 

setwd("~/Desktop/Islington Lab") # Setting your working directory 


### Atomic Structure of Data ###

# "name", 20, TRUE

### Data Type ###

# Vector 

age = 20
total_ages = c(10, 20, 30)

# Indexing 

total_ages[1] # Indexing starts from 1 

total_names <- c("Jennifer", "Aleksandra")

total_info <- c(1, 2, 3, "Jennifer") # Implicit conversion 


total_ages*10

# List 

jennifer_info <- list("Jennifer", 26)
jennifer_info[2]


nepal <- list(districts=c("Kathmandu", "Lalitpur", "Bhaktapur"), area= 141181)
nepal$districts
nepal$districts[2]


# Matrix 

1:4 # This give me vector from 1 to 4 

mat1 = matrix(1:4, nrow = 2)
mat2 = matrix(1:4, nrow = 2)

mat1*mat2 # Point wise matrix multiplication 

mat1 %*% mat2 # Mathematical matrix multiplication 

 a = 10
a <- 10   # This is the more used assignment operator in R. Avoid = 


### Dataframe ###

### All elements/values within the same column are of same data type.
### Length of all your columns should be equal.
### There is only one dimension/shape of your dataframe. 

### Dataframe is basically collection of multiple vectors (could be of different type) of same length 


my_df <- data.frame(age = c(1, 2, 3, 4), name = c("A","B","C","D"))
my_df[1,1] # First Row, First Column 
my_df[1, 2] # First Row, Second Column 

my_df$name[2] # Second element of name variable/column 

### Factor ### 

# Salary Name Age Gender 

# Number Character Number Character 
# For variables (usually for character) that has deeper meaning, we use factor data type 
# Factor in R = Category in Python 

unclass(factor(c("Male", "Female", "Male")))



my_df

my_df$name <- as.factor(my_df$name)
my_df["name"] = my_df["name"].as_category()


new_df <- data.frame(district=c("Kathmandu", "Lalitpur", "Bhaktapur"), area = 141181)

### Installing libraries/package in R ###

### dplyr ### For Data Manipulation 
### ggplot2 ### For Visualization 

#install.packages("dplyr") # This installs dplyr library 
#install.packages("ggplot2") # Tomorrow 


library(dplyr) # Importing the library in R 






