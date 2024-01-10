#Review 

#Remove all variable environment
rm(list=ls())

#Review Vectors and Factors
#1. Create a vector with numbers from 2 to 10 and print it
vc_x <- c(2:10)
print(vc_x)

#2. Use `seq()` create with step is 3 and from 1 to 10
vc_sq <- seq(from = 3, to = 10, by = 1)
print(vc_sq)

#3. `data <- c("North","South","East","West")`
#   Change it to a factor and check if it is a factor
data <- c("North","South","East","West")
data_fc <- factor(data)
data_fc
is.factor(data_fc)

#4. Create an array 3D with value from 1 to 27
arr <- array(c(1:27), dim = c(3,3,3))
print(arr)

#5. Access value at row 3, col 2, and dim 1
arr[3,2,1]

#6. Create a matrix 2x4 with value from 1 to 8
mtr <- matrix(c(1:8), nrow = 2, ncol = 4)
mtr

#7. Access row 1, col 3 of matrix
mtr[1,3]

#8. Create a data frame with information about book [name, year]
book_df <- data.frame(name = c('Harry Potter','Hacker IELTS','The hobbit'),
                      year = c(1997, 2020, 1937))
print(book_df)

#9. Access structure of data frame
str(book_df)

#10. Add "category" into data frame c("Fiction","Non-fiction",Sci-Fi")
cate_df <- data.frame(category = c("Fiction","Non-fiction","Sci-Fi"))
book_df <- cbind (book_df,cate_df)
book_df

#11. Remove "category" 
book_df
book_df['category'] <- NULL
book_df

#12. `x <- c(3, 6, 9)` `y<- seq(from = 5, to = 15, 5)`. Find their subtraction
x <- c(3,6,9)
y <- seq(from = 5, to = 15, 5)
print(x-y)

#13. Create a matrix 2x3 from 11 to 16 and find its minimum value
mtr = matrix(c(11:16), nrow = 2, ncol = 3)
mtr
min(mtr)

#14. Create a data frame about book with `name, year, category`
#    Add `rating` column
book_df
rating <- data.frame(rating = c(9.0, 8.5, 9.2))
book_df <- cbind(book_df, rating)
book_df

