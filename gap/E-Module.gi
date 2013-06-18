####################################
#
# representations:
#
####################################

DeclareRepresentation( "IsElementOfGradedRingRep",
        IsElementOfGrothendieckGroup and IsHomalgRingElement,
        [ ] );

DeclareRepresentation( "IsElementOfGradedRelativeRingRep",
        IsElementOfGrothendieckGroup and IsHomalgRingElement,
        [ ] );

####################################
#
# families and types:
#
####################################

# types:
BindGlobal( "TheTypeElementOfGradedRing",
        NewType( TheFamilyOfCombinatorialPolynomials,
                IsElementOfGradedRingRep ) );

BindGlobal( "TheTypeElementOfGradedRelativeRing",
        NewType( TheFamilyOfCombinatorialPolynomials,
                IsElementOfGradedRelativeRingRep ) );

####################################
#
# methods for properties:
#
####################################

##
InstallMethod( IsEquiDegree,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( chi )
    
    return Length( EvalRingElement( chi ) ) < 2;
    
end );

##
InstallMethod( IsEquiDegree,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return IsEquiDegree( Socle( ProjectiveCover( chi ) ) );
    
end );

####################################
#
# methods for attributes:
#
####################################

##
InstallMethod( Dimension,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( chi )
    
    if IsZero( chi ) then
        return 0;
    fi;
    
    chi := EvalRingElement( chi );
    
    if Length( chi ) <> 1 then
        Error( "the character is not concentrated one degree\n" );
    fi;
    
    return chi[1][1];
    
end );

##
InstallMethod( UnderlyingPolynomial,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( chi )
    local x;
    
    x := VariableForGrothendieckHilbertSeries( );
    
    return Sum( EvalRingElement( chi ), a -> a[1] * x^a[2]  );
    
end );

##
InstallMethod( PositivePart,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( chi )
    
    chi := List( EvalRingElement( chi ), a -> [ Maximum( a[1], 0 ), a[2] ]  );
    
    return ElementOfGradedRing( chi );
    
end );

##
InstallMethod( NegativePart,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],

  function( chi )

    return PositivePart( -chi );

end );

##
InstallMethod( IsPure,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],

  function( chi )

    return  ( chi = -NegativePart( chi ) ) or ( chi = PositivePart( chi ) );

end );

##
InstallMethod( UnderlyingPolynomial,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return UnderlyingPolynomial( HomogeneousParts( chi ) );
    
end );

##
InstallMethod( DualOfBaseSpace,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    chi := EvalRingElement( BaseSpace( chi ) );
    
    return ElementOfGradedRing( [ [ chi[1][1], -chi[1][2] ] ], IsEquiDegree );
    
end );

##
InstallMethod( TipOfModule,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( chi )
    local coeffs;
    
    if IsZero( chi ) then
        return chi;
    fi;
    
    coeffs := EvalRingElement( chi );
    
    return chi!.ElementOfGradedRing( [ coeffs[Length( coeffs )] ] );
    
end );

##
InstallMethod( TipOfModule,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return TipOfModule( HomogeneousParts( chi ) );
    
end );

##
InstallMethod( BottomOfModule,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( chi )
    local coeffs;
    
    if IsZero( chi ) then
        return chi;
    fi;
    
    coeffs := EvalRingElement( chi );
    
    return chi!.ElementOfGradedRing( [ coeffs[1] ] );
    
end );

##
InstallMethod( BottomOfModule,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return BottomOfModule( HomogeneousParts( chi ) );
    
end );

##
InstallMethod( ExteriorPowers,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep and IsEquiDegree ],
        
  function( chi )
    
    return Sum( [ 0 .. Dimension( chi ) ], e -> ExteriorPower( chi, e ) );
    
end );

##
InstallMethod( Dimension,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return Dimension( BaseSpace( chi ) ) - 1;
    
end );

##
InstallMethod( DualOfExteriorPowersOfBaseSpace,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local chiV, d, chiW;
    
    chiV := BaseSpace( chi );
    
    d := Dimension( chiV );
    
    chiW := DualOfBaseSpace( chi );
    
    return ExteriorPower( chiW, d ) * ExteriorPowers( chiV );
    
end );

##
InstallMethod( HomogeneousParts,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  function( chi )
    
    return DualOfExteriorPowersOfBaseSpace( chi ) * Socle( chi );
    
end );

