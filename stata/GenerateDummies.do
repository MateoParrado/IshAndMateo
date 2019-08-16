set memory 30m

infile using Gravity.dct

* MARITAL STATUS
generate NeverMarried1997 = 0
replace NeverMarried1997 = 1 if E7011701 == 0 | E7011701 == 1

generate Married1997 = 0
replace Married1997 = 1 if E7011701 == 2

generate Seperated1997 = 0 
replace Seperated1997 = 1 if E7011701 == 3 | E7011701 == 4 | E7011701 == 5


generate NeverMarried1998 = 0
replace NeverMarried1998 = 1 if E7011801 == 0 | E7011801 == 1

generate Married1998 = 0
replace Married1998 = 1 if E7011801 == 2

generate Seperated1998 = 0 
replace Seperated1998 = 1 if E7011801 == 3 | E7011801 == 4 | E7011801 == 5


generate NeverMarried1999 = 0
replace NeverMarried1999 = 1 if E7011901 == 0 | E7011901 == 1

generate Married1999 = 0
replace Married1999 = 1 if E7011901 == 2

generate Seperated1999 = 0 
replace Seperated1999 = 1 if E7011901 == 3 | E7011901 == 4 | E7011901 == 5


generate NeverMarried2000 = 0
replace NeverMarried2000 = 1 if E7012001 == 0 | E7012001 == 1

generate Married2000 = 0
replace Married2000 = 1 if E7012001 == 2

generate Seperated2000 = 0 
replace Seperated2000 = 1 if E7012001 == 3 | E7012001 == 4 | E7012001 == 5


generate NeverMarried2001 = 0
replace NeverMarried2001 = 1 if E7012101 == 0 | E7012101 == 1

generate Married2001 = 0
replace Married2001 = 1 if E7012101 == 2

generate Seperated2001 = 0 
replace Seperated2001 = 1 if E7012101 == 3 | E7012101== 4 | E7012101 == 5


generate NeverMarried2002 = 0
replace NeverMarried2002 = 1 if E7012201 == 0 | E7012201 == 1

generate Married2002 = 0
replace Married2002 = 1 if E7012201 == 2

generate Seperated2002 = 0 
replace Seperated2002 = 1 if E7012201 == 3 | E7012201== 4 | E7012201 == 5


generate NeverMarried2003 = 0
replace NeverMarried2003 = 1 if E7012301 == 0 | E7012301 == 1

generate Married2003 = 0
replace Married2003 = 1 if E7012301 == 2

generate Seperated2003 = 0 
replace Seperated2003 = 1 if E7012301 == 3 | E7012301== 4 | E7012301 == 5


generate NeverMarried2004 = 0
replace NeverMarried2004 = 1 if E7012401 == 0 | E7012401 == 1

generate Married2004 = 0
replace Married2004 = 1 if E7012401 == 2

generate Seperated2004 = 0 
replace Seperated2004 = 1 if E7012401 == 3 | E7012401== 4 | E7012401 == 5



generate NeverMarried2005 = 0
replace NeverMarried2005 = 1 if E7012501 == 0 | E7012501 == 1

generate Married2005 = 0
replace Married2005 = 1 if E7012501 == 2

generate Seperated2005 = 0 
replace Seperated2005 = 1 if E7012501 == 3 | E7012501== 4 | E7012501 == 5


generate NeverMarried2006 = 0
replace NeverMarried2006 = 1 if E7012601 == 0 | E7012601 == 1

generate Married2006 = 0
replace Married2006 = 1 if E7012601 == 2

generate Seperated2006 = 0 
replace Seperated2006 = 1 if E7012601 == 3 | E7012601== 4 | E7012601 == 5


generate NeverMarried2007 = 0
replace NeverMarried2007 = 1 if E7012701 == 0 | E7012701 == 1

generate Married2007 = 0
replace Married2007 = 1 if E7012701 == 2

generate Seperated2007 = 0 
replace Seperated2007 = 1 if E7012701 == 3 | E7012701 == 4 | E7012701 == 5


generate NeverMarried2008 = 0
replace NeverMarried2008 = 1 if E7012801 == 0 | E7012801 == 1

