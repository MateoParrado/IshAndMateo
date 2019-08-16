#delimit ;

set memory 30m;

use DummiesData;

*black is 0, latino is 1, mixed is 3, other is 4;

generate race = 0;
replace race = 1 if R1482600 == 2;
replace race= 2 if R1482600 == 3;
replace race= 3 if R1482600 == 4;

*black man is 0 black woman is 1 latino man is 2 latino woman is 3 other man is 4 other woman is 5;

generate raceGen = 0;
replace raceGen = 1 if R1482600 == 1 & R0536300 == 2;
replace raceGen = 2 if R1482600 == 2 & R0536300 == 1;
replace raceGen = 3 if R1482600 == 2 & R0536300 == 2;
replace raceGen = 4 if R1482600 == 4 & R0536300 == 1;
replace raceGen = 5 if R1482600 == 4 & R0536300 == 2;
***;

generate test8 = 0;
replace test8 = 1 if 1 == 1;

generate incomeBefore1998Move = .;

replace test8 = 2 if 1 == 1;

generate incomeDuring1998Move = .;

replace test8 = 3 if 1 == 1;

generate incomeAfter1998Move = .;

replace test8 = 4 if 1 == 1;

replace incomeBefore1998Move = 0 if R0490200 == -4;
replace incomeBefore1998Move = R0490200
if rDifState1998 == 1 & R0490200 >= 0;

replace incomeBefore1998Move = 0 if R0490200 == -4;
replace incomeDuring1998Move = R2341200
if rDifState1998 == 1 & R0490200 >= 0;

replace incomeBefore1998Move = 0 if R0490200 == -4;
replace incomeAfter1998Move = R3650200
if rDifState1998 == 1 & R0490200 >= 0;


generate incomeBefore1999Move = .;
generate incomeDuring1999Move = .;
generate incomeAfter1999Move = .;

replace incomeBefore1999Move = 0 if R2341200 == -4;
replace incomeBefore1999Move = R2341200
if rDifState1999 == 1 & R2341200 >= 0;

replace incomeBefore1999Move = 0 if R3650200 == -4;
replace incomeDuring1999Move = R3650200
if rDifState1999 == 1 & R3650200 >= 0;

replace incomeBefore1999Move = 0 if R5098900 == -4;
replace incomeAfter1999Move = R5098900
if rDifState1999 == 1 & R5098900 >= 0;


generate incomeBefore2000Move = .;
generate incomeDuring2000Move = .;
generate incomeAfter2000Move = .;

replace incomeBefore2000Move = 0 if R3650200 == -4;
replace incomeBefore2000Move = R3650200
if rDifState2000 == 1 & R3650200 >= 0;

replace incomeBefore2000Move = 0 if R5098900 == -4;
replace incomeDuring2000Move = R5098900
if rDifState2000 == 1 & R5098900 >= 0;

replace incomeBefore2000Move = 0 if R6827500 == -4;
replace incomeAfter2000Move = R6827500
if rDifState2000 == 1 & R6827500 >= 0;


generate incomeBefore2001Move = .;
generate incomeDuring2001Move = .;
generate incomeAfter2001Move = .;

replace incomeBefore2001Move = 0 if R5098900 == -4;
replace incomeBefore2001Move = R5098900
if rDifState2001 == 1 & R5098900 >= 0;

replace incomeBefore2001Move = 0 if R6827500 == -4;
replace incomeDuring2001Move = R6827500
if rDifState2001 == 1 & R6827500 >= 0;

replace incomeBefore2001Move = 0 if S1055800 == -4;
replace incomeAfter2001Move = S1055800
if rDifState2001 == 1 & S1055800 >= 0;


generate incomeBefore2002Move = .;
generate incomeDuring2002Move = .;
generate incomeAfter2002Move = .;

replace incomeBefore2002Move = 0 if R6827500 == -4;
replace incomeBefore2002Move = R6827500
if rDifState2002 == 1 & R6827500 >= 0;

replace incomeBefore2002Move = 0 if S1055800 == -4;
replace incomeDuring2002Move = S1055800
if rDifState2002 == 1 & S1055800 >= 0;

