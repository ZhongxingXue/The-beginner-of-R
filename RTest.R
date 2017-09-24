###Class
class(3.14159);
class(25L);
class(1+1i);
class("pi");
class(FALSE)

###Vector 向量
VecA <- c(0,1,2,3,4,5,6,7,8,9,10)
VecB <- c(0,1,1,3,3,5,5,7,7,9,9)
VecCh<- c("Welcome", "To", "Columbia")
3*VecA;3+VecA;VecA+VecB;VecA*VecB;

VecN <- rep(5, 10) # 重复一个数构造向量
VecN <- seq(2, 12, by=2) # 构造等差数列向量
VecN <- 1:30 # 顺次排列整数构造向量
VecN [-c(1,4,5,9,11)] # 补集
VecN [c(rep(TRUE,10),rep(FALSE,10),TRUE)] # 用逻辑值取元素
VecN1 <- VecN [VecN %% 5 == 4]
length(VecN) # 查询向量长度

#强制转换类型
as.logical(VecA)
#命名
names(VecCh) <- c("Word1", "Word2", "Word3")
VecCh[1]

###Matrix 矩阵
#构造矩阵
Mat <- matrix(2:13, ncol=4, nrow=3)
Zero <- matrix(0, 5, 4) # 构造零矩阵

nrow(Mat) # 行数，列数ncol
dim(Mat) # 维度
attributes(Mat) 
#或者
Mat2 <- 2:13
dim(Mat2) <- c(3,4)

#合并向量成矩阵
VecX <- rep(5,5) 
VecY <- 11:15
Mat <- cbind(VecX, VecY)
Mat <- rbind(VecX, VecY)
Mat

#命名
dimnames(Mat) <- list(c("a", "b"), c("c", "d", "e", "f", "g"))
Mat["b","f"]
colnames(Mat) <- c("AA", "BB", "CC", "DD", "EE")
#rownames

#下标计算
mat <- matrix(1:20, ncol=4)
mat[4, ] <- rep(100, ncol(mat))
mat[,c(-1,-2)]
mat[,-(1:2)]

###List 列表
ListX <- list(1, "a", TRUE, 1+4i)
ListX$New <- "more stuff!"

###DataFrames 数据框
#命名
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
names(x) <- c("Cindy", "Rush")
#row.names
x
