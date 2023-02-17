# Rows -> Sample Size # Cols -> Var
library(ggplot2)
df <- read.csv('nyc_census_tracts.csv')
# What is a NEW Yorker 
# subsets by county
bk <- subset(df, County == "Kings" )
ny <- subset(df, County == "New York")
bx <- subset(df, County == "Bronx")
qn <- subset(df, County == "Queens")
st <- subset(df, County == "Richmond")

# CTL Algorithm:
ctl <- function(df,colName,graphName){
  # result 
  res <- c()
  n <- nrow(df)
  # grab 1000 random samples
  for (dataPoint in seq(1:1000)) {
    #  [23,4,200]
    idxVector <- runif(3,min=1,max=n)
    # RANDOM SAMPLES
    randomSample <- 0
    for(idx in idxVector){
      randomSample <- randomSample + df[idx,colName]
    }
    randomSample <- randomSample/length(idxVector)
   res <- append(res,randomSample)
  }
  h <- hist(res, main=graphName, xlab=colName)
  h
}

# call function
colToExamine =  'Income'# 'ChildPoverty', 'SelfEmployed', 'IncomePerCap',
ctl(bk,colToExamine,'Brooklyn')
ctl(ny,colToExamine,'City')
ctl(bx,colToExamine,'Bronx')
ctl(qn,colToExamine,'Queens')
ctl(st,colToExamine,'Staten Island')


