replace incomeBefore2002Move = 0 if S3134600 == -4;
replace incomeAfter2002Move = S3134600
if rDifState2002 == 1 & S3134600 >= 0;


generate incomeBefore2003Move = .;
generate incomeDuring2003Move = .;
generate incomeAfter2003Move = .;

replace incomeBefore2003Move = 0 if S1055800 == -4;
replace incomeBefore2003Move = S1055800
if rDifState2003 == 1 & S1055800 >= 0;

replace incomeBefore2003Move = 0 if S3134600 == -4;
replace incomeDuring2003Move = S3134600
if rDifState2003 == 1 & S3134600 >= 0;

replace incomeBefore2003Move = 0 if S4799600 == -4;
replace incomeAfter2003Move = S4799600
if rDifState2003 == 1 & S4799600 >= 0;


generate incomeBefore2004Move = .;
generate incomeDuring2004Move = .;
generate incomeAfter2004Move = .;

replace incomeBefore2004Move = 0 if S3134600 == -4;
replace incomeBefore2004Move = S3134600
if rDifState2004 == 1 & S3134600 >= 0;

replace incomeBefore2004Move = 0 if S3134600 == -4;
replace incomeDuring2004Move = S3134600
if rDifState2004 == 1 & S3134600 >= 0;

replace incomeBefore2004Move = 0 if S6501000 == -4;
replace incomeAfter2004Move = S6501000
if rDifState2004 == 1 & S6501000 >= 0;


generate incomeBefore2005Move = .;
generate incomeDuring2005Move = .;
generate incomeAfter2005Move = .;

replace incomeBefore2005Move = 0 if S4799600 == -4;
replace incomeBefore2005Move = S4799600
if rDifState2005 == 1 & S4799600 >= 0;

replace incomeBefore2005Move = 0 if S6501000 == -4;
replace incomeDuring2005Move = S6501000
if rDifState2005 == 1 & S6501000 >= 0;

replace incomeBefore2005Move = 0 if S8496500 == -4;
replace incomeAfter2005Move = S8496500
if rDifState2005 == 1 & S8496500 >= 0;


generate incomeBefore2006Move = .;
generate incomeDuring2006Move = .;
generate incomeAfter2006Move = .;

replace incomeBefore2006Move = 0 if S6501000 == -4;
replace incomeBefore2006Move = S6501000
if rDifState2006 == 1 & S6501000 >= 0;

replace incomeBefore2006Move = 0 if S8496500 == -4;
replace incomeDuring2006Move = S8496500
if rDifState2006 == 1 & S8496500 >= 0;

replace incomeBefore2006Move = 0 if T0889800 == -4;
replace incomeAfter2006Move = T0889800
if rDifState2006 == 1 & T0889800 >= 0;


generate incomeBefore2007Move = .;
generate incomeDuring2007Move = .;
generate incomeAfter2007Move = .;

replace incomeBefore2007Move = 0 if S8496500 == -4;
replace incomeBefore2007Move = S8496500
if rDifState2007 == 1 & S8496500 >= 0;

replace incomeBefore2007Move = 0 if T0889800 == -4;
replace incomeDuring2007Move = T0889800
if rDifState2007 == 1 & T0889800 >= 0;

replace incomeBefore2007Move = 0 if T3003000 == -4;
replace incomeAfter2007Move = T3003000
if rDifState2007 == 1 & T3003000 >= 0;


generate incomeBefore2008Move = .;
generate incomeDuring2008Move = .;
generate incomeAfter2008Move = .;

replace incomeBefore2008Move = 0 if T0889800 == -4;
replace incomeBefore2008Move = T0889800
if rDifState2008 == 1 & T0889800 >= 0;

replace incomeBefore2008Move = 0 if T3003000 == -4;
replace incomeDuring2008Move = T3003000
if rDifState2008 == 1 & T3003000 >= 0;

replace incomeBefore2008Move = 0 if T4406000 == -4;
replace incomeAfter2008Move = T4406000
if rDifState2008 == 1 & T4406000 >= 0;