##
InstallMethod( PositivePart,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return chi!.ElementOfGradedRelativeRing(
                   PositivePart( HomogeneousParts( chi ) ),
                   BaseSpace( chi ) );
    
end );

##
InstallMethod( NegativePart,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],

  function( chi )

    return PositivePart( -chi );

end );

##
InstallMethod( IsPure,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],

  function( chi )

    return  ( chi = -NegativePart( chi ) ) or ( chi = PositivePart( chi ) );

end );

##
InstallMethod( DeterminantOfBaseSpace,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return ExteriorPower( BaseSpace( chi ), Dimension( chi ) + 1 );
    
end );

##
InstallMethod( ProjectiveCoverOfTip,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local chiV, det, tip;
    
    chiV := BaseSpace( chi );
    
    det := DeterminantOfBaseSpace( chi );
    
    tip := TipOfModule( chi );
    
    return chi!.FreeElementOfGradedRelativeRing( det * tip, chiV );
    
end );

##
InstallMethod( ProjectiveCover,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local projective_cover_of_tip, projective;
    
    chi := PositivePart( chi );
    
    projective_cover_of_tip := ProjectiveCoverOfTip( chi );
    
    chi := PositivePart( chi - projective_cover_of_tip );
    
    projective := projective_cover_of_tip;
    
    while not IsZero( chi ) do
        
        projective_cover_of_tip := ProjectiveCoverOfTip( chi );
        
        chi := PositivePart( chi - projective_cover_of_tip );
        
        projective := projective_cover_of_tip + projective;
        
    od;
    
    return projective;
    
end );

##
InstallMethod( ProjectiveCover,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  IdFunc );

##
InstallMethod( InjectiveHullOfBottom,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local chiV, bottom;
    
    chiV := BaseSpace( chi );
    
    bottom := BottomOfModule( chi );
    
    return chi!.FreeElementOfGradedRelativeRing( bottom, chiV );
    
end );

##
InstallMethod( InjectiveHull,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local injective_hull_of_bottom, injective;
    
    chi := PositivePart( chi );
    
    injective_hull_of_bottom := InjectiveHullOfBottom( chi );
    
    chi := PositivePart( chi - injective_hull_of_bottom );
    
    injective := injective_hull_of_bottom;
    
    while not IsZero( chi ) do
        
        injective_hull_of_bottom := InjectiveHullOfBottom( chi );
        
        chi := PositivePart( chi - injective_hull_of_bottom );
        
        injective := injective_hull_of_bottom + injective;
        
    od;
    
    return injective;
    
end );

##
InstallMethod( InjectiveHull,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  IdFunc );

##
InstallMethod( InjectiveProjectiveSaturation,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep  ],
        
  function( chi )
    local psi;
    
    psi := ProjectiveCover( chi ) - chi;
    
    return InjectiveHull( psi ) - psi;
    
end );

##
InstallMethod( ProjectiveInjectiveSaturation,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep  ],
        
  function( chi )
    local psi;
    
    psi := InjectiveHull( chi ) - chi;
    
    return ProjectiveCover( psi ) - psi;
    
end );

####################################
#
# methods for operations:
#
####################################

##
InstallMethod( ExteriorPower,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep and IsEquiDegree, IsInt ],
        
  function( chi, e )
    
    if IsZero( chi ) then
        return chi;
    elif e = 0 then
        return chi^0;
    fi;
    
    chi := EvalRingElement( chi );
    
    if Length( chi ) <> 1 then
        Error( "the character is not concentrated one degree\n" );
    fi;
    
    chi := chi[1];
    
    chi := [ [ Binomial( chi[1], e ), e * chi[2] ] ];
    
    return ElementOfGradedRing( chi );
    
end );

##
InstallMethod( Cokernel,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep,
          IsElementOfGradedRelativeRingRep ],
        
  function( chi, psi )
    
    return PositivePart( psi - chi );
    
end );

##
InstallMethod( Kernel,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep,
          IsElementOfGradedRelativeRingRep ],
        
  function( chi, psi )
    
    return PositivePart( chi - psi );
    
end );

