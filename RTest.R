###Class
class(3.14159);
class(25L);
class(1+1i);
class("pi");
class(FALSE)

###Vector ����
VecA <- c(0,1,2,3,4,5,6,7,8,9,10)
VecB <- c(0,1,1,3,3,5,5,7,7,9,9)
VecCh<- c("Welcome", "To", "Columbia")
3*VecA;3+VecA;VecA+VecB;VecA*VecB;

VecN <- rep(5, 10) # �ظ�һ������������
VecN <- seq(2, 12, by=2) # ����Ȳ���������
VecN <- 1:30 # ˳������������������
VecN [-c(1,4,5,9,11)] # ����
VecN [c(rep(TRUE,10),rep(FALSE,10),TRUE)] # ���߼�ֵȡԪ��
VecN1 <- VecN [VecN %% 5 == 4]
length(VecN) # ��ѯ��������
max(VecN)
#���sum����ƽ��mean�����max��Сmin����׼��sd������var���ܽ�summary

#ǿ��ת������
as.logical(VecA)
#����
names(VecCh) <- c("Word1", "Word2", "Word3")
VecCh[1]

#��̬�ֲ�����
vec <- rnorm(1000, mean = 0, sd = 1)
Alpha <- 0.05
qnorm(1 - Alpha/2) # ��̬�ֲ�����ˮƽAlpha�ķ�λ��

###Matrix ����
#�������
Mat <- matrix(2:13, ncol=4, nrow=3)
Zero <- matrix(0, 5, 4) # ���������

nrow(Mat) # ����������ncol
dim(Mat) # ά��
attributes(Mat) 
#����
Mat2 <- 2:13
dim(Mat2) <- c(3,4)

#�ϲ������ɾ��󣬾���ƴ�ӣ�����ƴ��
VecX <- rep(5,5) 
VecY <- 11:15
VecZ <- append(VecX, VecY)# ƴ������
Mat <- cbind(VecX, VecY)
Mat <- rbind(VecX, VecY)
Mat

#apply �Ծ�����ָ����������
mat <- matrix(0:29, ncol=5)
apply(mat, 2, sum) # 1:�����У�2�������У�c(1,2)�к���
apply(mat, c(1,2), as.logical)

#����
dimnames(Mat) <- list(c("a", "b"), c("c", "d", "e", "f", "g"))
Mat["b","f"]
colnames(Mat) <- c("AA", "BB", "CC", "DD", "EE")
#rownames

#�±����
mat <- matrix(1:20, ncol=4)
mat[4, ] <- rep(100, ncol(mat))
mat[,c(-1,-2)]
mat[,-(1:2)]
diag(3)
#����˷�%*%����ά��dim��ת��t���Խ���diag����λ����diag
#�ⷽ��solve������solve

###List �б�
ListX <- list(1, "a", TRUE, 1+4i)
ListX$New <- "more stuff!"
ListY <- vector("list", 5) # ��������5�Ŀ�list

###DataFrames ���ݿ�
#����
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
names(x) <- c("Cindy", "Rush")
#row.names

###��������
identical(A, B) # �ж�A��B�ǲ�����ȫ��ͬ