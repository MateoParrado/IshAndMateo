
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

#GENDER VARIABLES
woman <-create.dummy.var.equ(new_data$KEY_SEX_1997, 2)

#RACE VARIABLES
black <- create.dummy.var.equ(new_data$KEY_RACE_ETHNICITY_1997, 1)
hispanic <- create.dummy.var.equ(new_data$KEY_RACE_ETHNICITY_1997, 2)
mixed <- create.dummy.var.equ(new_data$KEY_RACE_ETHNICITY_1997, 3)
other <- create.dummy.var.equ(new_data$KEY_RACE_ETHNICITY_1997, 4)

#INCOME VARIABLES
neg <- create.dummy.var(new_data$CV_INCOME_GROSS_YR_1997, -1000000, 0)
k20 <- create.dummy.var(new_data$CV_INCOME_GROSS_YR_1997, 0, 20000)
k50 <- create.dummy.var(new_data$CV_INCOME_GROSS_YR_1997, 20000, 50000)
k100 <- create.dummy.var(new_data$CV_INCOME_GROSS_YR_1997, 50000, 100000)
k200 <- create.dummy.var(new_data$CV_INCOME_GROSS_YR_1997, 100000, 200000)
kLarge <- create.dummy.var(new_data$CV_INCOME_GROSS_YR_1997, 200000, 1000000000000)

#FOREIGN BORN VARIABLES
usCit <- create.dummy.var.equ(new_data$CV_CITIZENSHIP_1997, 1)
nonUSCit <- create.dummy.var(new_data$KEY_RACE_ETHNICITY_1997, 2, 4)

#MOM'S EDUCATION VARIABLES
MomNoHS <- create.dummy.var(new_data$CV_HGC_BIO_MOM_1997, -4, 12)
MomHS <- create.dummy.var(new_data$CV_HGC_BIO_MOM_1997, 12, 16)
MomCollege <- create.dummy.var(new_data$CV_HGC_BIO_MOM_1997, 16, 18)
MomMasters <- create.dummy.var(new_data$CV_HGC_BIO_MOM_1997, 18, 200)

#DAD'S EDUCATION VARIABLES
DadNoHS <- create.dummy.var(new_data$CV_HGC_BIO_DAD_1997, -4, 12)
DadHS <- create.dummy.var(new_data$CV_HGC_BIO_DAD_1997, 12, 16)
DadCollege <- create.dummy.var(new_data$CV_HGC_BIO_DAD_1997, 16, 18)
DadMasters <- create.dummy.var(new_data$CV_HGC_BIO_DAD_1997, 18, 200)