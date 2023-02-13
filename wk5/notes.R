# Rows -> Sample Size # Cols -> Var
library(ggplot2)
df <- read.csv('nyc_census_tracts.csv')

# subsets by county
bk <- subset(df, County == "Kings" )
ny <- subset(df, County == "New York")
bx <- subset(df, County == "Bronx")
qn <- subset(df, County == "Queens")
st <- subset(df, County == "Richmond")

# CTL Algorithm:
ctl <- function(df,colName,graphName){
  res <- c()
  n <- nrow(city)
  # grab 1000 random samples
  for (dataPoint in seq(1:1000)) {
    idx <- runif(3,min=1,max=n)
    randomSample <- (df[idx[1],colName] + df[idx[2],colName] + df[idx[3],colName])/3
    res <- append(res,randomSample)
  }
  hist(res, main=graphName, xlab=colName)
}

# call function
colToExamine =  'MeanCommute'# 'ChildPoverty', 'SelfEmployed', 'IncomePerCap',
ctl(bk,colToExamine,'Brooklyn')
ctl(ny,colToExamine,'City')
ctl(bx,colToExamine,'Bronx')
ctl(qn,colToExamine,'Queens')
ctl(st,colToExamine,'Staten Island')


















