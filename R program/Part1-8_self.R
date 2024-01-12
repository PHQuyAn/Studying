#remove variable Environment
rm(list=ls())

#runif(): create `n` random numbers from standard distributions from `min` to `max`
random_numbers <- runif(10, min = 1, max = 100)
print(random_numbers)

#assign(): assign value for a variable 
assign("x",5)
print(x)

#Conditional Statements
# Syntax:
# if (text_expression) { statement }
# if (test_expression) {
#     statement1
# } else { 
#     statment 2
# }

x <- 5
if (x>0) {
    print("Non-negative number")
} else {
    print("Negative number")
}

movies_df <- read.csv("movies-db.csv", header = TRUE)
movies_year <- movies_df[c('name','year')]
movies_year

#Comparison and logical operators
1995 < 1987
2016 >= 2015
"Toy" == "Toy"
"Toy Story" != "Interstellar"

#For loops
# Syntax:
# for (value in sequence)
# { statement }

years <- c(1995, 1998, 1985, 2011, 1936, 1999)
for (yr in years) {
  print(yr)
}

for (yr in years) {
  if (yr < 1980) {
    print("Old")
  } else {
    print("Not that old")
  }
}

#while loops
count <- 1
while (count <= 5) {
  print(c("Iteration number:",count))
  count <- count + 1
}


# Functions in R
# is a block of code that can be re-used in different parts of a program
# two types: Pre-defined and User-defined

#Pre-defined functions
ratings <- c(8.7, 6.9, 8.5)
mean(ratings)
sort(ratings)
sort(ratings, decreasing = TRUE)

#User-defined functions
printHelloWorld <- function() {
  print("Hello World")
}

printHelloWorld

add <- function(x,y) {
  x+y
}
add(3,4)

isGoodRating <- function (rating, threshold = 7) {
  if (rating < threshold) {
      return("NO")
  } else {
      return("YES")
  }
}

isGoodRating(7.5)
isGoodRating(6)
isGoodRating(8)
#threshold is default by 7, we can set another value
isGoodRating(8,8.5) 

#functions within functions
watchMovie <- function(moviename, my_threshold=7) {
   rating <- movies_df[movies_df[,1] == moviename, "average_rating"]
   isGoodRating(rating, threshold = my_threshold)
}

watchMovie('Akira')

#Global and local variables
myFunction <- function() {
    y <<- 3.14
    temp <- "Hello World"
    return(temp)
}
#"temp" is local, it can only be accessed inside the function
myFunction()
temp
#"y" is a global variable, it can be accessed outside the function
y

#Basic string operations
# Counting the characters
str <- "This is R Programing Fundamentals course"
nchar(str)

# Convert characters to upper case
STR = toupper(str)
print(STR)

# Convert characters to lower case
Str = tolower(STR)
print(Str)

# Replace substring
print(str)
re_str <- chartr(" ","-", str)
print(re_str)
# chartr (old, new, x)

#Split a string
# strsplit(x, split, fixed = FALSE, perl = FALSE, useBytes = FALSE)
char_list <- strsplit(str, " ")
word_list <- unlist(char_list)
print(char_list)
print(word_list)

#Sort string in a list
# sort(x, decreasing = FALSE)
sort_list = sort(word_list)
print(sort_list)

#Concatenate strings
# paste(..., sep = " ", collapse = NULL, recycle0 = FALSE)
V1 = "Welcome to"
V2 = "Data Science with R."
V3 = "FPT University"

V = paste(V1, V2, V3, sep = "")
print(V)

#Substrings of a Character Vector
# substr(x, start, stop)
#Extract or replace substrings in a character vector
str = "Welcome to FPT University"
sub_str = substr(str,1,7)
print(sub_str)


#Let's Summary:
# - If statements use comparison and logical operators to test conditions in code
# - For loops perform an operation for each item in a list, vector, data drame column
# - While loops perform an operation until a condition is no longer true.
# - Functions can be pre-defined or user-defined
# - In user-defined, we can control the return value of a function
# - We can define global variables using `<<- variable` assignment operator