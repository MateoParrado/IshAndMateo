set memory 30m

infile using Gravity.dct

* MARITAL STATUS
* 0 is no answer, 1 is never married, 2 is married, 3 is Married
generate Married1997 = 0
replace Married1997 = 1 if E7011701 == 0 | E7011701 == 1
replace Married1997 = 2 if E7011701 == 2
replace Married1997 = 3 if E7011701 == 3 | E7011701 == 4 | E7011701 == 5


generate Married1998 = 0
replace Married1998 = 1 if E7011801 == 0 | E7011801 == 1
replace Married1998 = 2 if E7011801 == 2
replace Married1998 = 3 if E7011801 == 3 | E7011801 == 4 | E7011801 == 5


generate Married1999 = 0
replace Married1999 = 1 if E7011901 == 0 | E7011901 == 1
replace Married1999 = 2 if E7011901 == 2
replace Married1999 = 3 if E7011901 == 3 | E7011901 == 4 | E7011901 == 5


generate Married2000 = 0
replace Married2000 = 1 if E7012001 == 0 | E7012001 == 1
replace Married2000 = 2 if E7012001 == 2 
replace Married2000 = 3 if E7012001 == 3 | E7012001 == 4 | E7012001 == 5


generate Married2001 = 0
replace Married2001 = 1 if E7012101 == 0 | E7012101 == 1
replace Married2001 = 2 if E7012101 == 2 
replace Married2001 = 3 if E7012101 == 3 | E7012101== 4 | E7012101 == 5


generate Married2002 = 0
replace Married2002 = 1 if E7012201 == 0 | E7012201 == 1
replace Married2002 = 2 if E7012201 == 2
replace Married2002 = 3 if E7012201 == 3 | E7012201== 4 | E7012201 == 5


generate Married2003 = 0
replace Married2003 = 1 if E7012301 == 0 | E7012301 == 1
replace Married2003 = 2 if E7012301 == 2
replace Married2003 = 3 if E7012301 == 3 | E7012301== 4 | E7012301 == 5


generate Married2004 = 0
replace Married2004 = 1 if E7012401 == 0 | E7012401 == 1
replace Married2004 = 2 if E7012401 == 2
replace Married2004 = 3 if E7012401 == 3 | E7012401== 4 | E7012401 == 5



generate Married2005 = 0
replace Married2005 = 1 if E7012501 == 0 | E7012501 == 1
replace Married2005 = 2 if E7012501 == 2
replace Married2005 = 3 if E7012501 == 3 | E7012501== 4 | E7012501 == 5


generate Married2006 = 0
replace Married2006 = 1 if E7012601 == 0 | E7012601 == 1
replace Married2006 = 2 if E7012601 == 2
replace Married2006 = 3 if E7012601 == 3 | E7012601== 4 | E7012601 == 5


generate Married2007 = 0
replace Married2007 = 1 if E7012701 == 0 | E7012701 == 1
replace Married2007 = 2 if E7012701 == 2
replace Married2007 = 3 if E7012701 == 3 | E7012701 == 4 | E7012701 == 5


generate Married2008 = 0
replace Married2008 = 1 if E7012801 == 0 | E7012801 == 1
replace Married2008 = 2 if E7012801 == 2
replace Married2008 = 3 if E7012801 == 3 | E7012801 == 4 | E7012801 == 5


generate Married2009 = 0
replace Married2009 = 1 if E7012901 == 0 | E7012901 == 1
replace Married2009 = 2 if E7012901 == 2
replace Married2009 = 3 if E7012901 == 3 | E7012901 == 4 | E7012901 == 5


generate Married2010 = 0
replace Married2010 = 1 if E7013001 == 0 | E7013001 == 1
replace Married2010 = 2 if E7013001 == 2
replace Married2010 = 3 if E7013001 == 3 | E7013001== 4 | E7013001 == 5


generate Married2011 = 0
replace Married2011 = 1 if E7013101 == 0 | E7013101 == 1
replace Married2011 = 2 if E7013101 == 2
replace Married2011 = 3 if E7013101 == 3 | E7013101 == 4 | E7013101 == 5


