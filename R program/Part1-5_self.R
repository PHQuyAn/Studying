#Array
# a structure that contains data of the same type such as strings, characters or integers
# can be multi-dimensional so can be contained in rows and columns

movie_vector <- c("Akira","Toy Story","Room","The Wave","Whiplash",
                  "Star Wars","The Ring","The Artist","Jumanji")
movie_array <- array(movie_vector, dim = c(4,3))
movie_array
movie_array[1,]
movie_array[,2]
movie_array[1,2]

#Matrices
# is similar in structure to an array but it has to dimensions
#matrix(data, nrow, ncol, byrow, dimnames)
#as.matrix(x,..)
#as.matrix(x,rownames.force = NA, ...)
movie_vector
movie_matrix <- matrix(movie_vector, nrow = 3, ncol = 3)
movie_matrix

movie_matrix[2:3,1:2]
movie_array[2:3,1:2]

#Data frames
# a type of structure that contains correlated information
movies <- data.frame(name = c("Toy Story","Akira","The Breakfast Club",
                              "The Artist","Modern Times","Fight Club",
                              "City of God","The Untouchables"),
                     year = c(1995,1998,1985,2011,1936,1999,2002,1987))
movies
movies[1]
movies[2]
movies
movies[1,2]

#Data frame structure
str(movies)

#Head and tail
head(movies)
tail(movies)

#Inserting a new column
movies['length'] <- c(81, 125, 97, 100, 87, 139, 130, 119)
movies

#Inserting a new row
movies <- rbind(movies, c(name = "Dr. Strangelove",
                          year = 1964, length =94))
movies

#deleting rows
movies <- movies[-9,]
movies 
movies[-1,]
movies[-8,]

#deteling columns
movies["length"] <- NULL
movies

#Summary
#This is the end, let's summary:
# - An array is a single or multidimensional structure
#   Array contain data of the same type (strings, character, or integers)
# - A matrix is like an array but must be two-dimensional and can be arraged by columns or rows
# - The main difference between data frame and other data structure
#   is that each variable has a vector of elements of the same type
