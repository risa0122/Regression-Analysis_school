#2-2
A = matrix(c(1,-1,2,-1,3,3,2,3,4),ncol=3)
B = matrix(c(3,-2,4,-2,1,0,4,0,2),ncol=3)
x = c(1,2,3)
y = c(3,5,4)

#a
A+B

#b
t(A)

#c
t(x)%*%A%*%y

#d
t(x)*x

#e
t(x)%*%A%*%x

#f
t(x)*y

#g
t(A)%*%A

#h
A%*%B

#i 
t(y)%*%B

#j
x*t(x)

#k
x+y

#l
x-y

#m
t(x-y)

#n
x*t(y)

#o
A-B

#p
t(A)+t(B)

#q
t(A+B)

#r
3*x

#s
(t(x)*y)^2

#t
B%*%A

#u
#install.packages("Matrix")
library(Matrix)
rankMatrix(A)

#v
#install.packages("MASS")
library(MASS)
ginv(A)

#w
install.packages("psych")
library(psych)
tr(A)
tr(B)

#x
isTRUE(tr(A+B) == tr(A)+tr(B))

#y
isTRUE(tr(A%*%B) == tr(B%*%A))

#z
t(A%*%B) == t(B)%*%t(A)


#2-4
X = matrix(c(1,0,0,0,9,0,0,0,16),nc=3)

#a
library(Matrix)
rankMatrix(X)

#b
e = eigen(X)   
e  #고유값, 고유벡터
e$vectors/sqrt(3)   #단위고유벡터


#c
library(MASS)
ginv(X)

#d
#install.packages("OpenMx")
library(OpenMx)
P = e$vectors
L = vec2diag(e$values)
P%*%L%*%t(P)

#e
xx = ginv(X)
lambdaxx = eigen(xx)   
lambdaxx  #고유값, 고유벡터

#f
x = c(-1,-2,-3)    #임의의 벡터 x선언
t(x)%*%X%*%x>0  #결과가 TRUE이므로 양정치행렬이다.

#g
cov2cor(X)

#h
#e$values = 16,9,1임
det(X) == 16*9*1  #일치한다

#i
library(psych)
tr(X) == 16+9+1   #일치한다


#2.5
AA = matrix(c(5,-4,3,-4,8,6,3,6,9),nc=3)

#a
e2 = eigen(AA)
e2

#b
library(psych)
# > e2$values
# [1] 14.554216  8.844169 -1.398385
tr(AA) == (14.554216 + 8.844169 + -1.398385)

#c
# > e2$values
# [1] 14.554216  8.844169 -1.398385
det(AA) == as.integer(14.554216 * 8.844169 *(-1.398385))

#d
library(MASS)
ginv(AA)