generate Married2012 = 0
replace Married2012 = 1 if E7013201 == 0 | E7013201 == 1
replace Married2012 = 2 if E7013201 == 2
replace Married2012 = 3 if E7013201 == 3 | E7013201 == 4 | E7013201 == 5


generate Married2013 = 0
replace Married2013 = 1 if E7013301 == 0 | E7013301 == 1
replace Married2013 = 2 if E7013301 == 2
replace Married2013 = 3 if E7013301 == 3 | E7013301 == 4 | E7013301 == 5


generate Married2014 = 0
replace Married2014 = 1 if E7013401 == 0 | E7013401 == 1
replace Married2014 = 2 if E7013401 == 2
replace Married2014 = 3 if E7013401 == 3 | E7013401== 4 | E7013401 == 5


generate Married2015 = 0
replace Married2015 = 1 if E7013501 == 0 | E7013501 == 1
replace Married2015 = 2 if E7013501 == 2
replace Married2015 = 3 if E7013501 == 3 | E7013501 == 4 | E7013501 == 5


* REFERENCE

* 0 is female, 1 is male
generate sex = 0
replace sex = 1 if R0536300 == 1

generate USBorn = 0
replace USBorn = 1 if R1201300 == 1

*black is 0, latino is 1, mixed is 3, other is 4

generate race = 0
replace race = 1 if R1482600 == 2
replace race= 2 if R1482600 == 3
replace race= 3 if R1482600 == 4

*black man is 0 black woman is 1 latino man is 2 latino woman is 3 other man is 4 other woman is 5

generate raceGen = 0
replace raceGen = 1 if R1482600 == 1 & R0536300 == 2
replace raceGen = 2 if R1482600 == 2 & R0536300 == 1
replace raceGen = 3 if R1482600 == 2 & R0536300 == 2
replace raceGen = 4 if R1482600 == 4 & R0536300 == 1
replace raceGen = 5 if R1482600 == 4 & R0536300 == 2

* 1 is less than 10k, 2 is less than 20, 3 is less than 50, 4 is less than 100, 5 is less than 200, 6 is greater than 200

generate parentalIncome = 0
replace parentalIncome = 1 if R1204500 < 10000
replace parentalIncome = 2 if R1204500 >= 10000 & R1204500 < 20000
replace parentalIncome = 3 if R1204500 >= 20000 & R1204500 < 50000
replace parentalIncome = 4 if R1204500 >= 50000 & R1204500 < 100000
replace parentalIncome = 5 if R1204500 >= 100000 & R1204500 < 200000
replace parentalIncome = 6 if R1204500 >= 200000

* ATRITED

generate atrited1998 = 0
replace atrited1998 = 1 if R2516200 < 0

generate atrited1999 = 0 
replace atrited1999 = 1 if R3828100 < 0

generate atrited2000 = 0
replace atrited2000 = 1 if R5342000 < 0

generate atrited2001 = 0
replace atrited2001 = 1 if R7085900 < 0

generate atrited2002 = 0
replace atrited2002 = 1 if S1527400 < 0

generate atrited2003 = 0
replace atrited2003 = 1 if S3592800 < 0

generate atrited2004 = 0
replace atrited2004 = 1 if S4967700 < 0

generate atrited2005 = 0
replace atrited2005 = 1 if S6707500 < 0

generate atrited2006 = 0
replace atrited2006 = 1 if S8680100 < 0

generate atrited2007 = 0
replace atrited2007 = 1 if T1100000 < 0

generate atrited2008 = 0
replace atrited2008 = 1 if T3177200 < 0

generate atrited2009 = 0
replace atrited2009 = 1 if T4588300 < 0

generate atrited2010 = 0
replace atrited2010 = 1 if T6221600 < 0

generate atrited2011 = 0
replace atrited2011 = 1 if T7718800 < 0

generate atrited2013 = 0
replace atrited2013 = 1 if T9119400 < 0

generate atrited2015 = 0
replace atrited2015 = 1 if U1110900 < 0

* DID R RECEIVE INCOME

generate receivedIncome1997 = 0
replace receivedIncome1997 = 1 if R0489900 == 1

generate receivedIncome1998 = 0
replace receivedIncome1998 = 1 if R2340900 == 1

generate receivedIncome1999 = 0
replace receivedIncome1999 = 1 if R3649900 == 1

