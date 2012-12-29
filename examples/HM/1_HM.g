G := SmallGroup( 1, 1 );

ctG := CharacterTable( G );

IrrG := Irr( ctG );

chi1 := IrrG[1];

chiV := 5 * chi1;

K_1 := [ [ 2 * chi1, -2 ], [ 10 * chi1, -1 ], [ 15 * chi1, 0 ], [ 5 * chi1, 1 ] ];

LoadPackage( "CombinatoricsForHomalg" );

K_1 := ElementOfGradedRelativeGrothendieckRingOfGroup( K_1, chiV );
