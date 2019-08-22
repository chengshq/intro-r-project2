#https://github.com/chengshq/intro-r-project2

fahrenheit_to_kelvin <- function(temp_F){
  temp_K <- ((temp_F - 32) * (5/9)) + 273.15
  return(temp_K)
}

fahrenheit_to_kelvin(212)

boiling_K <- fahrenheit_to_kelvin(212)

kelvin_to_celsius <- function(temp_K){
  temp_C <- temp_K-273.15
  return(temp_C)
}

fahrenheit_to_celsius <- function(temp_F){
    temp_K <- fahrenheit_to_kelvin(temp_F)
    temp_C <- kelvin_to celsius(temp_K)
    return(temp_C)
}

fahrenheit_to_celsius(32)
kelvin_to_celsius(fahrenheit_to_kelvin(32))

vec <- c(2,3,4)


#write a function that takes two vectors (a & b) as arguments, return 1 new vector that is composed of a b a


highlight <- function(a, b){
  vec <- c(a,b,a)
  return(vec)
}

vec_1 <- c(1,2,3)
vec_2 <- c("a", "b", "c")

highlight(a = vec_1, b = vec_2)    


#write a function called edges that returns a vector composed of the first and last element of the input vector
edges <- function(a){
  vec <- c(a)
  x <- length(vec)
  return(c(vec[1], vec[x]))
}

vec_1 <- c(1, 2, 3, 4, 5)
edges(vec_1)

vec_2 <- c(5)
edges(vec_2)


edges <- function(a){
  first <- a[1]
  last <- a[length(a)]
  vec <- c(a)
  return(first, last)
}

vec_1 <- c(1, 2, 3, 4, 5)
edges(vec_1)

vec_2 <- c(5)
edges(vec_2)


center <- function(data, midpoint = 0){
  centered_data <- data - mean(data) + midpoint
  return(centered_data)
}

example_data <- c(0, 0, 0, 0, 0)

center(data = example_data, midpoint = 0)
center(data = example_data, midpoint = 2)
center(data = example_data)


inf_data <- read.csv("/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv", header = FALSE)
head(inf_data)

mean(inf_data$V7)
day_7_mean_0 <- center(data = inf_data$V7)
inf_data$V7
mean(day_7_mean_0)
all.equal(sum(day_7_mean_0),0)

round(4.5)
round(5.5)

analyze <- function(filename){
#plots the average, max, min of inflammation over time.
#input is a character string of csv file.
  dat <- read.csv(file = filename, header = F)
  avg_day_inflammation <- apply(X = dat, MARGIN = 2, FUN = mean)
  max_day_inflammation <- apply(X = dat, MARGIN = 2, FUN = max)
  min_day_inflammation <- apply(X = dat, MARGIN = 2, FUN = min)
  plot(avg_day_inflammation)
  plot(max_day_inflammation)
}

test_file <- "/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-02.csv"
analyze(filename = test_file)

best_practice <- c("Let", "the", "computer", "do", "the", "work")
print_words <- funtion(sentence){
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}

print_words(sentence = best_practice)
print_words(sentence = best_practice[1:5])

print_words_for <- function(sentence){
  for (word in sentence){
    print(word)
  }
}

print_words(sentence =best_practice)
print_words_for(sentence =best_practice)

for (i in 1:10){
  a <- 2^i
  print(a)
}

colors <- c("red", "blue", "green")

for (col in colors){
  print(paste("My favorite color is", col))
}

my_sum <- function(numbers){
  temp_sum <- 0
  for (summand in numbers){
    temp_sum <- temp_sum + summand
    print(temp_sum)
  }
  return(temp_sum)
}

my_sum <- c(1,2,3,4,5)



# write a function using a for loop that computes exponentials
# exponent(x,n)
exponent <- function(x,n){
  
  for (i in 1:n){
    temp_exp <- x^i
    print(temp_exp)
  }
  return(temp_exp)
}

my_exp <- exponent(3,4)


exponent <- function(x,n){
  temp_exp <- 1
  for (i in 1:n){
    temp_exp <- temp_exp * x
  }
  return(temp_exp)
}

exponent(3,4)