generate receivedIncome2000 = 0
replace receivedIncome2000 = 1 if R5098600 == 1

generate receivedIncome2001 = 0
replace receivedIncome2001 = 1 if R6827200 == 1

generate receivedIncome2002 = 0
replace receivedIncome2002 = 1 if S1055500 == 1

generate receivedIncome2003 = 0
replace receivedIncome2003 = 1 if S3134400 == 1

generate receiveIncome2004 = 0
replace receiveIncome2004 = 1 if S4799400 == 1

generate receivedIncome2005 = 0
replace receivedIncome2005 = 1 if S6500800 == 1

generate receivedIncome2006 = 0
replace receivedIncome2006 = 1 if S8496300 == 1

generate receivedIncome2007 = 0
replace receivedIncome2007 = 1 if T0889600 == 1

generate receivedIncome2008 = 0
replace receivedIncome2008 = 1 if T3002800 == 1

generate receivedIncome2009 = 0
replace receivedIncome2009 = 1 if T4405800 == 1

generate receivedIncome2010 = 0
replace receivedIncome2010 = 1 if T6055300 == 1

generate receivedIncome2011 = 0
replace receivedIncome2011 = 1 if T7545400 == 1

generate receivedIncome2013 = 0
replace receivedIncome2013 = 1 if T8976500 == 1

generate receivedIncome2015 = 0
replace receivedIncome2015 = 1 if U0956700 == 1

* INCOME EARNED 
* 1 is <10k, 2 is <20k, 3 is < 50k, 4 is > 100k

generate income1997 = 0
replace income1997 = . if R0490200 < 0 
replace income1997 = 1 if R0490200 >= 0 & R0490200 < 10000
replace income1997 = 2 if R0490200 >= 10000 & R0490200 < 20000
replace income1997 = 3 if R0490200 >= 20000 & R0490200 < 50000
replace income1997 = 4 if R0490200 >= 50000


generate income1998 = 0
replace income1998 = . if R2341200 < 0 
replace income1998 = 1 if R2341200 >= 0 & R2341200 < 10000
replace income1998 = 2 if R2341200 >= 10000 & R2341200 < 20000
replace income1998 = 3 if R2341200 >= 20000 & R2341200 < 50000
replace income1998 = 4 if R2341200 >= 50000


generate income1999 = 0
replace income1999 = . if R3650200 < 0 
replace income1999 = 1 if R3650200 >= 0 & R3650200 < 10000
replace income1999 = 2 if R3650200 >= 10000 & R3650200 < 20000
replace income1999 = 3 if R3650200 >= 20000 & R3650200 < 50000
replace income1999 = 4 if R3650200 >= 50000


generate income2000 = 0
replace income2000 = . if R5098900 < 0 
replace income2000 = 1 if R5098900 >= 0 & R5098900 < 10000
replace income2000 = 2 if R5098900 >= 10000 & R5098900 < 20000
replace income2000 = 3 if R5098900 >= 20000 & R5098900 < 50000
replace income2000 = 4 if R5098900 >= 50000



generate income2001 = 0
replace income2001 = . if R6827500 < 0 
replace income2001 = 1 if R6827500 >= 0 & R6827500 < 10000
replace income2001 = 2 if R6827500 >= 10000 & R6827500 < 20000
replace income2001 = 3 if R6827500 >= 20000 & R6827500 < 50000
replace income2001 = 4 if R6827500 >= 50000



generate income2002 = 0
replace income2002 = . if S1055800 < 0 
replace income2002 = 1 if S1055800 >= 0 & S1055800 < 10000
replace income2002 = 2 if S1055800 >= 10000 & S1055800 < 20000
replace income2002 = 3 if S1055800 >= 20000 & S1055800 < 50000
replace income2002 = 4 if S1055800 >= 50000



generate income2003 = 0
replace income2003 = . if S3134600 < 0 
replace income2003 = 1 if S3134600 >= 0 & S3134600 < 10000
replace income2003 = 2 if S3134600 >= 10000 & S3134600 < 20000
replace income2003 = 3 if S3134600 >= 20000 & S3134600 < 50000
replace income2003 = 4 if S3134600 >= 50000



