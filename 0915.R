#R 9/15/2017

vec <- c(1, 5, 7, 8)
vec [2]
vec [c (2, 3)]
vec [c (TRUE, TRUE, FALSE, FALSE)]

mat <- matrix (1: 20, ncol = 4)
mat
mat [5, 2]
mat [ , 3]
mat [2, ]
mat [2:4, ]
mat [3, 2] <- mat [2, 3] # 8 -> 12
colnames(mat) <- c("One", "Two", "Three", "Four")
rownames(mat) <- c("I", "II", "III", "IV", "V")
mat [c("II", "V"), c("One", "Four")]
mat [ , c(-1, -2)] # mat[,c(-1,2)] is not valid

myList <-list (stuff = 3, mat= matrix(1: 4, nrow= 2),
              morestuff= c("china", "japan"), list(5, "bear"))
myList

install.packages("pixmap")
library("pixmap")
getwd()
#setwd() Where did you save the image data?
list.files() # Is casablanca.pgm there?
casablanca_pic <- read.pnm("casablanca.pgm")
casablanca_pic
plot(casablanca_pic)
casablanca_pic@grey[300, 100]
points(100, 60, pch = "*", col = "red")
casablanca_pic@grey[15:70, 220:265] <- 1
plot(casablanca_pic)

z <- matrix(rep(1:9), nrow = 3)
colnames(z) <- c("First", "Second", "Third")
z
z[2:3, "Third"]
c(z[,-(2:3)], "abc")
z[,c(-1,-3)] # ???????????????????????
rbind(z[1,], 1:3)

length (c(-1, 0, NA, 5))
length (c(-1, 0, NULL, 5))
t <- c(-1, 0, NA, 5)
mean(t)
mean(t, na.rm =TRUE)
s <- c(-1, 0, NULL, 5)
mean(s)
is.na(c(3, -7.5, NA, pi))
c(3/0, 0/0)
is.na(c(3/0, 0/0))

x <- NULL
x[1] <- "Red"
x[2] <- "Blue"
x[5] <- "Green"
x
myList <- list(a=7, b=5)
myList $ a <- NULL
myList

data <- rep(c("Control","Treatment"), c(3,4))
data
group <- factor(data)
group
str(group)
attributes(group)
table(group)
ages <- c(20, 30, 40, 35, 35, 35, 35)
sex <- c("M", "M", "F", "M", "F", "F", "F")
split (ages, list(group, sex))
split (ages, group)

#DataFrames
Name <- c("John", "Jill", "Jacob", "Jenny")
Year <- c(1,1,2,4)
Grade <- c("B", "A+", "B-", "A")
student_data <- data.frame(Name, Year, Grade,
                           stringsAsFactors = FALSE)
student_data
dim(student_data)
str(student_data)
summary(student_data)

HC <- scan("HonorCode.txt", what="")
head(HC,20)
HC <- factor(HC, levels = unique(HC))

#Function
square_it <- function(x)
{
  out <- x*x
  return (out)
}
square_it(66)
square_it(1i)
findwords <- function(text_vec){
  words <- split(1:length(text_vec), text_vec)
  return(words)
}
findwords(HC)[1:5]
HC[c(1, 48, 142, 204, 232, 310, 331)] # hopefully 'students'
HC[c(2, 206)] # hopefully 'should'


w <- c(-3, 20, 9, 2)
w*w
w^2
w*w <= 10

z <- matrix(c(1:3, TRUE, FALSE, TRUE, 9, 16, 25),
            nrow = 3)
colnames(z) <- c("First", "Second", "Third")
z
z[z[, "Second"], ]
z[, 1] != 1
z[(z[, 1] != 1), 3]