generate incomeBefore2009Move = .;
generate incomeDuring2009Move = .;
generate incomeAfter2009Move = .;

replace incomeBefore2009Move = 0 if T3003000 == -4;
replace incomeBefore2009Move = T3003000
if rDifState2009 == 1 & T3003000 >= 0;

replace incomeBefore2009Move = 0 if T4406000 == -4;
replace incomeDuring2009Move = T4406000
if rDifState2009 == 1 & T4406000 >= 0;

replace incomeBefore2009Move = 0 if T6055500 == -4;
replace incomeAfter2009Move = T6055500
if rDifState2009 == 1 & T6055500 >= 0;


generate incomeBefore2010Move = .;
generate incomeDuring2010Move = .;
generate incomeAfter2010Move = .;

replace incomeBefore2010Move = 0 if T4406000 == -4;
replace incomeBefore2010Move = T4406000
if rDifState2010 == 1 & T4406000 >= 0;

replace incomeBefore2010Move = 0 if T6055500 == -4;
replace incomeDuring2010Move = T6055500
if rDifState2010 == 1 & T6055500 >= 0;

replace incomeBefore2010Move = 0 if T7545600 == -4;
replace incomeAfter2010Move = T7545600
if rDifState2010 == 1 & T7545600 >= 0;


generate incomeBefore2011Move = .;
generate incomeDuring2011Move = .;
generate incomeAfter2011Move = .;

replace incomeBefore2011Move = 0 if T6055500 == -4;
replace incomeBefore2011Move = T6055500
if rDifState2011 == 1 & T6055500 >= 0;

replace incomeBefore2011Move = 0 if T7545600 == -4;
replace incomeDuring2011Move = T7545600
if rDifState2011 == 1 & T7545600 >= 0;

replace incomeBefore2011Move = 0 if T8976700 == -4;
replace incomeAfter2011Move = T8976700
if rDifState2011 == 1 & T8976700 >= 0;


generate incomeBefore2013Move = .;
generate incomeDuring2013Move = .;
generate incomeAfter2013Move = .;

replace incomeBefore2013Move = 0 if T7545600 == -4;
replace incomeBefore2013Move = T7545600
if rDifState2013 == 1 & T7545600 >= 0;

replace incomeDuring2013Move = 0 if T8976700 == -4;
replace incomeDuring2013Move = T8976700
if rDifState2013 == 1 & T8976700 >= 0;

replace incomeAfter2013Move = 0 if U0956900 == -4;
replace incomeAfter2013Move = U0956900
if rDifState2013 == 1 & U0956900 >= 0;

generate test = 0;
replace test = 1 if 1==1;

summarize;

*Migration Age
replace test = 2 if 1 == 1;

generate ageOfMigration2002 = 88;
replace ageOfMigration2002 = . if S1527400 < 0;
replace ageOfMigration2002 = S1527400 - 1 if S1527400 > 0 & rDifState2002 == 1;

generate ageOfMigration2003 = 88;
replace ageOfMigration2003 = . if S3592800 < 0;
replace ageOfMigration2003 = S3592800 - 1 if S3592800 > 0 &  rDifState2003 == 1;

generate ageOfMigration2004 = 88;
replace ageOfMigration2004 = . if S4967700 < 0;
replace ageOfMigration2004 = S4967700 - 1 if S4967700 > 0 &  rDifState2004 == 1;

generate ageOfMigration2005 = 88;
replace ageOfMigration2005 = . if S6707500 < 0;
replace ageOfMigration2005 = S6707500 - 1 if S6707500 > 0 &  rDifState2005 == 1;

generate ageOfMigration2006 = 88;
replace ageOfMigration2006 = . if S8680100 < 0;
replace ageOfMigration2006 = S8680100 - 1 if S8680100 > 0 &  rDifState2006 == 1;

generate ageOfMigration2007 = 88;
replace ageOfMigration2007 = . if T1100000 < 0;
replace ageOfMigration2007 = T1100000 - 1 if T1100000 > 0 &  rDifState2007 == 1;

