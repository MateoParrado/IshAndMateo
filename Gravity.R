
# Set working directory
setwd('/Users/ismailbaram/Documents/IshAndMateo-master')

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

print(summary(model))
 
plot(x=black, y=atrited)

abline(model)