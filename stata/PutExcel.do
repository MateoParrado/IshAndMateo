#delimit ;

set memory 50m;

do GenerateDescriptives;

putexcel set "/Descriptives.xlsx";

putexcel B1="MEN" C1="WOMEN" D1="BLACK MEN" E1="BLACK WOMEN" F1="HISPANIC MEN" G1="HISPANIC WOMEN" H1="MIXED MEN" I1="MIXED WOMEN" J1="OTHER MEN" K1="OTHER WOMEN";
