G := PSL(2,11);

StructureDescription( G );

ct := CharacterTable( G );

irr := Irr( ct );

chiV := irr[2];

chiT0 := [ [ irr[2], -5 ] ];

chiT1 := [ [ irr[3], -2 ] ];

LoadPackage( "CombinatoricsForHomalg" );

#T_1 := GradedEGModule( chiV, chiT_1 );
#T0 := GradedEGModule( chiV, chiT0 );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT0, chiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT1, chiV );
