#Worksheet-4 in R
#Worksheet for R Programming

#------------------------------------------------------------------------
#1. The table below shows the data about shoe size and height. 
#   Create a data frame...

shoe_table <- data.frame(shoesize = c(6.5,9.0,8.5,8.5,10.5,7.0,9.5,9.0,13.0,7.5,10.5,8.5,12.0,10.5,13.0,11.5,8.5,5.0,10.0,6.5,7.5,8.5,10.5,8.5,10.5,11.0,9.0,13.0),
                      height = c(66.0,68.0,64.5,65.0,70.0,64.0,70.0,71.0,72.0,64.0,74.5,67.0,71.0,71.0,77.0,72.0,59.0,62.0,72.0,66.0,64.0,67.0,73.0,69.0,72.0,70.0,69.0,70.0), 
                      gender = c("F","F","F","F","M","F","F","F","M","F","M","F","M","M","M","M","F","F","M","F","F","M","M","F","M","M","M","M") )


names(shoe_table) <- list("Shoe size", "Height", "Gender")
shoe_table

#a. Describe the data. 
#The data shows the different shoe size among male and female in different heights.

#b. Find the mean of shoe size and height of the respondents.
# Copy the codes and results.


shoe_mean <- mean(shoe_table$`Shoe size`)
shoe_mean


height_mean <- mean(shoe_table$Height)
height_mean

#c. Is there a relationship between shoe size and height?Why? 

#Yes, there is a relationship between shoe size and height, I can imagine that if your 
#shoe size is large, you are also tall. The taller the height, the bigger the shoe size.

#Using factor() 

#examples
Gender <- c("M","F","F","M")
factor_Gender <- factor(Gender)
factor_Gender

#2. Construct character vector months to a factor with factor() and assign the result to
# factor_months_vector. Print out factor_months_vector and assert that R prints out the factor levels below the actual values.

vector_months <- c("March","April","January","November","January","September","October","September","November","August",
                   "January","November","November","February","May","August","July","December","August","August","September",
                   "November","February","April")

vector_months

factor_months_vector <- factor(vector_months)
factor_months_vector 

#3. Then check the summary() of the months_vector and factor_months_vector. 
# Interpret the results of both vectors. Are they both equally useful in this case? 

sum_vec <- summary(vector_months)
sum_vec

sum_fac <- summary(factor_months_vector)
sum_fac

#4. Create a vector and factor for the table below.
factor_data <- c("East" = '1', "West" = '4', "North" = '3')
factor_data

new_order_data <- factor(factor_data,levels = c("East" = '1',  "West" = '4',  "North" = '3'))
print(new_order_data)

#5. Enter the data below in Excel with file name = import_march.csv

#a. Import the excel file into the Environment Pane using read.table() function.
#Write the code.


import <- read.table("import_march.csv", header = T, sep = ",")
import

#b. View the dataset. Write the code and its result

View(import)


