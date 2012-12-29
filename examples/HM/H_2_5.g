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

ctH := CharacterTable( H );

psiV := RestrictedClassFunction( chiV, H );

psiT0 := [ [ RestrictedClassFunction( IrrG[6], H ), -2 ] ];

psiT1 := [ [ RestrictedClassFunction( IrrG[18], H ), 0 ] ];

LoadPackage( "CombinatoricsForHomalg" );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( psiT0, psiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( psiT1, psiV );

K_1 := Kernel( T0, T1 );