generate income2004 = 0
replace income2004 = . if S4799600 < 0 
replace income2004 = 1 if S4799600 >= 0 & S4799600 < 10000
replace income2004 = 2 if S4799600 >= 10000 & S4799600 < 20000
replace income2004 = 3 if S4799600 >= 20000 & S4799600 < 50000
replace income2004 = 4 if S4799600 >= 50000



generate income2005 = 0
replace income2005 = . if S6501000 < 0 
replace income2005 = 1 if S6501000 >= 0 & S6501000 < 10000
replace income2005 = 2 if S6501000 >= 10000 & S6501000 < 20000
replace income2005 = 3 if S6501000 >= 20000 & S6501000 < 50000
replace income2005 = 4 if S6501000 >= 50000



generate income2006 = 0
replace income2006 = . if S8496500 < 0 
replace income2006 = 1 if S8496500 >= 0 & S8496500 < 10000
replace income2006 = 2 if S8496500 >= 10000 & S8496500 < 20000
replace income2006 = 3 if S8496500 >= 20000 & S8496500 < 50000
replace income2006 = 4 if S8496500 >= 50000



generate income2007 = 0
replace income2007 = . if T0889800 < 0 
replace income2007 = 1 if T0889800 >= 0 & T0889800 < 10000
replace income2007 = 2 if T0889800 >= 10000 & T0889800 < 20000
replace income2007 = 3 if T0889800 >= 20000 & T0889800 < 50000
replace income2007 = 4 if T0889800 >= 50000



generate income2008 = 0
replace income2008 = . if T3003000 < 0 
replace income2008 = 1 if T3003000 >= 0 & T3003000 < 10000
replace income2008 = 2 if T3003000 >= 10000 & T3003000 < 20000
replace income2008 = 3 if T3003000 >= 20000 & T3003000 < 50000
replace income2008 = 4 if T3003000 >= 50000




generate income2009 = 0
replace income2009 = . if T4406000 < 0 
replace income2009 = 1 if T4406000 >= 0 & T4406000 < 10000
replace income2009 = 2 if T4406000 >= 10000 & T4406000 < 20000
replace income2009 = 3 if T4406000 >= 20000 & T4406000 < 50000
replace income2009 = 4 if T4406000 >= 50000



generate income2010 = 0
replace income2010 = . if T6055500 < 0 
replace income2010 = 1 if T6055500 >= 0 & T6055500 < 10000
replace income2010 = 2 if T6055500 >= 10000 & T6055500 < 20000
replace income2010 = 3 if T6055500 >= 20000 & T6055500 < 50000
replace income2010 = 4 if T6055500 >= 50000



generate income2011 = 0
replace income2011 = . if T7545600 < 0 
replace income2011 = 1 if T7545600 >= 0 & T7545600< 10000
replace income2011 = 2 if T7545600 >= 10000 & T7545600 < 20000
replace income2011 = 3 if T7545600 >= 20000 & T7545600 < 50000
replace income2011 = 4 if T7545600 >= 50000



generate income2013 = 0
replace income2013 = . if T8976700 < 0 
replace income2013 = 1 if T8976700 >= 0 & T8976700 < 10000
replace income2013 = 2 if T8976700 >= 10000 & T8976700 < 20000
replace income2013 = 3 if T8976700 >= 20000 & T8976700 < 50000
replace income2013 = 4 if T8976700 >= 50000



generate income2015 = 0
replace income2015 = . if U0956900 < 0 
replace income2015 = 1 if U0956900 >= 0 & U0956900 < 10000
replace income2015 = 2 if U0956900 >= 10000 & U0956900 < 20000
replace income2015 = 3 if U0956900 >= 20000 & U0956900 < 50000
replace income2015 = 4 if U0956900 >= 50000

* NUMBER OF DIFFERENT ADDRESSES R LIVED AT
* 0 = didnt move, 1 = moved once, 2 = moved twice, 3 = moved more than that

generate addresses1998 = 0
replace addresses1998 = 1 if R1490300 == 1
replace addresses1998 = 2 if R1490300 == 2
replace addresses1998 = 3 if R1490300 > 2

generate addresses1999 = 0
replace addresses1999 = 1 if R2733100 == 1
replace addresses1999 = 2 if R2733100 == 2
replace addresses1999 = 3 if R2733100 > 2

