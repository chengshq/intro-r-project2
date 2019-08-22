#My first R script
#CSQ 8-22-2019

my_data <- read.csv(
  "/home/nwknoblauch/Public/r-novice-inflammation/data/car-speeds.csv")
# use the dollar sign to access columns of data
my_data$Speed

head(my_data)

max(my_data$Speed)
min(my_data$Speed)

maximum_speed <- max(my_data$Speed)
minimum_speed <- min(my_data$Speed)
speed_range <- maximum_speed - minimum_speed

inf_data <- read.csv(
  "/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv", header = FALSE)

inf_head <- inf_data[1:5, 1:3]
#plot the second column
plot(inf_data[,2])

inf_data[1:4,]
inf_data[,2]


patient_1 <- inf_data[1,]
day_1 <- inf_data[,1]
day_2 <- inf_data[,2]

day_1[1]
pt_1_day_1 <- day_1[1]
pt_1_3_day_1 <- day_1[1:3]
max(day_1)
max(inf_data[,3])
min(day_1)

#== true or false
min(day_1) == 1
min(day_1) == 0

day_2 == 0
day_2_zero <- day_2[day_2==0]
day_3 <- inf_data[,3]
day_3_nonzero <- day_3[0 != day_3]
day_3_zero <- day_3[day_3 == 0]
allday_3_zero <- inf_data[day_3 == 0,]

min_inflammation_day <- apply(inf_data, MARGIN = 2, FUN = min)
plot(min_inflammation_day)
??linearmodel
??linear
??model