generate Married2008 = 0
replace Married2008 = 1 if E7012801 == 2

generate Seperated2008 = 0 
replace Seperated2008 = 1 if E7012801 == 3 | E7012801 == 4 | E7012801 == 5


generate NeverMarried2009 = 0
replace NeverMarried2009 = 1 if E7012901 == 0 | E7012901 == 1

generate Married2009 = 0
replace Married2009 = 1 if E7012901 == 2

generate Seperated2009 = 0 
replace Seperated2009 = 1 if E7012901 == 3 | E7012901 == 4 | E7012901 == 5


generate NeverMarried2010 = 0
replace NeverMarried2010 = 1 if E7013001 == 0 | E7013001 == 1

generate Married2010 = 0
replace Married2010 = 1 if E7013001 == 2

generate Seperated2010 = 0 
replace Seperated2010 = 1 if E7013001 == 3 | E7013001== 4 | E7013001 == 5


generate NeverMarried2011 = 0
replace NeverMarried2011 = 1 if E7013101 == 0 | E7013101 == 1

generate Married2011 = 0
replace Married2011 = 1 if E7013101 == 2

generate Seperated2011 = 0 
replace Seperated2011 = 1 if E7013101 == 3 | E7013101 == 4 | E7013101 == 5


generate NeverMarried2012 = 0
replace NeverMarried2012 = 1 if E7013201 == 0 | E7013201 == 1

generate Married2012 = 0
replace Married2012 = 1 if E7013201 == 2

generate Seperated2012 = 0 
replace Seperated2012 = 1 if E7013201 == 3 | E7013201 == 4 | E7013201 == 5


generate NeverMarried2013 = 0
replace NeverMarried2013 = 1 if E7013301 == 0 | E7013301 == 1

generate Married2013 = 0
replace Married2013 = 1 if E7013301 == 2

generate Seperated2013 = 0 
replace Seperated2013 = 1 if E7013301 == 3 | E7013301 == 4 | E7013301 == 5


generate NeverMarried2014 = 0
replace NeverMarried2014 = 1 if E7013401 == 0 | E7013401 == 1

generate Married2014 = 0
replace Married2014 = 1 if E7013401 == 2

generate Seperated2014 = 0 
replace Seperated2014 = 1 if E7013401 == 3 | E7013401== 4 | E7013401 == 5


generate NeverMarried2015 = 0
replace NeverMarried2015 = 1 if E7013501 == 0 | E7013501 == 1

generate Married2015 = 0
replace Married2015 = 1 if E7013501 == 2

generate Seperated2015 = 0 
replace Seperated2015 = 1 if E7013501 == 3 | E7013501 == 4 | E7013501 == 5


* REFERENCE

generate isMale = 0
replace isMale = 1 if R0536300 == 1

generate isFemale = 0
replace isFemale = 1 if R0536300 == 2


generate USBorn = 0
replace USBorn = 1 if R1201300 == 1

generate NotUSBorn = 0 
replace NotUSBorn =1 if R1201300 == 2 | R1201300 == 3


generate isBlack = 0
replace isBlack = 1 if R1482600 == 1

generate isHispanic = 0
replace isHispanic = 1 if R1482600 == 2

generate isMixed = 0
replace isMixed = 1 if R1482600 == 3

generate isOther = 0
replace isOther = 1 if R1482600 == 4


generate Parentk10y1997 = 0
replace Parentk10y1997 = 1 if R1204500 < 10000

generate Parentk20y1997 = 0
replace Parentk20y1997 = 1 if R1204500 >= 10000 & R1204500 < 20000

generate Parentk50y1997 = 0
replace Parentk50y1997 = 1 if R1204500 >= 20000 & R1204500 < 50000

generate ParentkLargey1997 = 0
replace ParentkLargey1997 = 1 if R1204500 >= 50000 & R1204500 < 100000

generate ParentkXLargey1997 = 0
replace ParentkXLargey1997 = 1 if R1204500 >= 100000 & R1204500 < 200000

generate ParentkXXLargey1997 = 0
replace ParentkXXLargey1997 = 1 if R1204500 >= 200000

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

