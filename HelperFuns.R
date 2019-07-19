
percentify.decimal <- function(x){
  x * 100
}

sum.row <- function(x, rowNum){
  vals <- c(1:6)
  
  vals <- vals[vals != rowNum]
  
  rowSums(aperm(x, c(rowNum, vals)))
}

sum.rowcol <- function(x, rowNum, colNum){
  vals <- c(1:6)
  
  vals <- vals[vals != rowNum & vals != colNum]
  
  rowSums(aperm(x, c(rowNum, colNum, vals)), dims = 2)
}

pct.row <- function(x, y, rowNum){
  x <- sum.row(x, rowNum)
  y <- sum.row(y, rowNum)
  
  for(i in 1:length(x)){
    x[i] <- x[i] / y[i]
  }
  
  x
}

create.dummy.var <- function(dat, lowerBound, upperBound){
  unlist(lapply(dat, function(x){
    if(!is.na(x) & x >= lowerBound & x < upperBound){
      1
    }
    else{
      0
    }
  }))
}