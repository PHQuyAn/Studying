#Vector 
#Create vectors in R
v <- c(5,3,1,4)
print(v)
3:6
seq(from = 1, to =10, by = 2)   #sequence
rep(c(3,5) , times=2, each = 2) #repeat

#seq(): -from -to -by -length.out (the desired length of final sequence)
seq(from = 3, to = 10, by = 1)
seq(from = 3, to = 10, length.out=5) #only use if don't specify by


#Factor in R: is a variable used to categorize and store the data
#             it can stores both string and integer data values as levels
#They are useful in data analysis for statistical modeling
#factor(x=character(), levels, labels = levels, oredered = is.oredered(x))

data <- c("East","West","North","South")
print(data)
print(is.factor(data)) #It's a vector, not factor

#Apply the factor function
factor_data <-factor(data)
print(factor_data)
print(is.factor(factor_data))

#Type of factors
#- Nominal categorical variables have no implied order
# (Phan loai dinh tinh) (color, gender, countries, )
#- Ordinal variable have ordering
# (Phan loai co thu bac) (1st, 2nd) (PhD, Master, Bachelor)

#Vector Operations
#Name and returns length of a vector
year <- c(1985,1999,2010,2002)
names(year) <- c("The Breakfast Club","American Beauty",
                 "Black Swan","Chicago")
year['Black Swan']
length(year)

#Sort a vector
year_sorted <- sort(year)
year_sorted

#Find smallest/largest number 
min(year)
max(year)

#Vector summary, sum, mean
cost_2014 <- c(8.6, 8.5, 8.1)
sum(cost_2014) /3
mean(cost_2014)
summary(cost_2014)

#Vector index
cost_2014[1:3]
cost_2014[-1] #Eliminate 1st element
cost_2014[-(1:2)] #eliminate 1st and 2nd element
cost_2014[3]

#Arithmetic operations on vector (+,-,*)
x <- c(1:5)
y <- seq(from = 10, to = 50, by = 10)
x
y

x+50
x+y
(x+y)/10
x-y
x*y

#Missing value
age_restriction <- c(14, 12, 10, NA, 18, NA)
age_restriction

#Lists: a collection of objects
#       in which the elements inside can differ in terms of dat type
movie <- list("Toy story",1995,c("Animation","Adventure","Comedy"))
movie

movie <- list(name = "Toy Story",
              year = 1995,
              genre = c("Animation","Adventure","Comedy"))
movie$genre
movie['genre']

#Adding items
movie["age"] <- 5
movie

#Modifying items
movie["age"] <- 20
movie

#Removing items
movie["age"] <- NULL
movie

#The End, let's summary:
#A vector is a string of numbers, characters, or logical data
#Factors (categorical variables) take on a limited number of different values that can be nominal or ordinal
#Operations on vector: sorting, finding smallest, largest
#                      performing arithmetic on its values
#Lists can store different types of data
#Vectors just store data of a single type