generate k10y1997 = 0
replace k10y1997 = 1 if R0490200 < 10000

generate k20y1997 = 0
replace k20y1997 = 1 if R0490200 >= 10000 & R0490200 < 20000

generate k50y1997 = 0
replace k50y1997 = 1 if R0490200 >= 20000 & R0490200 < 50000

generate kLargey1997 = 0
replace kLargey1997 = 1 if R0490200 >= 50000


generate k10y1998 = 0
replace k10y1998 = 1 if R2341200 < 10000

generate k20y1998 = 0
replace k20y1998 = 1 if R2341200 >= 10000 & R2341200 < 20000

generate k50y1998 = 0
replace k50y1998 = 1 if R2341200 >= 20000 & R2341200 < 50000

generate kLargey1998 = 0
replace kLargey1998 = 1 if R2341200 >= 50000


generate k10y1999 = 0
replace k10y1999 = 1 if R3650200 < 10000

generate k20y1999 = 0
replace k20y1999 = 1 if R3650200 >= 10000 & R3650200 < 20000

generate k50y1999 = 0
replace k50y1999 = 1 if R3650200 >= 20000 & R3650200 < 50000

generate kLargey1999 = 0
replace kLargey1999 = 1 if R3650200 >= 50000


generate k10y2000 = 0
replace k10y2000 = 1 if R5098900 < 10000

generate k20y2000= 0
replace k20y2000 = 1 if R5098900 >= 10000 & R5098900 < 20000

generate k50y2000 = 0
replace k50y2000 = 1 if R5098900 >= 20000 & R5098900 < 50000

generate kLargey2000 = 0
replace kLargey2000 = 1 if R5098900 >= 50000



generate k10y2001 = 0
replace k10y2001 = 1 if R6827500 < 10000

generate k20y2001= 0
replace k20y2001 = 1 if R6827500 >= 10000 & R6827500 < 20000

generate k50y2001 = 0
replace k50y2001 = 1 if R6827500 >= 20000 & R6827500 < 50000

generate kLargey2001 = 0
replace kLargey2001 = 1 if R6827500 >= 50000



generate k10y2002 = 0
replace k10y2002 = 1 if S1055800 < 10000

generate k20y2002= 0
replace k20y2002 = 1 if S1055800 >= 10000 & S1055800 < 20000

generate k50y2002 = 0
replace k50y2002 = 1 if S1055800 >= 20000 & S1055800 < 50000

generate kLargey2002 = 0
replace kLargey2002 = 1 if S1055800 >= 50000



generate k10y2003 = 0
replace k10y2003 = 1 if S3134600 < 10000

generate k20y2003= 0
replace k20y2003 = 1 if S3134600 >= 10000 & S3134600 < 20000

generate k50y2003 = 0
replace k50y2003 = 1 if S3134600 >= 20000 & S3134600 < 50000

generate kLargey2003 = 0
replace kLargey2003 = 1 if S3134600 >= 50000



generate k10y2004 = 0
replace k10y2004 = 1 if S4799600 < 10000

generate k20y2004= 0
replace k20y2004 = 1 if S4799600 >= 10000 & S4799600 < 20000

generate k50y2004 = 0
replace k50y2004 = 1 if S4799600 >= 20000 & S4799600 < 50000

generate kLargey2004 = 0
replace kLargey2004 = 1 if S4799600 >= 50000



generate k10y2005 = 0
replace k10y2005 = 1 if S6501000 < 10000

generate k20y2005= 0
replace k20y2005 = 1 if S6501000 >= 10000 & S6501000 < 20000

generate k50y2005 = 0
replace k50y2005 = 1 if S6501000 >= 20000 & S6501000 < 50000

generate kLargey2005 = 0
replace kLargey2005 = 1 if S6501000 >= 50000



generate k10y2006 = 0
replace k10y2006 = 1 if S8496500 < 10000

generate k20y2006= 0
replace k20y2006 = 1 if S8496500 >= 10000 & S8496500 < 20000

generate k50y2006 = 0
replace k50y2006 = 1 if S8496500 >= 20000 & S8496500 < 50000

generate kLargey2006 = 0
replace kLargey2006 = 1 if S8496500 >= 50000



