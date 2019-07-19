
# Set working directory
setwd('C:/Users/Mateo Parrado/Downloads/Gravity')

source("HelperFuns.R")

options(max.print = 100000)

new_data <- read.table('Gravity.dat', sep=' ')
names(new_data) <- c('R0000100',
  'R0536300',
  'R0536401',
  'R0536402',
  'R0536600',
  'R1201300',
  'R1204500',
  'R1235800',
  'R1302400',
  'R1302500',
  'R1302600',
  'R1302700',
  'R1482600',
  'R2516200',
  'R3828100',
  'R5342000',
  'R7085900',
  'S1527400',
  'S3592800',
  'S4967700',
  'S6707500',
  'S8680100',
  'T1100000',
  'T3177200',
  'T4588300',
  'T6221600',
  'T7718800',
  'T9119400',
  'U1110900')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 999.0] <- 1.0
  data$R0000100[1000.0 <= data$R0000100 & data$R0000100 <= 1999.0] <- 1000.0
  data$R0000100[2000.0 <= data$R0000100 & data$R0000100 <= 2999.0] <- 2000.0
  data$R0000100[3000.0 <= data$R0000100 & data$R0000100 <= 3999.0] <- 3000.0
  data$R0000100[4000.0 <= data$R0000100 & data$R0000100 <= 4999.0] <- 4000.0
  data$R0000100[5000.0 <= data$R0000100 & data$R0000100 <= 5999.0] <- 5000.0
  data$R0000100[6000.0 <= data$R0000100 & data$R0000100 <= 6999.0] <- 6000.0
  data$R0000100[7000.0 <= data$R0000100 & data$R0000100 <= 7999.0] <- 7000.0
  data$R0000100[8000.0 <= data$R0000100 & data$R0000100 <= 8999.0] <- 8000.0
  data$R0000100[9000.0 <= data$R0000100 & data$R0000100 <= 9999.0] <- 9000.0
  data$R0000100 <- factor(data$R0000100, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0), 
    labels=c("0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999"))
  data$R0536300 <- factor(data$R0536300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("No Information",
      "Male",
      "Female"))
  data$R0536401 <- factor(data$R0536401, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("1: January",
      "2: February",
      "3: March",
      "4: April",
      "5: May",
      "6: June",
      "7: July",
      "8: August",
      "9: September",
      "10: October",
      "11: November",
      "12: December"))
  data$R0536600[0.0 <= data$R0536600 & data$R0536600 <= 11.0] <- 0.0
  data$R0536600[19.0 <= data$R0536600 & data$R0536600 <= 999.0] <- 19.0
  data$R0536600 <- factor(data$R0536600, 
    levels=c(0.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0), 
    labels=c("0 TO 11: LESS THAN 12",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19 TO 999: GREATER THAN 18"))
  data$R1201300 <- factor(data$R1201300, 
    levels=c(1.0,2.0,3.0), 
    labels=c("Citizen, born in the U.S.",
      "Unknown, not born in U.S.",
      "Unknown, can't determine birthplace"))
  data$R1204500[-999999.0 <= data$R1204500 & data$R1204500 <= -3000.0] <- -999999.0
  data$R1204500[-2999.0 <= data$R1204500 & data$R1204500 <= -2000.0] <- -2999.0
  data$R1204500[-1999.0 <= data$R1204500 & data$R1204500 <= -1000.0] <- -1999.0
  data$R1204500[-999.0 <= data$R1204500 & data$R1204500 <= -1.0] <- -999.0
  data$R1204500[1.0 <= data$R1204500 & data$R1204500 <= 1000.0] <- 1.0
  data$R1204500[1001.0 <= data$R1204500 & data$R1204500 <= 2000.0] <- 1001.0
  data$R1204500[2001.0 <= data$R1204500 & data$R1204500 <= 3000.0] <- 2001.0
  data$R1204500[3001.0 <= data$R1204500 & data$R1204500 <= 5000.0] <- 3001.0
  data$R1204500[5001.0 <= data$R1204500 & data$R1204500 <= 10000.0] <- 5001.0
  data$R1204500[10001.0 <= data$R1204500 & data$R1204500 <= 20000.0] <- 10001.0
  data$R1204500[20001.0 <= data$R1204500 & data$R1204500 <= 30000.0] <- 20001.0
  data$R1204500[30001.0 <= data$R1204500 & data$R1204500 <= 40000.0] <- 30001.0
  data$R1204500[40001.0 <= data$R1204500 & data$R1204500 <= 50000.0] <- 40001.0
  data$R1204500[50001.0 <= data$R1204500 & data$R1204500 <= 65000.0] <- 50001.0
  data$R1204500[65001.0 <= data$R1204500 & data$R1204500 <= 80000.0] <- 65001.0
  data$R1204500[80001.0 <= data$R1204500 & data$R1204500 <= 100000.0] <- 80001.0
  data$R1204500[100001.0 <= data$R1204500 & data$R1204500 <= 150000.0] <- 100001.0
  data$R1204500[150001.0 <= data$R1204500 & data$R1204500 <= 200000.0] <- 150001.0
  data$R1204500[200001.0 <= data$R1204500 & data$R1204500 <= 999999.0] <- 200001.0
  data$R1204500 <- factor(data$R1204500, 
    levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0), 
    labels=c("-999999 TO -3000: < -2999",
      "-2999 TO -2000",
      "-1999 TO -1000",
      "-999 TO -1",
      "0",
      "1 TO 1000",
      "1001 TO 2000",
      "2001 TO 3000",
      "3001 TO 5000",
      "5001 TO 10000",
      "10001 TO 20000",
      "20001 TO 30000",
      "30001 TO 40000",
      "40001 TO 50000",
      "50001 TO 65000",
      "65001 TO 80000",
      "80001 TO 100000",
      "100001 TO 150000",
      "150001 TO 200000",
      "200001 TO 999999: 200001+"))
  data$R1235800 <- factor(data$R1235800, 
    levels=c(0.0,1.0), 
    labels=c("Oversample",
      "Cross-sectional"))
  data$R1302400 <- factor(data$R1302400, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$R1302500 <- factor(data$R1302500, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$R1302600 <- factor(data$R1302600, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$R1302700 <- factor(data$R1302700, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$R1482600 <- factor(data$R1482600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Black",
      "Hispanic",
      "Mixed Race (Non-Hispanic)",
      "Non-Black / Non-Hispanic"))
  data$R2516200[20.0 <= data$R2516200 & data$R2516200 <= 99.0] <- 20.0
  data$R2516200 <- factor(data$R2516200, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 99: 20+"))
  data$R3828100[20.0 <= data$R3828100 & data$R3828100 <= 99.0] <- 20.0
  data$R3828100 <- factor(data$R3828100, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 99: 20+"))
  data$R5342000[1.0 <= data$R5342000 & data$R5342000 <= 4.0] <- 1.0
  data$R5342000[5.0 <= data$R5342000 & data$R5342000 <= 8.0] <- 5.0
  data$R5342000[9.0 <= data$R5342000 & data$R5342000 <= 12.0] <- 9.0
  data$R5342000[13.0 <= data$R5342000 & data$R5342000 <= 16.0] <- 13.0
  data$R5342000[17.0 <= data$R5342000 & data$R5342000 <= 20.0] <- 17.0
  data$R5342000[21.0 <= data$R5342000 & data$R5342000 <= 24.0] <- 21.0
  data$R5342000 <- factor(data$R5342000, 
    levels=c(0.0,1.0,5.0,9.0,13.0,17.0,21.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 12",
      "13 TO 16",
      "17 TO 20",
      "21 TO 24"))
  data$R7085900[40.0 <= data$R7085900 & data$R7085900 <= 999.0] <- 40.0
  data$R7085900 <- factor(data$R7085900, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$S1527400[40.0 <= data$S1527400 & data$S1527400 <= 999.0] <- 40.0
  data$S1527400 <- factor(data$S1527400, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$S3592800[40.0 <= data$S3592800 & data$S3592800 <= 999.0] <- 40.0
  data$S3592800 <- factor(data$S3592800, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$S4967700[40.0 <= data$S4967700 & data$S4967700 <= 999.0] <- 40.0
  data$S4967700 <- factor(data$S4967700, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$S6707500[40.0 <= data$S6707500 & data$S6707500 <= 999.0] <- 40.0
  data$S6707500 <- factor(data$S6707500, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$S8680100[40.0 <= data$S8680100 & data$S8680100 <= 999.0] <- 40.0
  data$S8680100 <- factor(data$S8680100, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$T1100000[40.0 <= data$T1100000 & data$T1100000 <= 999.0] <- 40.0
  data$T1100000 <- factor(data$T1100000, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$T3177200[40.0 <= data$T3177200 & data$T3177200 <= 999.0] <- 40.0
  data$T3177200 <- factor(data$T3177200, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$T4588300[40.0 <= data$T4588300 & data$T4588300 <= 999.0] <- 40.0
  data$T4588300 <- factor(data$T4588300, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$T6221600[40.0 <= data$T6221600 & data$T6221600 <= 999.0] <- 40.0
  data$T6221600 <- factor(data$T6221600, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$T7718800[40.0 <= data$T7718800 & data$T7718800 <= 999.0] <- 40.0
  data$T7718800 <- factor(data$T7718800, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$T9119400[40.0 <= data$T9119400 & data$T9119400 <= 999.0] <- 40.0
  data$T9119400 <- factor(data$T9119400, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  data$U1110900[40.0 <= data$U1110900 & data$U1110900 <= 999.0] <- 40.0
  data$U1110900 <- factor(data$U1110900, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0), 
    labels=c("1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
      "40 TO 999: 40+"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!AGE (SYMBOL) 1997",
  "CV_CITIZENSHIP 1997",
  "CV_INCOME_GROSS_YR 1997",
  "CV_SAMPLE_TYPE 1997",
  "CV_HGC_BIO_DAD 1997",
  "CV_HGC_BIO_MOM 1997",
  "CV_HGC_RES_DAD 1997",
  "CV_HGC_RES_MOM 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "SYMBOL!KEY!AGE 1998",
  "SYMBOL!KEY!AGE 1999",
  "SYMBOL!KEY!AGE 2000",
  "SYMBOL!KEY!AGE 2001",
  "SYMBOL!KEY!AGE 2002",
  "SYMBOL!KEY!AGE 2003",
  "SYMBOL!KEY!AGE 2004",
  "SYMBOL!KEY!AGE 2005",
  "SYMBOL!KEY!AGE 2006",
  "SYMBOL!KEY!AGE 2007",
  "SYMBOL!KEY!AGE 2008",
  "SYMBOL!KEY!AGE 2009",
  "SYMBOL!KEY!AGE 2010",
  "SYMBOL!KEY!AGE 2011",
  "SYMBOL!KEY!AGE 2013",
  "SYMBOL!KEY!AGE 2015"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "KEY_AGE_1997",
    "CV_CITIZENSHIP_1997",
    "CV_INCOME_GROSS_YR_1997",
    "CV_SAMPLE_TYPE_1997",
    "CV_HGC_BIO_DAD_1997",
    "CV_HGC_BIO_MOM_1997",
    "CV_HGC_RES_DAD_1997",
    "CV_HGC_RES_MOM_1997",
    "KEY_RACE_ETHNICITY_1997",
    "SYMBOL_KEY_AGE_1998",
    "SYMBOL_KEY_AGE_1999",
    "SYMBOL_KEY_AGE_2000",
    "SYMBOL_KEY_AGE_2001",
    "SYMBOL_KEY_AGE_2002",
    "SYMBOL_KEY_AGE_2003",
    "SYMBOL_KEY_AGE_2004",
    "SYMBOL_KEY_AGE_2005",
    "SYMBOL_KEY_AGE_2006",
    "SYMBOL_KEY_AGE_2007",
    "SYMBOL_KEY_AGE_2008",
    "SYMBOL_KEY_AGE_2009",
    "SYMBOL_KEY_AGE_2010",
    "SYMBOL_KEY_AGE_2011",
    "SYMBOL_KEY_AGE_2013",
    "SYMBOL_KEY_AGE_2015")
  return(data)
}


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