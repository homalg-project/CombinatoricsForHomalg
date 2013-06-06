G := SmallGroup( 1000, 93 );

StructureDescription( G );

V := Irr( G )[6];

LoadPackage( "CombinatoricsForHomalg" );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( [ [ Irr( G )[5], -2 ] ], V );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( [ [ Irr( G )[8], 0 ] ], V );

K_1 := Kernel( T0, T1 );
