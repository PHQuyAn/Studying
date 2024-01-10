#Remove all variable environment
rm(list=ls())

#Reading CSV files
#CSV files store the data in a table format 
#Every row and column value is separated by a delimiter

#Syntax
# read.csv(file, header = TRUE, sep = ",", quote = "\"",
#          dec = ".", fill = TRUE, comment.char = "", ...)

# read.csv(file, header = TRUE, sep = ";", quote = "\"",
#          dec = ",", fill = TRUE, comment.char = "", ...)

# read.delim(file, header = TRUE, sep = "\t", quote = "\"",
#            dec = ".", fill = TRUE, comment.char = "", ...)

# read.delim(file, header = TRUE, sep = "\t", quote = "\"",
#            dec = ",", fill = TRUE, comment.char = "", ...)

getwd()
covid_df = read.csv("Slides_FPT/FPT_slides_ex/covid19.csv", head = TRUE)
head(covid_df)

#Reading Excel files
#Syntax
# read_excel(path, sheet = 1, col_names = TRUE, 
#            col_types = NULL, na = "", skip =0)

install.packages("readxl")
library(readxl)
movies_df <- read_excel("Slides_FPT/FPT_slides_ex/movies-db.xlsx")
print(movies_df, n  = 20)

#Accessing data
#Access a column
movies_df['name']

#Access a row
movies_df[1,]

#Access intersted columns of a row
movies_df[1, c("name", "year")]

#See names of all columns
colnames(movies_df)

#Built-in dataset
#Using "data" function to see all built-in data
data()

#Get CO2 data
help(CO2)

CO2

#Reading Text Files in R
#Syntax
# readLines(con = stdin(), n= -1L, ok = TRUE, warn = TRUE,
#           encoding = "unknown", skipNul = FALSE)

text <- readLines("Course_Specialization.txt")
text

#Count lines of text
length(text)

#Count characters of each line
nchar(text)

#Count all character of file text
file.size("Course_Specialization.txt")

#Reading text by scan()
#Scan(): Read data into a vector or list from the console or file
#        it can produce a vector with each individual word as an element

C <- scan("CO2_datasetOverview.txt","")
C

#Writing and Saving to File
# Syntax
# write(x, file = "data", ncolumns = if(is.character(x)) 1 else 5,
#       append = FALSE, sep = " ")

m <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
m
write(m, file = "matrix_as_text.txt", ncolumns =3, sep = " ")
text_m = readLines("matrix_as_text.txt")
text_m

#Export to CSV file
write.csv(m, file = "data.csv", row.names = FALSE)
csv_m <- read.csv("data.csv",header=TRUE)
csv_m

#Export as an Excel file
install.packages("xlsx")
library(xlsx)
write.xlsx(m, file = "data.xlsx", sheetName = "Sheet1",
           col.names = TRUE, row.names = FALSE)
excel_m <- read.xlsx("data.xlsx", sheetName = "Sheet1")
excel_m

#Saving R objects in .RData file
#Syntax: save(..., list = character(),
#             file = stop("'file' must be specified"),
#             ascii = FALSE, version = NULL, envir = parent.frame(),
#             compress = isTRUE(!ascii), compression_level,
#             eval.promises = TRUE, precheck = TRUE)

var1 <- 12
var2 <- 23
var3 <- 34
save(list = c("var1", "var2", "var3"), file = "vars.RData")
load("vars.RData")

cat(var1,' ',var2)
print(paste(var1, var2))


#Summary
#We learnt:
# - Read a CSV, Excel file by `read.csv()` and `read_excel()`
# - Access its rows, columns, and individual data points
# - `readlines()` function reads a text file in to a character vector
# - `length()` and `nchar()` functions return information about a character vector
# - `scan()` function reads a text file into a character vector with each individual word as an element
# - Export file:
#   + `write` export text file
#   + `write.csv` and `write.table()` export .csv file
#   + `write.xlsx` exports a dataset as an Excell file
#   + `save()` function saves R objects in .RData files