do MigrationCalculations.do

generate income2015 = U0956900

generate feMove = everMoved*isFemale

keep if income2015 >= 1000

regress income2015 everMoved isFemale feMove


generate blackMove = everMoved*isBlack

regress income2015 everMoved isBlack blackMove



generate hispanicMove = everMoved*isHispanic

regress income2015 everMoved isHispanic hispanicMove

*Other = white + asian

generate otherMove = everMoved*isOther

regress income2015 everMoved isHispanic hispanicMove


generate HSMove = everMoved*hasHighschoolDiploma2013

regress income2015 everMoved hasHighschoolDiploma2013 HSMove


generate USbornMove = everMoved*USBorn

regress income2015 everMoved USBorn USbornMove


generate thirty = U111 == 30
generate thirtyone = U111 == 31
generate thirtytwo = U111 == 32
generate thirtythree = U111 == 33
generate thirtyfour = U111 == 34
generate thirtyfive = U111 == 35
generate thirtysix = U111 == 36

generate thirtyMove = thirty*everMoved
generate thirtyoneMove = thirtyone*everMoved
generate thirtytwoMove = thirtytwo*everMoved
generate thirtythreeMove = thirtythree*everMoved
generate thirtyfourMove = thirtyfour*everMoved
generate thirtyfiveMove = thirtyfive*everMoved
generate thirtysixMove = thirtysix*everMoved

regress income2015 everMoved thirty thirtyMove
regress income2015 everMoved thirtyone thirtyoneMove
regress income2015 everMoved thirtytwo thirtytwoMove
regress income2015 everMoved thirtythree thirtythreeMove
regress income2015 everMoved thirtyfour thirtyfourMove
regress income2015 everMoved thirtyfive thirtyfiveMove
regress income2015 everMoved thirtysix thirtysixMove

