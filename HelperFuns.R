
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

create.dummy.var.inv <- function(dat, lowerBound, upperBound){
  unlist(lapply(dat, function(x){
    if(!is.na(x) & x >= lowerBound & x < upperBound){
      0
    }
    else{
      1
    }
  }))
}

create.dummy.var.equ <- function(dat, val){
  unlist(lapply(dat, function(x){
    if(!is.na(x) & x == val){
      1
    }
    else{
      0
    }
  }))
}

create.children.dummies <- function(dat){
  kids <- data.frame(
    one = create.dummy.var.equ(dat, 1),
    two = create.dummy.var.equ(dat, 2),
    three = create.dummy.var.equ(dat, 3),
    four = create.dummy.var.equ(dat, 4),
    five = create.dummy.var.equ(dat, 5),
    six = create.dummy.var.equ(dat, 6),
    seven = create.dummy.var.equ(dat, 7),
    eight = create.dummy.var.equ(dat, 8),
    nine = create.dummy.var.equ(dat, 9),
    ten = create.dummy.var.equ(dat, 10)
  )
}

create.are.they.still.in.school.dummies <- function(year1, year2){
  ret <- c(1:length(year1)) * 0
  
  for(i in 1:length(year1)){
    if(is.na(year1[i]) | is.na(year2[i])){
      ret[i] = 0
    }
    else{
      if(year1[i] == year2[i]){
        ret[i] = 0
      }
      else{
        ret[i] = 1
      }
    }
  }
  
  ret
}