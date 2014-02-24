LoadPackage( "CombinatoricsForHomalg" );

K0 := ElementOfGradedRelativeRing( [ [ 3, -1 ], [ 10, 0 ], [ 5, 1 ], [ 1, 2 ] ], 5 );
Assert( 0, IsZero( ProjectiveInjectiveSaturation( K0 ) - K0 ) );
Assert( 0, IsZero( InjectiveProjectiveSaturation( K0 ) - K0 ) );
chi := HilbertPolynomial_ViaCombinatorialResolution( K0 );
Assert( 0, IsNumerical( chi ) );