generate addresses2000 = 0
replace addresses2000 = 1 if R3994500 == 1
replace addresses2000 = 2 if R3994500 == 2
replace addresses2000 = 3 if R3994500 > 2


generate addresses2001 = 0
replace addresses2001 = 1 if R5663600 == 1
replace addresses2001 = 2 if R5663600 == 2
replace addresses2001 = 3 if R5663600 > 2


generate addresses2002 = 0
replace addresses2002 = 1 if S0014300 == 1
replace addresses2002 = 2 if S0014300 == 2
replace addresses2002 = 3 if S0014300 > 2



generate addresses2003 = 0
replace addresses2003 = 1 if S2082300 == 1
replace addresses2003 = 2 if S2082300 == 2
replace addresses2003 = 3 if S2082300 > 2



generate addresses2004 = 0
replace addresses2004 = 1 if S3876200 == 1
replace addresses2004 = 2 if S3876200 == 2
replace addresses2004 = 3 if S3876200 > 2



generate addresses2005 = 0
replace addresses2005 = 1 if S5466000 == 1
replace addresses2005 = 2 if S5466000 == 2
replace addresses2005 = 3 if S5466000 > 2



generate addresses2006 = 0
replace addresses2006 = 1 if S7569500 == 1
replace addresses2006 = 2 if S7569500 == 2
replace addresses2006 = 3 if S7569500 > 2



generate addresses2007 = 0
replace addresses2007 = 1 if T0054200 == 1
replace addresses2007 = 2 if T0054200 == 2
replace addresses2007 = 3 if T0054200 > 2



generate addresses2008 = 0
replace addresses2008 = 1 if T2034900 == 1
replace addresses2008 = 2 if T2034900 == 2
replace addresses2008 = 3 if T2034900 > 2


generate addresses2009 = 0
replace addresses2009 = 1 if T3635800 == 1
replace addresses2009 = 2 if T3635800 == 2
replace addresses2009 = 3 if T3635800 > 2



generate addresses2010 = 0
replace addresses2010 = 1 if T5233000 == 1
replace addresses2010 = 2 if T5233000 == 2
replace addresses2010 = 3 if T5233000 > 2


generate addresses2011 = 0
replace addresses2011 = 1 if T6685400 == 1
replace addresses2011 = 2 if T6685400 == 2
replace addresses2011 = 3 if T6685400 > 2



generate addresses2013 = 0
replace addresses2013 = 1 if T8158600 == 1
replace addresses2013 = 2 if T8158600 == 2
replace addresses2013 = 3 if T8158600 > 2

* HAS R MOVED TO A DIFFERENT STATE OR COUNTY

generate rDifState1998 = 0
replace rDifState1998 = 1 if R1490400 == 1

generate rDifState1999 = 0
replace rDifState1999 =1 if R2733200 == 1

generate rDifState2000 = 0
replace rDifState2000 = 1 if R3994600 == 1

generate rDifState2001 = 0
replace rDifState2001 = 1 if R5663700 == 1

generate rDifState2002 = 0
replace rDifState2002 = 1 if S0014400 == 1

generate rDifState2003 = 0
replace rDifState2003 = 1 if S2082400 == 1

generate rDifState2004 = 0
replace rDifState2004 = 1 if  S3876300 == 1

generate rDifState2005 = 0
replace rDifState2005 = 1 if S5466100 == 1

generate rDifState2006 = 0
replace rDifState2006 = 1 if S7569600 == 1

generate rDifState2007 = 0
replace rDifState2007 = 1 if T0054300 == 1

generate rDifState2008 = 0
replace rDifState2008 = 1 if T2035000 == 1

generate rDifState2009 = 0
replace rDifState2009 = 1 if T3635900 == 1

generate rDifState2010 = 0
replace rDifState2010 = 1 if T5233100 == 1

generate rDifState2011 = 0
replace rDifState2011 = 1 if T6685500 == 1

generate rDifState2013 = 0
replace rDifState2013 = 1 if T8158700 == 1

generate rDifState2015 = 0
replace rDifState2015 = 1 if U0041400 == 1