generate k10y2007 = 0
replace k10y2007 = 1 if T0889800 < 10000

generate k20y2007= 0
replace k20y2007 = 1 if T0889800 >= 10000 & T0889800 < 20000

generate k50y2007 = 0
replace k50y2007 = 1 if T0889800 >= 20000 & T0889800 < 50000

generate kLargey2007 = 0
replace kLargey2007 = 1 if T0889800 >= 50000



generate k10y2008 = 0
replace k10y2008 = 1 if T3003000 < 10000

generate k20y2008= 0
replace k20y2008 = 1 if T3003000 >= 10000 & T3003000 < 20000

generate k50y2008 = 0
replace k50y2008 = 1 if T3003000 >= 20000 & T3003000 < 50000

generate kLargey2008 = 0
replace kLargey2008 = 1 if T3003000 >= 50000




generate k10y2009 = 0
replace k10y2009 = 1 if T4406000 < 10000

generate k20y2009 = 0
replace k20y2009 = 1 if T4406000 >= 10000 & T4406000 < 20000

generate k50y2009 = 0
replace k50y2009 = 1 if T4406000 >= 20000 & T4406000 < 50000

generate kLargey2009 = 0
replace kLargey2009 = 1 if T4406000 >= 50000



generate k10y2010 = 0
replace k10y2010 = 1 if T6055500 < 10000

generate k20y2010 = 0
replace k20y2010 = 1 if T6055500 >= 10000 & T6055500 < 20000

generate k50y2010 = 0
replace k50y2010 = 1 if T6055500 >= 20000 & T6055500 < 50000

generate kLargey2010 = 0
replace kLargey2010 = 1 if T6055500 >= 50000



generate k10y2011 = 0
replace k10y2011 = 1 if T7545600 < 10000

generate k20y2011 = 0
replace k20y2011 = 1 if T7545600 >= 10000 & T7545600 < 20000

generate k50y2011 = 0
replace k50y2011 = 1 if T7545600 >= 20000 & T7545600 < 50000

generate kLargey2011 = 0
replace kLargey2011 = 1 if T7545600 >= 50000



generate k10y2013 = 0
replace k10y2013 = 1 if T8976700 < 10000

generate k20y2013 = 0
replace k20y2013 = 1 if T8976700 >= 10000 & T8976700 < 20000

generate k50y2013 = 0
replace k50y2013 = 1 if T8976700 >= 20000 & T8976700 < 50000

generate kLargey2013 = 0
replace kLargey2013 = 1 if T8976700 >= 50000



generate k10y2015 = 0
replace k10y2015 = 1 if U0956900 < 10000

generate k20y2015 = 0
replace k20y2015 = 1 if U0956900 >= 10000 & U0956900 < 20000

generate k50y2015 = 0
replace k50y2015 = 1 if U0956900 >= 20000 & U0956900 < 50000

generate kLargey2015 = 0
replace kLargey2015 = 1 if U0956900 >= 50000

* NUMBER OF DIFFERENT ADDRESSES R LIVED AT

generate oneDifferentAddress1998 = 0
replace oneDifferentAddress1998 = 1 if R1490300 == 1

generate moreThanTwoAddresses1998 = 0
replace moreThanTwoAddresses1998 = 1 if R1490300 > 1


generate oneDifferentAddress1999 = 0
replace oneDifferentAddress1999 = 1 if R2733100 == 1

generate moreThanTwoAddresses1999 = 0
replace moreThanTwoAddresses1999 = 1 if R2733100 > 1


generate oneDifferentAddress2000 = 0
replace oneDifferentAddress2000 = 1 if R3994500 == 1

generate moreThanTwoAddresses2000 = 0
replace moreThanTwoAddresses2000 = 1 if R3994500 > 1



generate oneDifferentAddress2001 = 0
replace oneDifferentAddress2001 = 1 if R5663600 == 1

generate moreThanTwoAddresses2001 = 0
replace moreThanTwoAddresses2001 = 1 if R5663600 > 1



generate oneDifferentAddress2002 = 0
replace oneDifferentAddress2002 = 1 if S0014300 == 1

