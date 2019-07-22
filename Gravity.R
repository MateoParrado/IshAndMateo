
# Set working directory
#setwd('/Users/ismailbaram/Documents/IshAndMateo-master')
setwd('C:/Users/Mateo Parrado/Downloads/Gravity')

source("HelperFuns.R")

source("Data.R")

#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#summary(categories)

#************************************************************************************************************

new_data <- qnames(new_data)

atrited.pct <- array(data = (1: 2304) * 0, 
                     dim = c(6, 4, 4, 4, 2, 3),
                     dimnames = list(c("NEG", "<20k", "<50k", "<100k", "<200k", ">200k"),
                                     c("No HS Diploma", "HS Diploma", "College Degree", "Masters Degree"),
                                     c("No HS Diploma", "HS Diploma", "College Degree", "Masters Degree"),
                                     c("Black", "Hispanic", "Mixed", "Non Black & Non Hispanic"),
                                     c("M", "F"),
                                     c("Born US", "Not Born US", "\\_(*_*)_/")))

total.cat <- array(data = (1: 2304) * 0, 
                   dim = c(6, 4, 4, 4, 2, 3),
                   dimnames = list(c("NEG", "<20k", "<50k", "<100k", "<200k", ">200k"),
                                   c("No HS Diploma", "HS Diploma", "College Degree", "Masters Degree"),
                                   c("No HS Diploma", "HS Diploma", "College Degree", "Masters Degree"),
                                   c("Black", "Hispanic", "Mixed", "Non Black & Non Hispanic"),
                                   c("M", "F"),
                                   c("Born US", "Not Born US", "\\_(*_*)_/")))

for(i in 1:nrow(new_data)){
  #format them into our income brackets
  
  incomeBracket <- 0
  
  if(is.na(new_data$CV_INCOME_GROSS_YR_1997[i])){
  }
  else if(new_data$CV_INCOME_GROSS_YR_1997[i] < 0){
    incomeBracket = 1
  }
  else if(new_data$CV_INCOME_GROSS_YR_1997[i] < 20001){
    incomeBracket = 2
  }
  else if(new_data$CV_INCOME_GROSS_YR_1997[i] < 50001){
    incomeBracket = 3
  }
  else if(new_data$CV_INCOME_GROSS_YR_1997[i] < 100001){
    incomeBracket = 4
  }
  else if(new_data$CV_INCOME_GROSS_YR_1997[i] < 200001){
    incomeBracket = 5
  }
  else{
    incomeBracket = 6
  }
  
  #format father into bracket
  
  dad.edu.bracket <- 0
  
  if(is.na(new_data$CV_HGC_RES_DAD_1997[i])){
  }
  else if(new_data$CV_HGC_RES_DAD_1997[i] < 12){
    dad.edu.bracket <- 1
  }
  else if(new_data$CV_HGC_RES_DAD_1997[i] < 16){
    dad.edu.bracket <- 2
  }
  else if(new_data$CV_HGC_RES_DAD_1997[i] < 18){
    dad.edu.bracket <- 3
  }
  else{
    dad.edu.bracket <- 4
  }
  
  #format moteher into bracket
  
  mom.edu.bracket <- 0
  
  if(is.na(new_data$CV_HGC_RES_MOM_1997[i])){
  }
  else if(new_data$CV_HGC_RES_MOM_1997[i] < 12){
    mom.edu.bracket <- 1
  }
  else if(new_data$CV_HGC_RES_MOM_1997[i] < 16){
    mom.edu.bracket <- 2
  }
  else if(new_data$CV_HGC_RES_MOM_1997[i] < 18){
    mom.edu.bracket <- 3
  }
  else{
    mom.edu.bracket <- 4
  }
  
  if(mom.edu.bracket == 0 | dad.edu.bracket == 0 | incomeBracket == 0 | is.na(new_data$KEY_SEX_1997[i]) | is.na(new_data$CV_CITIZENSHIP_1997[i]) | is.na(new_data$KEY_RACE_ETHNICITY_1997[i])){
  }
  else{
    if(is.na(new_data$SYMBOL_KEY_AGE_2015[i])){
    atrited.pct[incomeBracket, dad.edu.bracket, mom.edu.bracket, new_data$KEY_RACE_ETHNICITY_1997[i], new_data$KEY_SEX_1997[i], new_data$CV_CITIZENSHIP_1997[i]] <- atrited.pct[incomeBracket, dad.edu.bracket, mom.edu.bracket, new_data$KEY_RACE_ETHNICITY_1997[i], new_data$KEY_SEX_1997[i], new_data$CV_CITIZENSHIP_1997[i]] + 1
    }
      total.cat[incomeBracket, dad.edu.bracket, mom.edu.bracket, new_data$KEY_RACE_ETHNICITY_1997[i], new_data$KEY_SEX_1997[i], new_data$CV_CITIZENSHIP_1997[i]] <- total.cat[incomeBracket, dad.edu.bracket, mom.edu.bracket, new_data$KEY_RACE_ETHNICITY_1997[i], new_data$KEY_SEX_1997[i], new_data$CV_CITIZENSHIP_1997[i]] + 1
      
  }
}