generate ageOfMigration2008 = 88;
replace ageOfMigration2008 = . if T3177200 < 0;
replace ageOfMigration2008 = T3177200 - 1 if T3177200 > 0 &  rDifState2008 == 1;

generate ageOfMigration2009 = 88;
replace ageOfMigration2009 = . if T4588300 < 0;
replace ageOfMigration2009 = T4588300 - 1 if T4588300 > 0 &  rDifState2009 == 1;

generate ageOfMigration2010 = 88;
replace ageOfMigration2010 = . if T6221600 < 0;
replace ageOfMigration2010 = T6221600 - 1 if T6221600 > 0 & rDifState2010 == 1;

generate ageOfMigration2011 = 88;
replace ageOfMigration2011 = . if T7718800 < 0;
replace ageOfMigration2011 = T7718800 - 1 if T7718800 > 0 &  rDifState2011 == 1;

generate ageOfMigration2013 = 88;
replace ageOfMigration2013 = . if T9119400 < 0;
replace ageOfMigration2013 = T9119400 - 1 if T9119400 > 0 &  rDifState2013 == 1;

generate ageOfMigration2015 = 88;
replace ageOfMigration2015 = . if U1110900 < 0;
replace ageOfMigration2015 = U1110900 - 1 if U1110900 > 0 &  rDifState2015 == 1;

tab ageOfMigration2002;
tab ageOfMigration2003;
tab ageOfMigration2004;
tab ageOfMigration2005;
tab ageOfMigration2006;
tab ageOfMigration2007;
tab ageOfMigration2008;
tab ageOfMigration2009;
tab ageOfMigration2010;
tab ageOfMigration2011;
tab ageOfMigration2013;
tab ageOfMigration2015;

* TOTAL STATS;
generate test2 = 0;
replace test2 = 1 if 1 == 1;

generate everMoved = 0;
generate totalMoves = 0;

replace test2 = 2 if 1 == 1;

replace everMoved = 1 if rDifState1998 == 1;
replace totalMoves = totalMoves + 1 if rDifState1998 == 1;
replace everMoved = 1 if rDifState1999 == 1;
replace totalMoves = totalMoves + 1 if rDifState1999 == 1;
replace everMoved = 1 if rDifState2000 == 1;
replace totalMoves = totalMoves + 1 if rDifState2000 == 1;
replace everMoved = 1 if rDifState2001 == 1;
replace totalMoves = totalMoves + 1 if rDifState2001 == 1;
replace everMoved = 1 if rDifState2002 == 1;
replace totalMoves = totalMoves + 1 if rDifState2002 == 1;
replace everMoved = 1 if rDifState2003 == 1;
replace totalMoves = totalMoves + 1 if rDifState2003 == 1;
replace everMoved = 1 if rDifState2004 == 1;
replace totalMoves = totalMoves + 1 if rDifState2004 == 1;
replace everMoved = 1 if rDifState2005 == 1;
replace totalMoves = totalMoves + 1 if rDifState2005 == 1;
replace everMoved = 1 if rDifState2006 == 1;
replace totalMoves = totalMoves + 1 if rDifState2006 == 1;
replace everMoved = 1 if rDifState2007 == 1;
replace totalMoves = totalMoves + 1 if rDifState2007 == 1;
replace everMoved = 1 if rDifState2008 == 1;
replace totalMoves = totalMoves + 1 if rDifState2008 == 1;
replace everMoved = 1 if rDifState2009 == 1;
replace totalMoves = totalMoves + 1 if rDifState2009 == 1;
replace everMoved = 1 if rDifState2010 == 1;
replace totalMoves = totalMoves + 1 if rDifState2010 == 1;
replace everMoved = 1 if rDifState2011 == 1;
replace totalMoves = totalMoves + 1 if rDifState2011 == 1;
replace everMoved = 1 if rDifState2013 == 1;
replace totalMoves = totalMoves + 1 if rDifState2013 == 1;
replace everMoved = 1 if rDifState2015 == 1;
replace totalMoves = totalMoves + 1 if rDifState2015 == 1;



save MigrationCalculations.dta, replace;