generate moreThanTwoAddresses2002 = 0
replace moreThanTwoAddresses2002 = 1 if S0014300 > 1



generate oneDifferentAddress2003 = 0
replace oneDifferentAddress2003 = 1 if S2082300 == 1

generate moreThanTwoAddresses2003 = 0
replace moreThanTwoAddresses2003 = 1 if S2082300 > 1



generate oneDifferentAddress2004 = 0
replace oneDifferentAddress2004 = 1 if S3876200 == 1

generate moreThanTwoAddresses2004 = 0
replace moreThanTwoAddresses2004 = 1 if S3876200 > 1



generate oneDifferentAddress2005 = 0
replace oneDifferentAddress2005 = 1 if S5466000 == 1

generate moreThanTwoAddresses2005 = 0
replace moreThanTwoAddresses2005 = 1 if S5466000 > 1



generate oneDifferentAddress2006 = 0
replace oneDifferentAddress2006 = 1 if S7569500 == 1

generate moreThanTwoAddresses2006 = 0
replace moreThanTwoAddresses2006 = 1 if S7569500 > 1



generate oneDifferentAddress2007 = 0
replace oneDifferentAddress2007 = 1 if T0054200 == 1

generate moreThanTwoAddresses2007 = 0
replace moreThanTwoAddresses2007 = 1 if T0054200 > 1



generate oneDifferentAddress2008 = 0
replace oneDifferentAddress2008 = 1 if T2034900 == 1

generate moreThanTwoAddresses2008 = 0
replace moreThanTwoAddresses2008 = 1 if T2034900 > 1

generate oneDifferentAddress2009 = 0
replace oneDifferentAddress2009 = 1 if T3635800 == 1


generate moreThanTwoAddresses2009 = 0
replace moreThanTwoAddresses2009 = 1 if T3635800 > 1



generate oneDifferentAddress2010 = 0
replace oneDifferentAddress2010 = 1 if T5233000 == 1

generate moreThanTwoAddresses2010 = 0
replace moreThanTwoAddresses2010 = 1 if T5233000 > 1


generate oneDifferentAddress2011 = 0
replace oneDifferentAddress2011 = 1 if T6685400 == 1

generate moreThanTwoAddresses2011 = 0
replace moreThanTwoAddresses2011 = 1 if T6685400 > 1



generate oneDifferentAddress2013 = 0
replace oneDifferentAddress2013 = 1 if T8158600 == 1

generate moreThanTwoAddresses2013 = 0
replace moreThanTwoAddresses2013 = 1 if T8158600 > 1

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

generate has0kids1997 = 0
replace has0kids1997 = 1 if R1211100 == 0 | R1211100 == -4

generate has1kid1997 = 0
replace has1kid1997 = 1 if R1211100 == 1

generate has2kids1997 = 0
replace has2kids1997 = 1 if R1211100 == 2

generate has3or4kids1997 = 0
replace has3or4kids1997 = 1 if R1211100 == 3| R1211100 == 4

generate hasATonOfKids1997 = 0
replace hasATonOfKids1997 = 1 if R1211100 > 4


generate has0kids1998 = 0
replace has0kids1998 = 1 if R2570100 == 0 | R2570100 == -4

generate has1kid1998 = 0
replace has1kid1998 = 1 if R2570100 == 1

generate has2kids1998 = 0
replace has2kids1998 = 1 if R2570100 == 2

generate has3or4kids1998 = 0
replace has3or4kids1998 = 1 if R2570100 == 3| R2570100 == 4

generate hasATonOfKids1998 = 0
replace hasATonOfKids1998 = 1 if R2570100 > 4


generate has0kids1999 = 0
replace has0kids1999 = 1 if R3892100 == 0 | R3892100 == -4

generate has1kid1999 = 0
replace has1kid1999 = 1 if R3892100 == 1

generate has2kids1999 = 0
replace has2kids1999 = 1 if R3892100 == 2

generate has3or4kids1999 = 0
replace has3or4kids1999 = 1 if R3892100 == 3| R3892100 == 4

generate hasATonOfKids1999 = 0
replace hasATonOfKids1999 = 1 if R3892100 > 4



