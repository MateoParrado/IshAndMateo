
# Set working directory
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


print(sum.rowcol(atrited.pct, 1, 2))
#print(sum.row(atrited.pct, 5))
#print(pct.row(atrited.pct, total.cat, 5))

#scatter.smooth(x=total.cat[5], y=sum.row(total.cat, 5), main = "I hope this works") # scatterplot

tempVar <- new_data$KEY_SEX_1997
tempVar <- tempVar[is.na(tempVar)]

# simple bar plot

#barplot(sum.row(total.cat, 3), main = "please", xlab = "people atrited") 

#pie(sum.row(total.cat, 1), main = "PIE")

#we need to format all the gender and atrited data into a single little thing

gender.atrited <- data.frame(gender= lapply(new_data$KEY_SEX_1997, function(x) x - 1), atrited = lapply(new_data$KEY_AGE_1997, function(x){
  if(is.na(x)){
    0
  }
  1
}))

#DEPENDENT VAR
atrited <- unlist(lapply(new_data$SYMBOL_KEY_AGE_2015, function(x){
  if(is.na(x)){
    1
  }else{
    0
  }
}))

#GENDER VAR
gender <- unlist(lapply(new_data$KEY_SEX_1997, function(x) x - 1))
men <- unlist(lapply(new_data$KEY_SEX_1997, function(x){
  if(x == 1){
    1
  }
  else{
    0
  }
}))

#RACE VAR
black <- unlist(lapply(new_data$KEY_RACE_ETHNICITY_1997, function(x){
  if(x == 1){
    1
  }
  else{
    0
  }
}))
hispanic <- unlist(lapply(new_data$KEY_RACE_ETHNICITY_1997, function(x){
  if(x == 2){
    1
  }
  else{
    0
  }
}))
mixed <- unlist(lapply(new_data$KEY_RACE_ETHNICITY_1997, function(x){
  if(x == 3){
    1
  }
  else{
    0
  }
}))
other <- unlist(lapply(new_data$KEY_RACE_ETHNICITY_1997, function(x){
  if(x == 4){
    1
  }
  else{
    0
  }
}))

#INCOME VAR
neg <- unlist(lapply(new_data$CV_INCOME_GROSS_YR_1997, function(x){
  if(!is.na(x) & x < 0){
    1
  }
  else{
    0
  }
}))

k20 <- unlist(lapply(new_data$CV_INCOME_GROSS_YR_1997, function(x){
  if(!is.na(x) & x >= 0 & x <= 20000){
    1
  }
  else{
    0
  }
}))

k50 <- unlist(lapply(new_data$CV_INCOME_GROSS_YR_1997, function(x){
  if(!is.na(x) & x >= 20000 & x <= 50000){
    1
  }
  else{
    0
  }
}))

k100 <- unlist(lapply(new_data$CV_INCOME_GROSS_YR_1997, function(x){
  if(!is.na(x) & x >= 50000 & x <= 100000){
    1
  }
  else{
    0
  }
}))

k200 <- unlist(lapply(new_data$CV_INCOME_GROSS_YR_1997, function(x){
  if(!is.na(x) & x >= 100000 & x <= 200000){
    1
  }
  else{
    0
  }
}))

kLarge<- unlist(lapply(new_data$CV_INCOME_GROSS_YR_1997, function(x){
  if(!is.na(x) & x >= 200000){
    1
  }
  else{
    0
  }
}))

#FOREIGN BORN VAR
usCit <- unlist(lapply(new_data$CV_CITIZENSHIP_1997, function(x){
  if(!is.na(x) & x == 1){
    1
  }
  else{
    0
  }
}))

#MOM EDU VAR
#Is Mom a dumbass?
Momdumb <- unlist(lapply(new_data$CV_HGC_BIO_MOM_1997, function(x){
  if(!is.na(x) & x < 12){
    1
  }
  else{
    0
  }
}))
Momavg <- unlist(lapply(new_data$CV_HGC_BIO_MOM_1997, function(x){
  if(!is.na(x) & x >=12 & x < 16){
    1
  }
  else{
    0
  }
}))
Momaight <- unlist(lapply(new_data$CV_HGC_BIO_MOM_1997, function(x){
  if(!is.na(x) & x >=16 & x < 18){
    1
  }
  else{
    0
  }
}))
Momsmart <- unlist(lapply(new_data$CV_HGC_BIO_MOM_1997, function(x){
  if(!is.na(x) & x >=18){
    1
  }
  else{
    0
  }
}))


Daddumb <- unlist(lapply(new_data$CV_HGC_BIO_DAD_1997, function(x){
  if(!is.na(x) & x < 12){
    1
  }
  else{
    0
  }
}))
Dadavg <- unlist(lapply(new_data$CV_HGC_BIO_DAD_1997, function(x){
  if(!is.na(x) & x >=12 & x < 16){
    1
  }
  else{
    0
  }
}))
Dadaight <- unlist(lapply(new_data$CV_HGC_BIO_DAD_1997, function(x){
  if(!is.na(x) & x >=16 & x < 18){
    1
  }
  else{
    0
  }
}))
Dadsmart <- create.dummy.var(new_data, 18, 200)

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

model <- lm(atrited ~ Dadsmart)

print(summary(model))
 
plot(x=black, y=atrited)

abline(model)

####IS GIT WORKING