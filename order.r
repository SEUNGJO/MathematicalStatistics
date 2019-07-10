#Generate 5000 pairs random numbers from exp(1/100)
#First 10000 and then collapse the vector into 5000:
x <- rexp(10000,1/100)
 
#The 5000x2 matrix:
y <- matrix(x, 5000,2)
 
#Consider the two components connected in series:
#Find the minimum of the two numbers:
yy <- apply(y, 1,min)
 
hist(yy)

#Find the empirical probability that the system fails within 80 hours:
sum(yy<=80)/5000

#Find the theoretical probability:
#We have seen that the minimum follows the exponential distribution with parameter lambda=2/100=1/50.  Therefore the probability that the system fails within 80 hours is:

1-exp(-(1/50)*80)


#===========================
#Suppose now the two components are connected in parallel.
#Find the maximum of the two numbers:
yy <- apply(y, 1,max)
 
hist(yy)

#Find the empirical probability that the system fails within 80 hours:
sum(yy<=80)/5000