* NUMBER OF BIO KIDS IN THE HH
*0 =0 kids, 1 = 1, 2 = 2, 5= 5+
generate numberOfKids1997 = 0
replace numberOfKids1997 = 1 if R1211100 == 1
replace numberOfKids1997 = 2 if R1211100 == 2
replace numberOfKids1997 = 3 if R1211100 == 3
replace numberOfKids1997 = 4 if R1211100 == 4
replace numberOfKids1997 = 5 if R1211100 > 4

generate numberOfKids1998 = 0
replace numberOfKids1998 = 1 if R2570100 == 1
replace numberOfKids1998 = 2 if R2570100 == 2
replace numberOfKids1998 = 3 if R2570100 == 3
replace numberOfKids1998 = 4 if R2570100 == 4
replace numberOfKids1998 = 5 if R2570100 > 4

generate numberOfKids1999 = 0
replace numberOfKids1999 = 1 if R3892100 == 1
replace numberOfKids1999 = 2 if R3892100 == 2
replace numberOfKids1999 = 3 if R3892100 == 3
replace numberOfKids1999 = 4 if R3892100 == 4
replace numberOfKids1999 = 5 if R3892100 > 4

generate numberOfKids2000 = 0
replace numberOfKids2000 = 1 if R5474100 == 1
replace numberOfKids2000 = 2 if R5474100 == 2
replace numberOfKids2000 = 3 if R5474100 == 3
replace numberOfKids2000 = 4 if R5474100 == 4
replace numberOfKids2000 = 5 if R5474100 > 4

generate numberOfKids2001 = 0
replace numberOfKids2001 = 1 if R7237800 == 1
replace numberOfKids2001 = 2 if R7237800 == 2
replace numberOfKids2001 = 3 if R7237800 == 3
replace numberOfKids2001 = 4 if R7237800 == 4
replace numberOfKids2001 = 5 if R7237800 > 4

generate numberOfKids2002 = 0
replace numberOfKids2002 = 1 if S1553100 == 1
replace numberOfKids2002 = 2 if S1553100 == 2
replace numberOfKids2002 = 3 if S1553100 == 3
replace numberOfKids2002 = 4 if S1553100 == 4
replace numberOfKids2002 = 5 if S1553100 > 4

generate numberOfKids2003 = 0
replace numberOfKids2003 = 1 if S2022700 == 1
replace numberOfKids2003 = 2 if S2022700 == 2
replace numberOfKids2003 = 3 if S2022700 == 3
replace numberOfKids2003 = 4 if S2022700 == 4
replace numberOfKids2003 = 5 if S2022700 > 4

generate numberOfKids2004 = 0
replace numberOfKids2004 = 1 if S3823600 == 1
replace numberOfKids2004 = 2 if S3823600 == 2
replace numberOfKids2004 = 3 if S3823600 == 3
replace numberOfKids2004 = 4 if S3823600 == 4
replace numberOfKids2004 = 5 if S3823600 > 4

generate numberOfKids2005 = 0
replace numberOfKids2005 = 1 if S5423600 == 1
replace numberOfKids2005 = 2 if S5423600 == 2
replace numberOfKids2005 = 3 if S5423600 == 3
replace numberOfKids2005 = 4 if S5423600 == 4
replace numberOfKids2005 = 5 if S5423600 > 4

generate numberOfKids2006 = 0
replace numberOfKids2006 = 1 if S7525700 == 1
replace numberOfKids2006 = 2 if S7525700 == 2
replace numberOfKids2006 = 3 if S7525700 == 3
replace numberOfKids2006 = 4 if S7525700 == 4
replace numberOfKids2006 = 5 if S7525700 > 4

generate numberOfKids2007 = 0
replace numberOfKids2007 = 1 if T0026000 == 1
replace numberOfKids2007 = 2 if T0026000 == 2
replace numberOfKids2007 = 3 if T0026000 == 3
replace numberOfKids2007 = 4 if T0026000 == 4
replace numberOfKids2007 = 5 if T0026000 > 4

generate numberOfKids2008 = 0
replace numberOfKids2008 = 1 if T2020900 == 1
replace numberOfKids2008 = 2 if T2020900 == 2
replace numberOfKids2008 = 3 if T2020900 == 3
replace numberOfKids2008 = 4 if T2020900 == 4
replace numberOfKids2008 = 5 if T2020900 > 4

