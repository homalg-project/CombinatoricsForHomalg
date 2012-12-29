Read( "NormalizerOfHeisenberggroup.g" );

G := N;

ctG := CharacterTable( G );

IrrG := Irr( ctG );

chiV := V;

chiT0 := [ [ IrrG[2], -2 ] ];

chiT1 := [ [ IrrG[10], 0 ] ];

M := NormalSubgroups( G );

H := M[3];

StructureDescription( H );

W := MaximalSubgroupClassReps( G )[1];

StructureDescription( W );

U := MaximalSubgroupClassReps( W )[3];

StructureDescription( U );

ctU := CharacterTable( U );

psiV := RestrictedClassFunction( chiV, U );

psiT0 := [ [ RestrictedClassFunction( IrrG[2], U ), -2 ] ];

psiT1 := [ [ RestrictedClassFunction( IrrG[10], U ), 0 ] ];

LoadPackage( "CombinatoricsForHomalg" );

T0 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( psiT0, psiV );
T1 := FreeElementOfGradedRelativeGrothendieckRingOfGroup( psiT1, psiV );

K_1 := Kernel( T0, T1 );
