3+3

#install packages 
install.packages("tidyverse")
install.packages("stringi")
no #only worked when selecting no compilation
#load packages
library(tidyverse)
#########################
#read in data from project
sci_data <- read_csv("data/sci-online-classes.csv", col_names = TRUE)

view(sci_data) #see data 

sci_data #see the first 10 rows of data 

#create a new object
my_dog <- "Amos"
my_dog

sci_data <- read_csv("data/sci-online-classes.csv")  # read in data
view(sci_data)

sci_data |>
  select(student_id, FinalGradeCEMS, course_id) |> # select variables
  rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
  filter(final_grade > .5) |> # keep grades higher than 50% 
  drop_na() # remove rows with missing data

add_numbers <- function(number_1, number_2) {
  number_1 + number_2
}
add_numbers(3,10)

ggplot(sci_data, aes(x = FinalGradeCEMS)) +
  geom_histogram(fill = "light pink")