##
InstallMethod( SyzygyObject,
        "for an integer and an element of a graded relative ring",
        [ IsInt, IsElementOfGradedRelativeRingRep ],
        
  function( i, chi )
    local j, P;
    
    if i < 0 then
        return CosyzygyObject( -i, chi );
    fi;
    
    for j in [ 1 .. i ] do
        
        P := ProjectiveCover( chi );
        
        chi := Kernel( P, chi );
        
    od;
    
    return chi;
    
end );

##
InstallMethod( CosyzygyObject,
        "for an integer and an element of a graded relative ring",
        [ IsInt, IsElementOfGradedRelativeRingRep ],
        
  function( i, chi )
    local j, I;
    
    if i < 0 then
        return SyzygyObject( -i, chi );
    fi;
    
    for j in [ 1 .. i ] do
        
        I := InjectiveHull( chi );
        
        chi := Cokernel( chi, I );
        
    od;
    
    return chi;
    
end );

####################################
#
# constructors:
#
####################################

##
InstallGlobalFunction( VariableForGrothendieckHilbertSeries,
  function( arg )
    local x;
    
    if not IsBound( HOMALG_MODULES.variable_for__Hilbert_series ) then
        
        if Length( arg ) > 0 and IsString( arg[1] ) then
            x := arg[1];
        else
            x := "x";
        fi;
        
        x := Indeterminate( Rationals, x );
        
        HOMALG_MODULES.variable_for__Hilbert_series := x;
    fi;
    
    return HOMALG_MODULES.variable_for__Hilbert_series;
    
end );

##
InstallGlobalFunction( ElementOfGradedRing,
  function( arg )
    local nargs, properties, ar, ring, graded_elm, r;
        
    nargs := Length( arg );
    
    if nargs = 0 then
        Error( "empty input\n" );
    fi;
    
    properties := [ ];
    
    for ar in arg{[ 2 .. nargs ]} do
        if not IsBound( ring ) and IsHomalgInternalRingRep( ar ) then
            ring := ar;
        elif IsFilter( ar ) then
            Add( properties, ar );
        else
            Error( "this argument (now assigned to ar) should be in { IsHomalgInternalRingRep, IsFilter }\n" );
        fi;
    od;
    
    graded_elm := ShallowCopy( arg[1] );
    
    if not IsBound( ring ) then
        ring := HOMALG_MATRICES.ZZ;
    fi;
    
    r := rec( ring := ring,
              ElementOfGradedRing :=
              ElementOfGradedRing );
    
    Sort( graded_elm, function( a, b ) return a[2] < b[2]; end );
    
    graded_elm :=
      List( Set( List( graded_elm, a -> a[2] ) ),
        i -> [ Sum( List( Filtered( graded_elm, a -> a[2] = i ), b -> b[1] ) ), i ]
        );
    
    graded_elm :=
      Filtered( graded_elm, a -> not IsZero( a[1] ) );
    
    ## Objectify:
    ObjectifyWithAttributes(
            r, TheTypeElementOfGradedRing,
            EvalRingElement, graded_elm );
    
    if graded_elm = [ ] then
        SetIsZero( r, true );
    fi;
    
    if properties <> [ ] then
        for ar in properties do
            Setter( ar )( r, true );
        od;
    fi;
    
    return r;
    
end );

##
InstallMethod( \=,
        "for two elements of a graded ring",
        [ IsElementOfGradedRingRep,
          IsElementOfGradedRingRep ],
        
  function( a, b )
    
    return EvalRingElement( a ) = EvalRingElement( b );
    
end );

##
InstallMethod( Zero,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( a )
    
    return a!.ElementOfGradedRing(
                   [ ], a!.ring, IsZero );
    
end );

##
InstallMethod( \+,
        "for two elements of a graded ring",
        [ IsElementOfGradedRingRep,
          IsElementOfGradedRingRep ],
        
  function( a, b )
    
    return a!.ElementOfGradedRing(
                   Concatenation( EvalRingElement( a ), EvalRingElement( b ) ) );
    
end );

##
InstallMethod( AdditiveInverse,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( a )
    
    return a!.ElementOfGradedRing(
                   List( EvalRingElement( a ), i -> [ -i[1], i[2] ] ) );
    
end );

##
InstallMethod( One,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( a )
    
    return ElementOfGradedRing(
                   [ [ 1, 0 ] ], a!.ring, IsOne );
    
end );

