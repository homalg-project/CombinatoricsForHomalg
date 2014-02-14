J := SmallGroup( 1500, 35 );

StructureDescription( J );

ctJ := CharacterTable( J );

IrrJ := Irr( ctJ );

chiV := IrrJ[17];

chiT0 := [ [ IrrJ[28], -2 ] ];

chiT1 := [ [ IrrJ[18], -1 ] ];

LoadPackage( "CombinatoricsForHomalg" );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT0, chiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT1, chiV );

K_1 := Kernel( T0, T1 );
