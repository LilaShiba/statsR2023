# TODO Turn Correlation formula into function
# vars to test for correlation
dogs   <- c(1,2,3,4,2,1,2,3)
treats <- c(1,1,2,2,1,1,2,1)

# define top_term sum
top_term <- 0
# Syntax look up
x_mu <- mean(dogs)
y_mu <- mean(treats)
# how long vector is
n <- dogs.length()

idx <- 0
# Sigma Top Term
for(i in 1:length(dogs)){
    # update sum
    top_term = top_term + (dogs[i] - x_mu) * (treats[i] - y_mu)
}

# Sigma Btm Term
# TODO: FIND ERROR in code translation of formula
btm_term = 0;
for(i in 1:length(dogs)){
    # update sum
    btm_term = btm_term + (dogs[i] - x_mu)^2 * (treats[i] - y_mu)^2
}

# final ans
top_term/sqrt(btm_term)