##
InstallMethod( POW,
        "for an element of a graded ring and an integer",
        [ IsElementOfGradedRingRep,
          IsInt and IsZero ],
        
  function( a, e )
    
    return One( a );
    
end );

##
InstallMethod( \*,
        "for two elements of a graded ring",
        [ IsElementOfGradedRingRep,
          IsElementOfGradedRingRep ],
        
  function( a, b )
    local product;
    
    product := List( EvalRingElement( a ),
                     chi -> List( EvalRingElement( b ),
                             psi -> [ chi[1] * psi[1], chi[2] + psi[2] ] ) );
    product := Concatenation( product );
    
    return a!.ElementOfGradedRing( product );
    
end );

##
InstallGlobalFunction( ElementOfGradedRelativeRing,
  function( arg )
    local nargs, properties, ar, ring, fiber, base, r;
    
    nargs := Length( arg );
    
    if nargs = 0 then
        Error( "empty input\n" );
    fi;
    
    properties := [ ];
    
    for ar in arg{[ 3 .. nargs ]} do
        if not IsBound( ring ) and IsHomalgInternalRingRep( ar ) then
            ring := ar;
        elif IsFilter( ar ) then
            Add( properties, ar );
        else
            Error( "this argument (now assigned to ar) should be in { IsHomalgInternalRingRep, IsFilter }\n" );
        fi;
    od;
    
    fiber := arg[1];
    base := arg[2];
    
    if not IsBound( ring ) then
        ring := HOMALG_MATRICES.ZZ;
    fi;
    
    r := rec( ring := ring,
              ElementOfGradedRelativeRing :=
              ElementOfGradedRelativeRing,
              FreeElementOfGradedRelativeRing :=
              FreeElementOfGradedRelativeRing );
    
    if not IsElementOfGradedRingRep( fiber ) then
        fiber := ElementOfGradedRing( fiber );
    fi;
    
    if not IsElementOfGradedRingRep( base ) then
        base := ElementOfGradedRing( [ [ base, -1 ] ], IsEquiDegree );
    fi;
    
    if IsFree in properties then
        ## Objectify:
        ObjectifyWithAttributes(
                r, TheTypeElementOfGradedRelativeRing,
                BaseSpace, base,
                Socle, fiber );
    else
        ## Objectify:
        ObjectifyWithAttributes(
                r, TheTypeElementOfGradedRelativeRing,
                BaseSpace, base,
                HomogeneousParts, fiber );
    fi;
    
    if properties <> [ ] then
        for ar in properties do
            Setter( ar )( r, true );
        od;
    fi;
    
    return r;
    
end );

##
InstallGlobalFunction( FreeElementOfGradedRelativeRing,
  function( arg )
    
    Add( arg, IsFree );
    
    return CallFuncList( ElementOfGradedRelativeRing, arg );
    
end );

##
InstallMethod( \=,
        "for two elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep,
          IsElementOfGradedRelativeRingRep ],
        
  function( chi, psi )
    
    return BaseSpace( chi ) = BaseSpace( psi ) and
           HomogeneousParts( chi ) = HomogeneousParts( psi );
    
end );

##
InstallMethod( \=,
        "for two elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle,
          IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  function( chi, psi )
    
    return BaseSpace( chi ) = BaseSpace( psi ) and
           Socle( chi ) = Socle( psi );
    
end );

##
InstallMethod( Zero,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local chiV;
    
    chiV := BaseSpace( chi );
    
    return chi!.FreeElementOfGradedRelativeRing(
                   Zero( chiV ), chiV, IsZero );
    
end );

##
InstallMethod( \+,
        "for two elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep,
          IsElementOfGradedRelativeRingRep ],
        
  function( chi, psi )
    local chiV;
    
    chiV := BaseSpace( chi );
    
    if chiV <> BaseSpace( psi ) then
        Error( "different base\n" );
    fi;
    
    return chi!.ElementOfGradedRelativeRing(
                   HomogeneousParts( chi ) + HomogeneousParts( psi ),
                   chiV );
    
end );

##
InstallMethod( \+,
        "for two elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle,
          IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  function( chi, psi )
    local chiV;
    
    chiV := BaseSpace( chi );
    
    if chiV <> BaseSpace( psi ) then
        Error( "different base\n" );
    fi;
    
    return chi!.FreeElementOfGradedRelativeRing(
                   Socle( chi ) + Socle( psi ),
                   chiV );
    
end );

