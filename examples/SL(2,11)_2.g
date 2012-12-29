G := SL(2,11);

StructureDescription( G );

ct := CharacterTable( G );

irr := Irr( ct );

chiV := irr[2];

chiT0 := [ [ irr[4]+irr[9], -2 ] ];

chiT1 := [ [ irr[9], -1 ] ];

LoadPackage( "CombinatoricsForHomalg" );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT0, chiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT1, chiV );

K_1 := Kernel( T0, T1 );
