#subsetting data (part 2)
#notes on subsetting
#Three ways of subsetting data in R
# 1 by name

my_data <- read.csv(
  "/home/nwknoblauch/Public/r-novice-inflammation/data/car-speeds.csv")
#the dollar sign gives us named columns of our dataframes
my_data$Color
#dataframes also have default column names
inf_data <- read.csv(
  "/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv", header = FALSE)
inf_data$V13

day_13 <- inf_data$V13
#we can also subset data by its index using the bracket notation
day_13[6:10]
#we can also subset dataframes by index using the bracket notation
#get the first three patients and the day 4 through 8
inf_data[1:3, 4:8]
day_13[2]
color_speed <- c("Color", "Speed")
#can get a range of names just like we can get a range of indexes
my_data[1:3,c("Color", "Speed")]
#this is equivalent
my_data[1:3,color_speed]

# the third way of subsetting data is "logical" or "boolean" or "TRUE/FALSE"

x <- rnorm(n=100000)
length(x)
sum(x)
mean(x)
hist(x)
plot(x)
plot(x[1:1000])
is_pos_x <- x > 0
pos_x <- x[x > 0]
#this is equivalent
pos_x <- x[is_pos_x]
#length has to matach for logical subsetting
length(pos_x)

rnorm_pos <- function(n){
  y <- rnorm(n)
  is_pos_y <- y > 0
  return(y[is_pos_y])
}

#return normally distruted data above value 'v'
rnorm_v <- function(n,v){
  y <- rnorm(n)
  is_above_v <- y > v
  return(y[is_above_v])
}
filtered_data <- rnorm_v(100,1)

pos_data <- rnorm_pos(200000)
min(pos_data)
pos_data[pos_data < 0]
hist(pos_data)

pos_data[1:4]
pos_data[1:4,1:3]


# write a function that generate 'n' random numbers and returns the minimum (min) of those numbers
rnorm_n <- function(n){
  x <- rnorm(n=2000)
  return(x)
}
min(rnorm_n)