##
InstallMethod( AdditiveInverse,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return chi!.ElementOfGradedRelativeRing(
                   -HomogeneousParts( chi ),
                   BaseSpace( chi ) );
    
end );

##
InstallMethod( AdditiveInverse,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  function( chi )
    
    return chi!.FreeElementOfGradedRelativeRing(
                   -Socle( chi ),
                   BaseSpace( chi ) );
    
end );

##
InstallMethod( One,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    chi := BaseSpace( chi );
    
    return chi!.FreeElementOfGradedRelativeRing(
                   One( chi ), chi, IsOne );
    
end );

##
InstallMethod( POW,
        "for an element of a graded relative ring and an integer",
        [ IsElementOfGradedRelativeRingRep,
          IsInt and IsZero ],
        
  function( a, e )
    
    return One( a );
    
end );

##
InstallMethod( \*,
        "for two elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep,
          IsElementOfGradedRelativeRingRep ],
        
  function( chi, psi )
    local chiV;
    
    chiV := BaseSpace( chi );
    
    if chiV <> BaseSpace( psi ) then
        Error( "different base\n" );
    fi;
    
    return chi!.ElementOfGradedRelativeRing(
                   HomogeneousParts( chi ) * HomogeneousParts( psi ),
                   chiV );
    
end );

##
InstallMethod( Dual,
        "for an element of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  function( chi )
    
    return chi!.ElementOfGradedRelativeRing(
                   Dual( TipOfModule( chi ) ),
                   BaseSpace( chi ) );
    
end );

##
InstallMethod( GradedHom,
        "for two elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle,
          IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  function( chi, psi )
    
    return Dual( chi ) * psi;
    
end );

##
InstallMethod( Hom,
        "for two elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle,
          IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  function( chi, psi )
    local hom0, triv;
    
    hom0 := EvalRingElement( First( EvalRingElement( HomogeneousParts( GradedHom( chi, psi ) ) ), a -> a[2] = 0 )[1] );
    triv := TrivialCharacter( UnderlyingCharacterTable( hom0 ) );
    
    return ScalarProduct( triv, hom0 );
    
end );

##
InstallMethod( ValuesOfBettiTable,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local K_i, T_i, sign, socle, socles, d, twist_max, twist_min;
    
    if IsZero( chi ) then
        return [ ];
    fi;
    
    K_i := chi;
    
    T_i := ProjectiveCover( K_i );
    
    sign := 1;
    
    socle := EvalRingElement( Socle( T_i ) );
    
    socle := List( socle, a -> [ sign * (-1)^a[2] * a[1], a[2] ] );
    
    socles := socle;
    
    d := Dimension( chi );
    
    twist_max := socle[1][2];
    
    ## the -d is enough for the interpolation
    ## and the -1 to compare with ambient dimension, see below
    twist_min := twist_max - d - 1;
    
    while socle[Length( socle )][2] > twist_min do
        
        K_i := Kernel( T_i, K_i );
        
        if IsZero( K_i ) then
            return [ ];
        fi;
        
        T_i := ProjectiveCover( K_i );
        
        sign := -sign;
        
        socle := EvalRingElement( Socle( T_i ) );
        
        socle := List( socle, a -> [ sign * (-1)^a[2] * a[1], a[2] ] );
        
        socles := Concatenation( socle, socles );
        
    od;
    
    ## extract the table in the window [ twist_min .. twist_max ]
    return Filtered( socles, a -> a[2] in [ twist_min .. twist_max ] );
    
end );

##
InstallMethod( HilbertPolynomial,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local t, HP, socles, base_points, euler;
    
    t := VariableForHilbertPolynomial( );
    
    socles := ValuesOfBettiTable( chi );
    
    if socles = [ ] then
        HP := 0 * t;
        HP!.GradedModule := chi;
        return HP;
    fi;
    
    base_points := List( socles, a -> a[2] );
    
    base_points := DuplicateFreeList( base_points );
    
    euler := List( base_points, a -> Sum( Filtered( socles, b -> b[2] = a ), c -> c[1] ) );
    
    HP := InterpolatedPolynomial( Integers, base_points, euler );
    
    HP := SignInt( LeadingCoefficient( HP ) ) * HP;
    
    HP := Value( HP, t );
    
    if Degree( HP ) > Dimension( chi ) then
        Error( "the degree of the Hilbert polynomial is ", Degree( HP ),
               " which is bigger than the ambient dimension ", Dimension( chi ), "\n" );
    fi;
    
    HP!.GradedModule := chi;
    
    return HP;
    
end );

