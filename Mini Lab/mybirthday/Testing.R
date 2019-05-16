n = 32
logpAc = lfactorial(365)-lfactorial(365-(1:n))-(1:n)*log(365)
pAc=exp(logpAc)
pA = 1-pAc

names(pA)=1:n

pie(pA, col=rainbow(n))

mat = matrix(c(round(pA,2)), nr=n, nc=1, byrow=FALSE,
             dimnames=list("Number in room"=1:n, c("pA")))
as.table(mat)
