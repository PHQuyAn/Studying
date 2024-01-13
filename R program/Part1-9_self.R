#Remove environment variable
rm(list=ls())

#Regular Expressions
# Problem
# Goal: Perform data analysis on each of the domains in the email addresses
# Problem: Some of the email addresses have regional differences, so the url's may differ
# Ex: John Doe doej@example.com


#How to express the structure of an email address in general such as:
#                   test@testing.com
#       -> Using regular expression string

# @ Matches the `@` character
# . Matches with any character
# + Matches the preceding pattern element one or more time
# \\. Matches with the '.' character

# R provides several functions that make use of regular expressions
#   grep(pattern, x, ignore.case = FALSE,
#        perl = FALSE, value = FALSE, fixed = FALSE
#        useBytes = FALSE, invert = FALSE)

#   gsub(pattern, replacement, x, ignore.case = FALSE,
#        perl = FALSE, fixed = FALSE, useBytes = FALSE)

#   gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE,
#            fixed = FALSE, useBytes = FALSE)


#Example
grep("@.*", c("test@testing.com", "not an email", "test2@testing.com"))
grep("@.*", c("test@testing.com", "not an email", "test2@testing.com"), value = TRUE)

gsub("@.*", "@newdomain.com",c("Test@testing.com","not an email","test2@testing.com"))

matches <- regexpr("@.*", c("test@testing.com","not an email","test2@testing.com"))
regmatches(c("test@testing.com","not an email","test2@testing.com"),matches)
print(matches)

#Solving the problem
email_df <- data.frame(name = c("John Doe", "Jane Doe",
                                "Mark Mann", "Joe Star",
                                "Susan Quinn","Alice Erin"),
                       email= c("doej@example.com",
                                "jadoe@example.com",
                                "mmann@example.com",
                                "joes@example.com",
                                "qsus@example.com","erina@example.com"))
email_df

matches <- regexpr("@.*\\.", email_df[,"email"])
email_df[,'Domain'] = regmatches(email_df[,'email'],matches)
email_df

#Regular Expression applications
# Data extraction, Cleaning, Data analysis, Data validation
# Text mining, Parsing

#Date Format in R
my_date <- "2003-07-19"
class(my_date)
my_date <- as.Date(my_date)
class(my_date)

#Oscar-winning Actors dataset
bestActors <- data.frame(name = c("Leonardo DiCaprio",
                                    "Eddie Redmane",
                                    "Mattheu McConaughey",
                                    "Daniel Day-Lewis",
                                    "Jean Dujardin"),
                           Birth = c(153360000, 379123200,
                                     -5011200, -400032000,
                                    77760000))
bestActors

str(bestActors)

#Converting UNIX time to Date
# POSIX is just another date format standard
# that R utilizes for its Date class structure
bestActors$Birth <- as.Date(bestActors$Birth + as.POSIXct("1970-01-01", 
                                                          origin = "1970-01-01", 
                                                          tz = "UTC"), tz = "UTC")
bestActors

#Oscar-wining Actresses
bestActresses <- data.frame(name = c("Brie Larson","Julianne Moore",
                                     "Cate Blanchett","Jennifer Lawrence",
                                     "Meryl Streep"),
                            birth= c("1989/10/01","1960/12/03",
                                     "1969/05/14","1990/08/15",
                                     "1949/06/22"))
bestActresses
str(bestActresses)
bestActresses$birth <- as.Date(bestActresses$birth, "%Y/%m/%d")
bestActresses

#Date string formatting
as.Date("27/06/94", "%d/%m/%y")

# %a = Three character abbreviated weekday name
# %A = Full weekday name
# %b = Three character abbreviated month name
# %d = Day of the month
# %m = Month of the year
# %y = Two digit year representation
# %Y = Four digit year representation

#Useful Date functions
as.Date("1994/06/27") - as.Date("1959/01/01")
as.Date("1994/06/27") > as.Date("1959/01/01")
as.Date("1994/06/27") - 14
weekdays(Sys.Date())
months(Sys.Date())
quarters(Sys.Date())
julian(Sys.Date())
seq(Sys.Date(), by = "month", length.out = 4)

#Error catching
tryCatch(10+10)
tryCatch("a"+10)
tryCatch(10+"a", error = function(e) return("10a"))

tryCatch(
   for(i in 1:3) {
       print(i+"a")
   }
   , error = function(e) print("Found error.")
)

tryCatch(as.integer("A"),
         warning = function(e) print("Warning."))

#Let's summary:
# - Regular expressions are used to match patterns in strings and text
# - Convert dates from one format to another using the as.POSIX.ct() and as.Date() functions
# - Perform operations on Data objects using functions, like Sys.Date(),
#                       Sys.Time(), date(), as.Date()
#Canintercept errors in R code and provide custom error warning handling using tryCatch() statements