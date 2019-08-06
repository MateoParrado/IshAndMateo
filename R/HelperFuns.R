#multiply a decimal by 100
percentify.decimal <- function(x){
  x * 100
}

#collaps a dataframe x into a single row
sum.row <- function(x, rowNum){
  vals <- c(1:6)
  
  vals <- vals[vals != rowNum]
  
  rowSums(aperm(x, c(rowNum, vals)))
}

#collapse a dataframe x into a two dimensional array
sum.rowcol <- function(x, rowNum, colNum){
  vals <- c(1:6)
  
  vals <- vals[vals != rowNum & vals != colNum]
  
  rowSums(aperm(x, c(rowNum, colNum, vals)), dims = 2)
}

#take the percentage of a given row once collapsed, using two dataframes, one of the total and one of the specific case
pct.row <- function(x, y, rowNum){
  x <- sum.row(x, rowNum)
  y <- sum.row(y, rowNum)
  
  for(i in 1:length(x)){
    x[i] <- x[i] / y[i]
  }
  
  x
}

#create a dummy variable that is 1 if between the two ranges and zero otherwise
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

#same as above but switch zero and one
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

#create a dummy variable that is one if it equals val and zero if it doesnt
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

#same as above but switch zero and one
create.dummy.var.equ.inv <- function(dat, val){
  unlist(lapply(dat, function(x){
    if(!is.na(x) & x == val){
      0
    }
    else{
      1
    }
  }))
}

#create a dummy variable array, returns a dataframe containing dummy variables for wether someone has x many kids
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

#as input takes the grade level for two years and returns a dummy variable stating wether or not they are in school
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

#takes how much someone made and puts it into an array of dummy variables
create.income.dummies <- function(dat){
  incomes <- data.frame(
    k0 <- create.dummy.var.equ.inv(dat, 0),
    k20 <- create.dummy.var(dat, 1, 20000),
    k50 <- create.dummy.var(dat, 20001, 50000),
    k100 <- create.dummy.var(dat, 50001, 100000),
    k200 <- create.dummy.var(dat, 100001, 200000),
    kLarge <- create.dummy.var(dat, 200001, 500000000)
  )
}