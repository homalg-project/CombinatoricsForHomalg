G := SmallGroup( 1, 1 );

ct := CharacterTable( G );

irr := Irr( ct );

chiV := 5 * irr[1];

chiT0 := [ [ 2 * irr[1], -2 ] ];

chiT1 := [ [ 5 * irr[1], 0 ] ];

LoadPackage( "CombinatoricsForHomalg" );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT0, chiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( chiT1, chiV );
