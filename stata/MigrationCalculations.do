#delimit ;

set memory 30m;

use DummiesData;

generate incomeBefore1998Move = -1;
generate incomeDuring1998Move = -1;
generate incomeAfter1998Move = -1;

replace incomeBefore1998Move = R0490200
if rDifState1998 == 1;

replace incomeDuring1998Move = R2341200
if rDifState1998 == 1;

replace incomeAfter1998Move = R3650200
if rDifState1998 == 1;


generate incomeBefore1999Move = -1;
generate incomeDuring1999Move = -1;
generate incomeAfter1999Move = -1;

replace incomeBefore1999Move = R2341200
if rDifState1999 == 1;

replace incomeDuring1999Move = R3650200
if rDifState1999 == 1;

replace incomeAfter1999Move = R5098900
if rDifState1999 == 1;


generate incomeBefore2000Move = -1;
generate incomeDuring2000Move = -1;
generate incomeAfter2000Move = -1;

replace incomeBefore2000Move = R3650200
if rDifState2000 == 1;

replace incomeDuring2000Move = R5098900
if rDifState2000 == 1;

replace incomeAfter2000Move = R6827500
if rDifState2000 == 1;


generate incomeBefore2001Move = -1;
generate incomeDuring2001Move = -1;
generate incomeAfter2001Move = -1;

replace incomeBefore2001Move = R5098900
if rDifState2001 == 1;

replace incomeDuring2001Move = R6827500
if rDifState2001 == 1;

replace incomeAfter2001Move = S1055800
if rDifState2001 == 1;


generate incomeBefore2002Move = -1;
generate incomeDuring2002Move = -1;
generate incomeAfter2002Move = -1;

replace incomeBefore2002Move = R6827500
if rDifState2002 == 1;

replace incomeDuring2002Move = S1055800
if rDifState2002 == 1;

replace incomeAfter2002Move = S3134600
if rDifState2002 == 1;


generate incomeBefore2003Move = -1;
generate incomeDuring2003Move = -1;
generate incomeAfter2003Move = -1;

replace incomeBefore2003Move = S1055800
if rDifState2003 == 1;

replace incomeDuring2003Move = S3134600
if rDifState2003 == 1;

replace incomeAfter2003Move = S4799600
if rDifState2003 == 1;


generate incomeBefore2004Move = -1;
generate incomeDuring2004Move = -1;
generate incomeAfter2004Move = -1;

replace incomeBefore2004Move = S3134600
if rDifState2004 == 1;

replace incomeDuring2004Move = S4799600
if rDifState2004 == 1;

replace incomeAfter2004Move = S6501000
if rDifState2004 == 1;


generate incomeBefore2005Move = -1;
generate incomeDuring2005Move = -1;
generate incomeAfter2005Move = -1;

replace incomeBefore2005Move = S4799600
if rDifState2005 == 1;

replace incomeDuring2005Move = S6501000
if rDifState2005 == 1;

replace incomeAfter2005Move = S8496500
if rDifState2005 == 1;


generate incomeBefore2006Move = -1;
generate incomeDuring2006Move = -1;
generate incomeAfter2006Move = -1;

replace incomeBefore2006Move = S6501000
if rDifState2006 == 1;

replace incomeDuring2006Move = S8496500
if rDifState2006 == 1;

replace incomeAfter2006Move = T0889800
if rDifState2006 == 1;


generate incomeBefore2007Move = -1;
generate incomeDuring2007Move = -1;
generate incomeAfter2007Move = -1;

replace incomeBefore2007Move = S8496500
if rDifState2007 == 1;

replace incomeDuring2007Move = T0889800
if rDifState2007 == 1;

replace incomeAfter2007Move = T3003000
if rDifState2007 == 1;


generate incomeBefore2008Move = -1;
generate incomeDuring2008Move = -1;
generate incomeAfter2008Move = -1;

replace incomeBefore2008Move = T0889800
if rDifState2008 == 1;

replace incomeDuring2008Move = T3003000
if rDifState2008 == 1;

replace incomeAfter2008Move = T4406000
if rDifState2008 == 1;


generate incomeBefore2009Move = -1;
generate incomeDuring2009Move = -1;
generate incomeAfter2009Move = -1;

replace incomeBefore2009Move = T3003000
if rDifState2009 == 1;

replace incomeDuring2009Move = T4406000
if rDifState2009 == 1;

replace incomeAfter2009Move = T6055500
if rDifState2009 == 1;


generate incomeBefore2010Move = -1;
generate incomeDuring2010Move = -1;
generate incomeAfter2010Move = -1;

replace incomeBefore2010Move = T4406000
if rDifState2010 == 1;

replace incomeDuring2010Move = T6055500
if rDifState2010 == 1;

replace incomeAfter2010Move = T7545600
if rDifState2010 == 1;


generate incomeBefore2011Move = -1;
generate incomeDuring2011Move = -1;
generate incomeAfter2011Move = -1;

replace incomeBefore2011Move = T6055500
if rDifState2011 == 1;

replace incomeDuring2011Move = T7545600
if rDifState2011 == 1;

replace incomeAfter2011Move = T8976700
if rDifState2011 == 1;


generate incomeBefore2013Move = -1;
generate incomeDuring2013Move = -1;
generate incomeAfter2013Move = -1;

replace incomeBefore2013Move = T7545600
if rDifState2013 == 1;

replace incomeDuring2013Move = T8976700
if rDifState2013 == 1;

replace incomeAfter2013Move = U0956900
if rDifState2013 == 1;

summarize;

*Migration Age

generate ageOfMigration2002 = 88;
replace ageOfMigration2002 = S1527400 - 1 if rDifState2002 == 1;

generate ageOfMigration2003 = 88;
replace ageOfMigration2003 = S3592800 - 1 if rDifState2003 == 1;

generate ageOfMigration2004 = 88;
replace ageOfMigration2004 = S4967700 - 1 if rDifState2004 == 1;

generate ageOfMigration2005 = 88;
replace ageOfMigration2005 = S6707500 - 1 if rDifState2005 == 1;

generate ageOfMigration2006 = 88;
replace ageOfMigration2006 = S8680100 - 1 if rDifState2006 == 1;

generate ageOfMigration2007 = 88;
replace ageOfMigration2007 = T1100000 - 1 if rDifState2007 == 1;

generate ageOfMigration2008 = 88;
replace ageOfMigration2008 = T3177200 - 1 if rDifState2008 == 1;

generate ageOfMigration2009 = 88;
replace ageOfMigration2009 = T4588300 - 1 if rDifState2009 == 1;

generate ageOfMigration2010 = 88;
replace ageOfMigration2010 = T6221600 - 1 if rDifState2010 == 1;

generate ageOfMigration2011 = 88;
replace ageOfMigration2011 = T7718800 - 1 if rDifState2011 == 1;

generate ageOfMigration2013 = 88;
replace ageOfMigration2013 = T9119400 - 1 if rDifState2013 == 1;

generate ageOfMigration2015 = 88;
replace ageOfMigration2015 = U1110900 - 1 if rDifState2015 == 1;

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
