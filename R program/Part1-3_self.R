#Clear the environment
rm(list=ls())

#Basic data types
#Integer
is.integer(1L) 
class(1L)

#Numeric 
class(1)
is.numeric(1)
is.numeric(1L)
is.integer(1)

#Character 
class("I love FPT")
is.character("I love FPT")
is.character(12)

#Logical
class(TRUE)
is.logical(FALSE)
is.logical(NOTGIVEN)

#Complex
class(2i)
is.complex(2i)
a <- 1+1i
is.complex(a)

#raw: a hexa variable (create by 0x to indicate it's hexa)
aRaw <- as.raw(0x1c)
class(aRaw)

#Data type conversion
as.numeric(2L)       #integer to numeric
as.character(3)      #numeric to character
as.logical(1)        #numeric to logical
as.numeric("3")      #character to numeric
as.logical("FALSE")  #character to logical
as.integer(2.2)      #numeric to integer
as.numeric("A")      #character to numeric "NAs introduced by coercion"
as.numeric(FALSE)    #logical to numeric

#Basic math with R
#Total time
total <- 140 + 121
print(total)

#subtraction 
print(200-50)
#mutiplication
print(4*2)
#division
print(100/2)
#exponentiation
print(10^2)

#Order of operations
total <- 139+121
total
total_hr <- total/60
total_hr

#Concatenating data 
x1 <- c(1,5,3,8,8,6)
x1

#c(): vector that it combines multiple values 
x <- 1:5
y <- 6:10
z <- 11:20
res <- c(x,y,z)
print(res)

#cbind(): merges two data frames together by column
df1 <- data.frame(name = c('A','B','C'),
                  age  = c(22,25,28))
df1

df2 <- data.frame(gender= c('M','F','M'))
df2

fn_df <- cbind(df1, df2)
fn_df

#rbind(): merges data frames by row
x <- 1:5
y <- 6:10
z <- 11:15
res <- rbind(x,y,z)
print(res)







