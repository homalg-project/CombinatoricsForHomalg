J := SmallGroup( 1500, 35 );

StructureDescription( J );

ctJ := CharacterTable( J );

IrrJ := Irr( ctJ );

chiV := IrrJ[17];

chiT0 := [ [ IrrJ[28], -2 ] ];

chiT1 := [ [ IrrJ[18], -1 ] ];

LoadPackage( "CombinatoricsForHomalg" );

#T_1 := GradedEGModule( chiV, chiT_1 );
#T0 := GradedEGModule( chiV, chiT0 );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT0, chiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT1, chiV );