generate numberOfKids2009 = 0
replace numberOfKids2009 = 1 if T3611600 == 1
replace numberOfKids2009 = 2 if T3611600 == 2
replace numberOfKids2009 = 3 if T3611600 == 3
replace numberOfKids2009 = 4 if T3611600 == 4
replace numberOfKids2009 = 5 if T3611600 > 4

generate numberOfKids2010 = 0
replace numberOfKids2010 = 1 if T5211700 == 1
replace numberOfKids2010 = 2 if T5211700 == 2
replace numberOfKids2010 = 3 if T5211700 == 3
replace numberOfKids2010 = 4 if T5211700 == 4
replace numberOfKids2010 = 5 if T5211700 > 4

generate numberOfKids2011 = 0
replace numberOfKids2011 = 1 if T6663100 == 1
replace numberOfKids2011 = 2 if T6663100 == 2
replace numberOfKids2011 = 3 if T6663100 == 3
replace numberOfKids2011 = 4 if T6663100 == 4
replace numberOfKids2011 = 5 if T6663100 > 4

generate numberOfKids2013 = 0
replace numberOfKids2013 = 1 if T8134300 == 1
replace numberOfKids2013 = 2 if T8134300 == 2
replace numberOfKids2013 = 3 if T8134300 == 3
replace numberOfKids2013 = 4 if T8134300 == 4
replace numberOfKids2013 = 5 if T8134300 > 4

generate numberOfKids2015 = 0
replace numberOfKids2015 = 1 if U0014800 == 1
replace numberOfKids2015 = 2 if U0014800 == 2
replace numberOfKids2015 = 3 if U0014800 == 3
replace numberOfKids2015 = 4 if U0014800 == 4
replace numberOfKids2015 = 5 if U0014800 > 4







* HAS HIGHSCHOOL DIMPLOMA?

generate hasHighschoolDiploma1998 = 0
replace hasHighschoolDiploma1998 = 1 if R2563201 == 12

generate hasHighschoolDiploma1999 = 0
replace hasHighschoolDiploma1999 = 1 if R3884801 == 12

generate hasHighschoolDiploma2000 = 0
replace hasHighschoolDiploma2000 = 1 if R5464001 == 12

generate hasHighschoolDiploma2001 = 0
replace hasHighschoolDiploma2001 = 1 if R7227701 == 12

generate hasHighschoolDiploma2002 = 0
replace hasHighschoolDiploma2002 = 1 if S1541601 == 12

generate hasHighschoolDiploma2003 = 0
replace hasHighschoolDiploma2003 = 1 if S2011401 == 12

generate hasHighschoolDiploma2004 = 0
replace hasHighschoolDiploma2004 = 1 if S3812301 == 12

generate hasHighschoolDiploma2005 = 0
replace hasHighschoolDiploma2005 = 1 if S5412700 == 12

generate hasHighschoolDiploma2006 = 0
replace hasHighschoolDiploma2006 =  1 if S7513600 == 0

generate hasHighschoolDiploma2007 = 0
replace hasHighschoolDiploma2007 = 1 if T0014000 == 12

generate hasHighschoolDiploma2008 = 0
replace hasHighschoolDiploma2008 = 1 if T2016100 == 12

generate hasHighschoolDiploma2009 = 0
replace hasHighschoolDiploma2009 = 1 if T3606400 == 12

generate hasHighschoolDiploma2010 = 0
replace hasHighschoolDiploma2010 = 1 if T5206800 == 12

generate hasHighschoolDiploma2011 = 0
replace hasHighschoolDiploma2011 = 1 if T6656600 == 12

generate hasHighschoolDiploma2013 = 0
replace hasHighschoolDiploma2013 = 1 if T8129000 == 12

* Parents HGC
* 0 is no HS, 1 is HS, 2 is BA, 3 is higher ed

generate DadEd = 0
replace DadEd = 1 if R1302600 == 12
replace DadEd = 2 if R1302600 == 16
replace DadEd = 3 if R1302600 > 16


generate MomEd = 0
replace MomEd = 1 if R1302700 == 12
replace MomEd = 2 if R1302700 == 16
replace MomEd = 3 if R1302700 > 16

save Descriptives.dta, replace


