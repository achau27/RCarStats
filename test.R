library(devtools)
install_github('achau27/RCarStats')



#Example of using package
library(RCarStats)

#load sample data
data(mtcars)
head(mtcars)



#Get summary statistics for miles per gallon (mpg)
mpg_summary <- summary_stats(mtcars$mpg)
print(mpg_summary)

#Compare MPG by cylinder count (creates a boxplot)
compare_mpg(mtcars)

#Find top 5 cars by horsepower-to-weight ratio
top5_cars <- top_speed_cars(mtcars, top_n = 5)
print(top5_cars)
