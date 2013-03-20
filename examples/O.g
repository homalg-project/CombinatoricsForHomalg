## gap> InjectiveHull( SyzygyObject( 3, N ) );		## no sections
## <10*x^-6> -> P^3
## gap> InjectiveHull( SyzygyObject( 2, N ) );		## no sections
## <4*x^-5> -> P^3
## gap> InjectiveHull( SyzygyObject( 1, N ) );		## no sections
## <x^-4> -> P^3
## gap> InjectiveHull( CosyzygyObject( 0, N ) );	## 1 section
## <1> -> P^3
## gap> InjectiveHull( CosyzygyObject( 1, N ) );	## 4 sections
## <4*x> -> P^3
## gap> InjectiveHull( CosyzygyObject( 2, N ) );	## 10 sections
## <10*x^2> -> P^3
## gap> InjectiveHull( CosyzygyObject( 3, N ) );	## 20 sections
## <20*x^3> -> P^3

chiV := 4;

chiT := rec( );

chiT.(-1) := [ [ 1, -4 ] ];

chiT.(0) := [ [ 1, 0 ] ];

LoadPackage( "CombinatoricsForHomalg" );

T := rec( );

T.(-1) := FreeElementOfGradedRelativeRing( chiT.(-1), chiV );
T.(0) := FreeElementOfGradedRelativeRing( chiT.(0), chiV );

N := SyzygyObject( 1, Cokernel( T.(-1), T.(0) ) );	## this is the image