##
InstallMethod( ElementOfGrothendieckGroup,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    local HP, d;
    
    HP := HilbertPolynomial( chi );
    
    d := Dimension( chi );
    
    return CreateElementOfGrothendieckGroupOfProjectiveSpace( HP, d );
    
end );

##
InstallMethod( ChernPolynomial,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
    
    return ChernPolynomial( ElementOfGrothendieckGroup( chi ) );
    
end );

##
InstallMethod( ChernCharacter,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],

  function( chi )
    local u, d, exp, coeffs;
    
    u := VariableForChernCharacter( );
    
    d := Dimension( chi );
    
    exp := Sum( [ 0 .. d + 1 ], i -> 1/Factorial( i )*u^i );
    
    coeffs := EvalRingElement( HomogeneousParts( chi ) );
    
    return CreateChernCharacter( 0*u + Sum( coeffs, i -> i[1]*(-1)^i[2]*Value( exp, -i[2]*u ) ) , d );  
    
end );

##
InstallMethod( RankOfObject,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( chi )
  
  return Value( UnderlyingPolynomial( chi ), -1 );
  
end );

##
InstallMethod( VerticalShift,
        "for elements of a graded relative ring and an integer",
        [ IsElementOfGradedRelativeRingRep, IsInt ],
  function( chi, i )
    local s, d;
    
    d := Dimension( chi );
    
    s := ElementOfGradedRelativeRing( [ [ 1, i ] ], d + 1 );
    
    return chi*s;
  
end );

####################################
#
# View, Print, and Display methods:
#
####################################

##
InstallMethod( Name,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep ],
        
  function( o )
    local coeffs, l, x, name, i;
    
    coeffs := EvalRingElement( o );
    
    if coeffs = [ ] then
        SetIsZero( o, true );
        return Name( o );
    fi;
    
    x := VariableForGrothendieckHilbertSeries( );
    x := String( x );
    
    name := "";
    
    if coeffs[1][2] = 0 then
        Append( name, String( coeffs[1][1] ) );
    elif coeffs[1][1] = -1 then
        Append( name, "-" );
    elif coeffs[1][1] <> 1 then
        Append( name, Concatenation( String( coeffs[1][1] ), "*" ) );
    fi;
    
    if coeffs[1][2] = 1 then
        Append( name, x );
    elif coeffs[1][2] <> 0 then
        Append( name, Concatenation( x, "^", String( coeffs[1][2] ) ) );
    fi;
    
    l := Length( coeffs );
    
    for i in [ 2 .. l ] do
        
        ## the only difference to the first summand case
        if coeffs[i][1] > 0 then
            Append( name, "+" );
        fi;
        
        if coeffs[i][2] = 0 then
            Append( name, String( coeffs[i][1] ) );
        elif coeffs[i][1] = -1 then
            Append( name, "-" );
        elif coeffs[i][1] <> 1 then
            Append( name,
                    Concatenation( String( coeffs[i][1] ), "*" ) );
        fi;
        
        if coeffs[i][2] = 1 then
            Append( name, x );
        elif coeffs[i][2] <> 0 then
            Append( name, Concatenation( x, "^", String( coeffs[i][2] ) ) );
        fi;
        
    od;
    
    return name;
    
end );

##
InstallMethod( Name,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep and IsOne ],
        
  function( o )
    
    return "1";
    
end );

##
InstallMethod( Name,
        "for elements of a graded ring",
        [ IsElementOfGradedRingRep and IsZero ],
        
  function( o )
    
    return "0";
    
end );

##
InstallMethod( Name,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep ],
        
  function( o )
    
    return Concatenation(
                   Name( HomogeneousParts( o ) ),
                   " -> P^",
                   String( Dimension( o ) ) );
    
end );

##
InstallMethod( Name,
        "for elements of a graded relative ring",
        [ IsElementOfGradedRelativeRingRep and
          IsFree and HasSocle ],
        
  function( o )
    
    return Concatenation( "<",
                   Name( Socle( o ) ),
                   "> -> P^",
                   String( Dimension( o ) ) );
    
end );
