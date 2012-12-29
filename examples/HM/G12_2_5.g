G := SmallGroup( 1500, 35 );

StructureDescription( G );

ctG := CharacterTable( G );

IrrG := Irr( ctG );

chiV := IrrG[17];

chiT0 := [ [ IrrG[6], -2 ] ];

chiT1 := [ [ IrrG[18], 0 ] ];

M := NormalSubgroups( G );

H := M[5];

StructureDescription( H );

U := ComplementClassesRepresentatives( G, H )[1];

StructureDescription( U );

ctU := CharacterTable( U );

psiV := RestrictedClassFunction( chiV, U );

psiT0 := [ [ RestrictedClassFunction( IrrG[6], U ), -2 ] ];

psiT1 := [ [ RestrictedClassFunction( IrrG[18], U ), 0 ] ];

LoadPackage( "CombinatoricsForHomalg" );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( psiT0, psiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( psiT1, psiV );

K_1 := Kernel( T0, T1 );
