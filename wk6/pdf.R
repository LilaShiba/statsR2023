library(ggplot2)

pdf <- function(data){
  data <- sort(floor(data))
  vals <- unique(data)
  # Calculate the frequency of each value in the vector
  counter <- table(data)
  # Normalize the frequency to obtain the probability distribution
  prob_dist <- round(counter / sum(counter),digits=4)
  #geom_point(size, color, shape)
  plot(x=vals,y=prob_dist,main='Scatter Plot',xlab='X Vals',ylab='P(x)',ylim = c(0.01, 0.05))
  # Customize the y-axis tick labels to display one decimal place
  # Source: GPT
axis(2, at = seq(0.01, 0.05, by = 0.01), labels = sprintf("%.1f", seq(0.01, 0.05, by = 0.01)))
}

# Load the data into a vector
normalDistro <- rnorm(100000,mean=1,sd=3)
#pdf(normalDistro)
df <- read.csv("/Users/kjames/Desktop/R/data/nyc_census_tracts.csv")
bk <- df[df$County == 'Kings', ]

# get all the cols from my df put into a vector

# loop and call PDF function for every col


bkChildPoverty <- bk$Income
pdf(bkChildPoverty)

