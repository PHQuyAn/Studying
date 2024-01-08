#Exercises
#Vectors
#1. Create a vector from 1 to 5 and print it
ex1_v <- seq(from = 1, to = 5, by = 1)
print(ex1_v)

#2. Create a vector use `seq()` with step is 2 from 1 to 10
ex2_v <- seq(from = 1, to = 10, by = 2)
print(ex2_v)

#Factors 
#1. data <- c("East", "West", "North", "South")
#Convert it to a factor and check it if a factor
data <- c("East","West","North","South")
data_factor <- factor(data)
data_factor
is.factor(data_factor)

#Arrays
#1. Create an array 3D from 1 to 27 and print it
arr <- array(seq(from = 1, to = 27, by = 1), dim = c(3,3,3))
print(arr)
is.array(arr)
#2. Access the value at row 2, column 3, dim 1
print(arr[2,3,1])

#Matrices
#1. Create a matrix 2x3 with the value from 1 to 6 and print it
matrix_x <- matrix(c(1:6), nrow = 2, ncol = 3)
print(matrix_x)
#2. Access value at row 2, col 1
print(matrix_x[2,1])

#Data Frames
#1. Create a Data Frame with name of film and year, then print it
film_df <- data.frame(names = c("Ironman","Thor","Avengers"),
                        year = c(2008,2010,2012))
film_df
#2. Create more column name genre and fill it
genre = c("Action","Action","Action")
film_df = cbind(film_df, genre)
film_df
film_df['genre'] = NULL
film_df

#Operations on Vectors
#1. `a <- c(1,2,3)` `b <- c(4,5,6)` and give sum of them
a <- c(1,2,3)
b <- c(4,5,6)
total <- sum(a,b)
print(total)

#Operations on Data Frame
#1. Create a data frame about film with col(name, year, length)
#   Delete one row from it
nFilm_df <- data.frame(name = c("Man of Steel","Raya and the last dragon",
                                "Squid Game"),
                       year = c(2012, 2021, 2021),
                       length = c(120, 100, 54))
print(nFilm_df)
nFilm_df = nFilm_df[-3,]
print(nFilm_df)
# Add rating on the data fram
nFilm_df
nFilm_df <- cbind(nFilm_df, rating = c(8.0,9.2))
print(nFilm_df)

#Operations on Arrays and Matrices
#1. Create an matrix 3x3 from 10 to 18 an print it
#   Find value is maximum in this matrix
mtr_x <- matrix(c(10:18),nrow = 3, ncol = 3)
mtr_x
print(max(mtr_x))