#DEPENDENT VAR
atrited <- create.dummy.var.inv(new_data$SYMBOL_KEY_AGE_2015, -100, 300)

#GENDER VARIABLES
woman <-create.dummy.var.equ(new_data$KEY_SEX_1997, 2)

#RACE VARIABLES
black <- create.dummy.var.equ(new_data$KEY_RACE_ETHNICITY_1997, 1)
hispanic <- create.dummy.var.equ(new_data$KEY_RACE_ETHNICITY_1997, 2)
mixed <- create.dummy.var.equ(new_data$KEY_RACE_ETHNICITY_1997, 3)
other <- create.dummy.var.equ(new_data$KEY_RACE_ETHNICITY_1997, 4)

#INCOME VARIABLES
parental.income <- create.income.dummies(new_data$CV_INCOME_GROSS_YR_1997)

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

#KIDS VARIABLES
Kids.Dummies.1997 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_1997)
Kids.Dummies.1998 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_1998)
Kids.Dummies.1999 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_1999)
Kids.Dummies.2000 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2000)
Kids.Dummies.2001 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2001)
Kids.Dummies.2002 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2002)
Kids.Dummies.2003 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2003)
Kids.Dummies.2004 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2004)
Kids.Dummies.2005 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2005)
Kids.Dummies.2006 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2006)
Kids.Dummies.2007 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2007)
Kids.Dummies.2008 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2008)
Kids.Dummies.2009 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2009)
Kids.Dummies.2010 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2010)
Kids.Dummies.2011 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2011)
Kids.Dummies.2013 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2013)
Kids.Dummies.2015 <- create.children.dummies(new_data$CV_BIO_CHILD_HH_2015)

#ARE THEY STILL IN SCHOOL DUMMIES
are.they.still.in.school1998 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_9899_1998, new_data$CV_HGC_9900_1999)
are.they.still.in.school1999 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_9900_1999, new_data$CV_HGC_0001_2000)
are.they.still.in.school2000 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0001_2000, new_data$CV_HGC_0102_2001)
are.they.still.in.school2001 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0102_2001, new_data$CV_HGC_0203_2002)
are.they.still.in.school2002 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0203_2002, new_data$CV_HGC_0304_2003)
are.they.still.in.school2003 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0304_2003, new_data$CV_HGC_0405_2004)
are.they.still.in.school2004 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0405_2004, new_data$CV_HGC_0506_2005)
are.they.still.in.school2005 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0506_2005, new_data$CV_HGC_0607_2006)
are.they.still.in.school2006 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0607_2006, new_data$CV_HGC_0708_2007)
are.they.still.in.school2007 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0708_2007, new_data$CV_HGC_0809_2008)
are.they.still.in.school2008 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0809_2008, new_data$CV_HGC_0910_2009)
are.they.still.in.school2009 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_0910_2009, new_data$CV_HGC_1011_2010)
are.they.still.in.school2010 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_1011_2010, new_data$CV_HGC_1112_2011)
are.they.still.in.school2011 <- create.are.they.still.in.school.dummies(new_data$CV_HGC_1112_2011, new_data$CV_HGC_1314_2013)

