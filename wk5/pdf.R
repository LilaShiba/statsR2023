library(ggplot2)

pdf <- function(data){
  data <- sort(floor(data))
  vals <- unique(data)
  # Calculate the frequency of each value in the vector
  counter <- table(data)
  # Normalize the frequency to obtain the probability distribution
  prob_dist <- round(counter / sum(counter),digits=4)
  #geom_point(size, color, shape)
  plot(x=vals,y=prob_dist,main='Scatter Plot',xlab='X Vals',ylab='P(x)')
}

# Load the data into a vector
data <- c(1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5)
data2 <- rnorm(100000,mean=1,sd=3)
pdf(data2)