generate has0kids2000 = 0
replace has0kids2000 = 1 if R5474100 == 0 | R5474100 == -4

generate has1kid2000 = 0
replace has1kid2000 = 1 if R5474100 == 1

generate has2kids2000 = 0
replace has2kids2000 = 1 if R5474100 == 2

generate has3or4kids2000 = 0
replace has3or4kids2000 = 1 if R5474100 == 3| R5474100 == 4

generate hasATonOfKids2000 = 0
replace hasATonOfKids2000 = 1 if R5474100 > 4



generate has0kids2001 = 0
replace has0kids2001 = 1 if R7237800 == 0 | R7237800 == -4

generate has1kid2001 = 0
replace has1kid2001 = 1 if R7237800 == 1

generate has2kids2001 = 0
replace has2kids2001 = 1 if R7237800 == 2

generate has3or4kids2001 = 0
replace has3or4kids2001 = 1 if R7237800 == 3| R7237800 == 4

generate hasATonOfKids2001 = 0
replace hasATonOfKids2001 = 1 if R7237800 > 4



generate has0kids2002 = 0
replace has0kids2002 = 1 if S1553100 == 0 | S1553100 == -4

generate has1kid2002 = 0
replace has1kid2002 = 1 if S1553100 == 1

generate has2kids2002 = 0
replace has2kids2002 = 1 if S1553100 == 2

generate has3or4kids2002 = 0
replace has3or4kids2002 = 1 if S1553100 == 3| S1553100 == 4

generate hasATonOfKids2002 = 0
replace hasATonOfKids2002 = 1 if S1553100 > 4



generate has0kids2003 = 0
replace has0kids2003 = 1 if S2022700 == 0 | S2022700 == -4

generate has1kid2003 = 0
replace has1kid2003 = 1 if S2022700 == 1

generate has2kids2003 = 0
replace has2kids2003 = 1 if S2022700 == 2

generate has3or4kids2003 = 0
replace has3or4kids2003 = 1 if S2022700 == 3| S2022700 == 4

generate hasATonOfKids2003 = 0
replace hasATonOfKids2003 = 1 if S2022700 > 4



generate has0kids2004 = 0
replace has0kids2004 = 1 if S3823600 == 0 | S3823600 == -4

generate has1kid2004 = 0
replace has1kid2004 = 1 if S3823600 == 1

generate has2kids2004 = 0
replace has2kids2004 = 1 if S3823600 == 2

generate has3or4kids2004 = 0
replace has3or4kids2004 = 1 if S3823600 == 3| S3823600 == 4

generate hasATonOfKids2004 = 0
replace hasATonOfKids2004 = 1 if S3823600 > 4



generate has0kids2005 = 0
replace has0kids2005 = 1 if S5423600 == 0 | S5423600 == -4

generate has1kid2005 = 0
replace has1kid2005 = 1 if S5423600 == 1

generate has2kids2005 = 0
replace has2kids2005 = 1 if S5423600 == 2

generate has3or4kids2005 = 0
replace has3or4kids2005 = 1 if S5423600 == 3| S5423600 == 4

generate hasATonOfKids2005 = 0
replace hasATonOfKids2005 = 1 if S5423600 > 4



generate has0kids2006 = 0
replace has0kids2006 = 1 if S7525700 == 0 | S7525700 == -4

generate has1kid2006 = 0
replace has1kid2006 = 1 if S7525700 == 1

generate has2kids2006 = 0
replace has2kids2006 = 1 if S7525700 == 2

generate has3or4kids2006 = 0
replace has3or4kids2006 = 1 if S7525700 == 3| S7525700 == 4

generate hasATonOfKids2006 = 0
replace hasATonOfKids2006 = 1 if S7525700 > 4



generate has0kids2007 = 0
replace has0kids2007 = 1 if T0026000 == 0 | T0026000 == -4

generate has1kid2007 = 0
replace has1kid2007 = 1 if T0026000 == 1

generate has2kids2007 = 0
replace has2kids2007 = 1 if T0026000 == 2

generate has3or4kids2007 = 0
replace has3or4kids2007 = 1 if T0026000 == 3| T0026000 == 4