#INCOME DUMMY VARIBLES
income.dummy.1997 <- create.income.dummies(new_data$`YINC-1700_1997`)
income.dummy.1998 <- create.income.dummies(new_data$`YINC-1700_1998`)
income.dummy.1999 <- create.income.dummies(new_data$`YINC-1700_1999`)
income.dummy.2000 <- create.income.dummies(new_data$`YINC-1700_2000`)
income.dummy.2001 <- create.income.dummies(new_data$`YINC-1700_2000`)
income.dummy.2002 <- create.income.dummies(new_data$`YINC-1700_2001`)
income.dummy.2003 <- create.income.dummies(new_data$`YINC-1700_2002`)
income.dummy.2004 <- create.income.dummies(new_data$`YINC-1700_2004`)
income.dummy.2005 <- create.income.dummies(new_data$`YINC-1700_2005`)
income.dummy.2006 <- create.income.dummies(new_data$`YINC-1700_2006`)
income.dummy.2007 <- create.income.dummies(new_data$`YINC-1700_2007`)
income.dummy.2008 <- create.income.dummies(new_data$`YINC-1700_2008`)
income.dummy.2009 <- create.income.dummies(new_data$`YINC-1700_2009`)
income.dummy.2010 <- create.income.dummies(new_data$`YINC-1700_2010`)
income.dummy.2011 <- create.income.dummies(new_data$`YINC-1700_2011`)
income.dummy.2013 <- create.income.dummies(new_data$`YINC-1700_2013`)
income.dummy.2015 <- create.income.dummies(new_data$`YINC-1700_2015`)

#Marital Status
marriage.dummy.1997 <- create.dummy.var.equ(new_data$MAR_STATUS_1997.01_XRND, 2)
marriage.dummy.1998 <- create.dummy.var.equ(new_data$MAR_STATUS_1998.01_XRND, 2)
marriage.dummy.1999 <- create.dummy.var.equ(new_data$MAR_STATUS_1999.01_XRND, 2)
marriage.dummy.2000 <- create.dummy.var.equ(new_data$MAR_STATUS_2000.01_XRND, 2)
marriage.dummy.2001 <- create.dummy.var.equ(new_data$MAR_STATUS_2001.01_XRND, 2)
marriage.dummy.2002 <- create.dummy.var.equ(new_data$MAR_STATUS_2002.01_XRND, 2)
marriage.dummy.2003 <- create.dummy.var.equ(new_data$MAR_STATUS_2003.01_XRND, 2)
marriage.dummy.2004 <- create.dummy.var.equ(new_data$MAR_STATUS_2004.01_XRND, 2)
marriage.dummy.2005 <- create.dummy.var.equ(new_data$MAR_STATUS_2005.01_XRND, 2)
marriage.dummy.2006 <- create.dummy.var.equ(new_data$MAR_STATUS_2006.01_XRND, 2)
marriage.dummy.2007 <- create.dummy.var.equ(new_data$MAR_STATUS_2007.01_XRND, 2)
marriage.dummy.2008 <- create.dummy.var.equ(new_data$MAR_STATUS_2008.01_XRND, 2)
marriage.dummy.2009 <- create.dummy.var.equ(new_data$MAR_STATUS_2009.01_XRND, 2)
marriage.dummy.2010 <- create.dummy.var.equ(new_data$MAR_STATUS_2010.01_XRND, 2)
marriage.dummy.2011 <- create.dummy.var.equ(new_data$MAR_STATUS_2011.01_XRND, 2)
marriage.dummy.2012 <- create.dummy.var.equ(new_data$MAR_STATUS_2012.01_XRND, 2)
marriage.dummy.2013 <- create.dummy.var.equ(new_data$MAR_STATUS_2013.01_XRND, 2)
marriage.dummy.2014 <- create.dummy.var.equ(new_data$MAR_STATUS_2014.01_XRND, 2)
marriage.dummy.2015 <- create.dummy.var.equ(new_data$MAR_STATUS_2015.01_XRND, 2)
#gender is significant, 5% less women than men

#black is significant, 7% less black than other
#hipanic not significant, .3 p value and -1 t value, 1% diff
#mixed is not significant, .518 P Value, 2% diff
#other is significant, 6.4% increase

#neg is not significant, 0 of them dropped, but only three people
#k20 has a significant decrease of 4 %
#k50 has a decrease, but it is insignificant (p = .113)
#k100 has a significant increase of 2.4 % (p = .0219)
#k200 has an insignificant increase
#kLarge has a 7% increase, but because there are few people in it, it is almost insignificant (p = .498)

#us citizens are 5% mroe likely to not atrite

#momdumb, no correlation
#momavg, no correlation
#momaight, no correlation
#momsmart, no correlation

#daddumb, 2.7% less likely to atrite.
#dadavg, no correlation.
#dadaight, no correlation.
#dadsmart, no correlation.

#The correlation between gender and attrition is positive across the board
#and is unaffected by race which remains negative. Mutually exclusive.

#Hispanic US citizens have a strong correlation with attrition while hispanic people born outside of the US have no correlation with attrition.

model <- lm(atrited ~ woman)

#
 
plot(x=black, y=atrited)

abline(model)