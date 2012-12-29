Read( "NormalizerOfHeisenberggroup.g" );

J := N;

ctJ := CharacterTable( J );

IrrJ := Irr( ctJ );

chiV := V;

chiT0 := [ [ IrrJ[2], -2 ] ];

chiT1 := [ [ IrrJ[10], 0 ] ];

LoadPackage( "CombinatoricsForHomalg" );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT0, chiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT1, chiV );

K_1 := Kernel( T0, T1 );