generate hasATonOfKids2007 = 0
replace hasATonOfKids2007 = 1 if T0026000 > 4



generate has0kids2008 = 0
replace has0kids2008 = 1 if T2020900 == 0 | T2020900 == -4

generate has1kid2008 = 0
replace has1kid2008 = 1 if T2020900 == 1

generate has2kids2008 = 0
replace has2kids2008 = 1 if T2020900 == 2

generate has3or4kids2008 = 0
replace has3or4kids2008 = 1 if T2020900 == 3| T2020900 == 4

generate hasATonOfKids2008 = 0
replace hasATonOfKids2008 = 1 if T2020900 > 4



generate has0kids2009 = 0
replace has0kids2009 = 1 if T3611600 == 0 | T3611600 == -4

generate has1kid2009 = 0
replace has1kid2009 = 1 if T3611600 == 1

generate has2kids2009 = 0
replace has2kids2009 = 1 if T3611600 == 2

generate has3or4kids2009 = 0
replace has3or4kids2009 = 1 if T3611600 == 3| T3611600 == 4

generate hasATonOfKids2009 = 0
replace hasATonOfKids2009 = 1 if T3611600 > 4



generate has0kids2010 = 0
replace has0kids2010 = 1 if T5211700 == 0 | T5211700 == -4

generate has1kid2010 = 0
replace has1kid2010 = 1 if T5211700 == 1

generate has2kids2010 = 0
replace has2kids2010 = 1 if T5211700 == 2

generate has3or4kids2010 = 0
replace has3or4kids2010 = 1 if T5211700 == 3| T5211700 == 4

generate hasATonOfKids2010 = 0
replace hasATonOfKids2010 = 1 if T5211700 > 4



generate has0kids2011 = 0
replace has0kids2011 = 1 if T6663100 == 0 | T6663100 == -4

generate has1kid2011 = 0
replace has1kid2011 = 1 if T6663100 == 1

generate has2kids2011 = 0
replace has2kids2011 = 1 if T6663100 == 2

generate has3or4kids2011 = 0
replace has3or4kids2011 = 1 if T6663100 == 3| T6663100 == 4

generate hasATonOfKids2011 = 0
replace hasATonOfKids2011 = 1 if T6663100 > 4



generate has0kids2013 = 0
replace has0kids2013 = 1 if T8134300 == 0 | T8134300 == -4

generate has1kid2013 = 0
replace has1kid2013 = 1 if T8134300 == 1

generate has2kids2013 = 0
replace has2kids2013 = 1 if T8134300 == 2

generate has3or4kids2013 = 0
replace has3or4kids2013 = 1 if T8134300 == 3| T8134300 == 4

generate hasATonOfKids2013 = 0
replace hasATonOfKids2013 = 1 if T8134300 > 4



generate has0kids2015 = 0
replace has0kids2015 = 1 if U0014800 == 0 | U0014800 == -4

generate has1kid2015 = 0
replace has1kid2015 = 1 if U0014800 == 1

generate has2kids2015 = 0
replace has2kids2015 = 1 if U0014800 == 2

generate has3or4kids2015 = 0
replace has3or4kids2015 = 1 if U0014800 == 3| U0014800 == 4

generate hasATonOfKids2015 = 0
replace hasATonOfKids2015 = 1 if U0014800 > 4

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

generate noHighschoolDiploma2013 = 0
replace noHighschoolDiploma = 1 if T8129000 < 12

* Parents HGC

generate DadNoHS = 0
replace DadNoHS = 1 if R1302600 < 12

generate DadHS = 0
replace DadHS = 1 if R1302600 == 12

generate DadBA = 0
replace DadBA = 1 if R1302600 == 16

generate DadHE = 0
replace DadHE =1 if R1302600 > 16


generate MomNoHS = 0
replace MomNoHS = 1 if R1302700 < 12

generate MomHS = 0
replace MomHS = 1 if R1302700 == 12

generate MomBA = 0
replace MomBA = 1 if R1302700 == 16

generate MomHE = 0
replace MomHE =1 if R1302700 > 16

save DummiesData.dta, replace
