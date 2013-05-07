####################################
#
# representations:
#
####################################

DeclareRepresentation( "IsElementOfGrothendieckRingOfGroupRep",
        IsElementOfGrothendieckGroup and IsHomalgRingElement,
        [ ] );

DeclareRepresentation( "IsElementOfGradedGrothendieckRingOfGroupRep",
        IsElementOfGradedRingRep and IsHomalgRingElement,
        [ ] );

DeclareRepresentation( "IsElementOfGradedRelativeGrothendieckRingOfGroupRep",
        IsElementOfGradedRelativeRingRep and IsHomalgRingElement,
        [ ] );

####################################
#
# families and types:
#
####################################

# types:
BindGlobal( "TheTypeElementOfGrothendieckRingOfGroup",
        NewType( TheFamilyOfCombinatorialPolynomials,
                IsElementOfGrothendieckRingOfGroupRep ) );

BindGlobal( "TheTypeElementOfGradedGrothendieckRingOfGroup",
        NewType( TheFamilyOfCombinatorialPolynomials,
                IsElementOfGradedGrothendieckRingOfGroupRep ) );

BindGlobal( "TheTypeElementOfGradedRelativeGrothendieckRingOfGroup",
        NewType( TheFamilyOfCombinatorialPolynomials,
                IsElementOfGradedRelativeGrothendieckRingOfGroupRep ) );

####################################
#
# methods for properties:
#
####################################

####################################
#
# methods for attributes:
#
####################################

##
InstallMethod( PositivePart,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( a )
    local ct, irr, ring;
    
    ct := UnderlyingCharacterTable( a );
    
    irr := Irr( ct );
    
    ring := GrothendieckRing( ct );
    
    a := Filtered( Coefficients( a ), i -> i[1] > 0 );
    
    if a = [ ] then
        a := 0 * TrivialCharacter( ct );
    else
        a := Sum( a, i -> i[1] * irr[i[2]] );
    fi;
    
    return ElementOfGrothendieckRingOfGroup( a, ring );
    
end );

##
InstallMethod( ForgetGroupAction,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( chi )
    
    chi := EvalRingElement( chi );
    
    return DegreeOfCharacter( chi );
    
end );

##
InstallMethod( ForgetGroupAction,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep ],
        
  function( chi )
    local psi;
    
    psi := EvalRingElement( chi );
    
    psi := List( psi, a -> [ ForgetGroupAction( a[1] ), a[2] ] );
    
    if HasIsEquiDegree( chi ) and IsEquiDegree( chi ) then
        return ElementOfGradedRing( psi, IsEquiDegree );
    fi;
    
    return ElementOfGradedRing( psi );
    
end );

##
InstallMethod( Dimension,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep ],
        
  function( chi )
    
    if IsZero( chi ) then
        return 0;
    fi;
    
    chi := EvalRingElement( chi );
    
    if Length( chi ) <> 1 then
        Error( "the character is not concentrated one degree\n" );
    fi;
    
    return DegreeOfCharacter( chi[1][1] );
    
end );

##
InstallMethod( DualCharacter,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( chi )
    
    chi := EvalRingElement( chi );
    
    return ElementOfGrothendieckRingOfGroup( ComplexConjugate( chi ) );
    
end );

##
InstallMethod( DualCharacter,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep ],
        
  function( chi )
    local psi;
    
    psi := EvalRingElement( chi );
    
    psi := List( psi, a -> [ DualCharacter( a[1] ), -a[2] ] );
    
    if HasIsEquiDegree( chi ) and IsEquiDegree( chi ) then
        return ElementOfGradedGrothendieckRingOfGroup( psi, IsEquiDegree );
    fi;
    
    return ElementOfGradedGrothendieckRingOfGroup( psi );
    
end );

##
InstallMethod( PositivePart,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep ],
        
  function( chi )
    local ring;
    
    ring := GrothendieckRing( UnderlyingCharacterTable( chi ) );
    
    chi := List( EvalRingElement( chi ), a -> [ PositivePart( a[1] ), a[2] ]  );
    
    return ElementOfGradedGrothendieckRingOfGroup( chi, ring );
    
end );

##
InstallMethod( DualOfBaseSpace,
        "for elements of a graded relative Grothendieck ring of a group",
        [ IsElementOfGradedRelativeGrothendieckRingOfGroupRep ],
        
  function( chi )
    
    return DualCharacter( BaseSpace( chi ) );
    
end );

##
InstallMethod( ForgetGroupAction,
        "for elements of a graded relative Grothendieck ring of a group",
        [ IsElementOfGradedRelativeGrothendieckRingOfGroupRep ],
        
  function( chi )
    
    return ElementOfGradedRelativeRing(
                   ForgetGroupAction( HomogeneousParts( chi ) ),
                   ForgetGroupAction( BaseSpace( chi ) ) );
    
end );

##
InstallMethod( ForgetGroupAction,
        "for elements of a graded relative Grothendieck ring of a group",
        [ IsElementOfGradedRelativeGrothendieckRingOfGroupRep and
          IsFree and HasSocle ],
        
  function( chi )
    
    return FreeElementOfGradedRelativeRing(
                   ForgetGroupAction( Socle( chi ) ),
                   ForgetGroupAction( BaseSpace( chi ) ) );
    
end );

##
InstallMethod( HilbertPolynomial,
        "for elements of a graded relative Grothendieck ring of a group",
        [ IsElementOfGradedRelativeGrothendieckRingOfGroupRep ],
        
  function( chi )
    
    return HilbertPolynomial( ForgetGroupAction( chi ) );
    
end );


####################################
#
# methods for operations:
#
####################################

InstallMethod( Coefficients,
        "for virtual characters",
        [ IsVirtualCharacter ],
        
  function( chi )
    local ct, m, p;
    
    ct := UnderlyingCharacterTable( chi );
    
    m := MatScalarProducts( Irr( ct ), [ chi ] )[1];
    
    p := Filtered( [ 1 .. Size( Irr( ct ) ) ], i -> m[i] <> 0 );
    
    return ListN( p, m{p}, function( a, b ) return [ b, a ]; end );
    
end );

InstallMethod( Coefficients,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( chi )
    
    if not IsBound( chi!.Coefficients ) then
        chi!.Coefficients := Coefficients( EvalRingElement( chi ) );
    fi;
    
    return chi!.Coefficients;
    
end );

##
InstallMethod( ExteriorPower,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep, IsInt ],
        
  function( chi, e )
    local ct;
    
    if IsZero( chi ) then
        return chi;
    elif e = 0 then
        return chi^0;
    elif e < 0 or e > DegreeOfCharacter( chi ) then
        return 0 * chi;
    fi;
    
    ct := UnderlyingCharacterTable( chi );
    
    chi := EvalRingElement( chi );
    
    chi :=  AntiSymmetricParts( ct, [ chi ], e )[1];
    
    return ElementOfGrothendieckRingOfGroup( chi );
    
end );

##
InstallMethod( ExteriorPower,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep and IsEquiDegree, IsInt ],
        
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
    
    chi := [ [ ExteriorPower( chi[1], e ), e * chi[2] ] ];
    
    return ElementOfGradedGrothendieckRingOfGroup( chi );
    
end );

##
InstallMethod( VerticalShift,
        "for elements of a graded relative ring and an integer",
        [ IsElementOfGradedRelativeGrothendieckRingOfGroupRep, IsInt ],
  function( chi, i )
    local s, d, ct;
    
    d := Dimension( chi );
    
    ct := UnderlyingCharacterTable( chi );

    s := ElementOfGradedRelativeGrothendieckRingOfGroup( [ [ TrivialCharacter( ct ), i ] ], BaseSpace( chi ) );
    
    return chi*s;
  
end );


####################################
#
# constructors:
#
####################################

##
InstallMethod( CreateHomalgTable,
        "for character tables",
        [ IsCharacterTable ],
        
  function( ct )
    local RP;
    
    RP := rec(
              
              
              );
    
    Objectify( TheTypeHomalgTable, RP );
    
    return RP;
    
end );

##
InstallGlobalFunction( ElementOfGrothendieckRingOfGroup,
  function( arg )
    local nargs, properties, ar, ring, class_function, ct, r;
    
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
    
    class_function := arg[1];
    
    if not IsBound( ring ) then
        ct := UnderlyingCharacterTable( class_function );
        ring := GrothendieckRing( ct );
    else
        ct := UnderlyingCharacterTable( ring );
    fi;
    
    r := rec( ring := ring );
    
    ## Objectify:
    ObjectifyWithAttributes(
            r, TheTypeElementOfGrothendieckRingOfGroup,
            EvalRingElement, class_function,
            UnderlyingCharacterTable, ct );
        
    if class_function = [ ] then
        SetIsZero( r, true );
    fi;
    
    if properties <> [ ] then
        for ar in properties do
            Setter( ar )( r, true );
        od;
    fi;
    
    SetDegreeOfCharacter( r, Degree( class_function ) );
    
    return r;
    
end );

##
InstallMethod( \=,
        "for two elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep,
          IsElementOfGrothendieckRingOfGroupRep ],
        
  function( a, b )
    
    return EvalRingElement( a ) = EvalRingElement( b );
    
end );

##
InstallMethod( Zero,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( a )
    
    return ElementOfGrothendieckRingOfGroup(
                   Zero( EvalRingElement( a ) ), IsZero );
    
end );

##
InstallMethod( \+,
        "for two elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep,
          IsElementOfGrothendieckRingOfGroupRep ],
        
  function( a, b )
    
    return ElementOfGrothendieckRingOfGroup(
                   EvalRingElement( a ) + EvalRingElement( b ) );
    
end );

##
InstallMethod( AdditiveInverse,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( a )
    
    return ElementOfGrothendieckRingOfGroup(
                   -EvalRingElement( a ) );
    
end );

##
InstallMethod( One,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( a )
    
    return ElementOfGrothendieckRingOfGroup(
                   One( EvalRingElement( a ) ), IsOne );
    
end );

##
InstallMethod( POW,
        "for an element of a Grothendieck ring of a group and an integer",
        [ IsElementOfGrothendieckRingOfGroupRep,
          IsInt and IsZero ],
        
  function( a, e )
    
    return One( a );
    
end );

##
InstallMethod( \*,
        "for two elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep,
          IsElementOfGrothendieckRingOfGroupRep ],
        
  function( a, b )
    
    return ElementOfGrothendieckRingOfGroup(
                   EvalRingElement( a ) * EvalRingElement( b ) );
    
end );

##
InstallGlobalFunction( ElementOfGradedGrothendieckRingOfGroup,
  function( arg )
    local nargs, properties, ar, ring, graded_class_function, ct, r;
    
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
    
    graded_class_function := ShallowCopy( arg[1] );
    
    if not IsBound( ring ) then
        ct := UnderlyingCharacterTable( graded_class_function[1][1] );
        ring := GrothendieckRing( ct );
    else
        ct := UnderlyingCharacterTable( ring );
    fi;
    
    r := rec( ring := ring,
              ElementOfGradedRing :=
              ElementOfGradedGrothendieckRingOfGroup );
    
    Sort( graded_class_function, function( a, b ) return a[2] < b[2]; end );
    
    graded_class_function :=
      List( Set( List( graded_class_function, a -> a[2] ) ),
        i -> [ Sum( List( Filtered( graded_class_function, a -> a[2] = i ), b -> b[1] ) ), i ]
        );
    
    Apply( graded_class_function,
           function( a ) if IsElementOfGrothendieckRingOfGroupRep( a[1] ) then return a; else return [ ElementOfGrothendieckRingOfGroup( a[1] ), a[2] ]; fi; end );
    
    graded_class_function :=
      Filtered( graded_class_function, a -> not IsZero( a[1] ) );
    
    ## Objectify:
    ObjectifyWithAttributes(
            r, TheTypeElementOfGradedGrothendieckRingOfGroup,
            EvalRingElement, graded_class_function,
            UnderlyingCharacterTable, ct );
    
    if graded_class_function = [ ] then
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
InstallMethod( One,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep ],
        
  function( a )
    
    return ElementOfGradedGrothendieckRingOfGroup(
                   [ [ TrivialCharacter( UnderlyingCharacterTable( a ) ), 0 ] ], a!.ring, IsOne );
    
end );

##
InstallGlobalFunction( ElementOfGradedRelativeGrothendieckRingOfGroup,
  function( arg )
    local nargs, properties, ar, ring, fiber, base, ct, r, n;
    
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
        ct := UnderlyingCharacterTable( base );
        ring := GrothendieckRing( ct );
    else
        ct := UnderlyingCharacterTable( ring );
    fi;
    
    r := rec( ring := ring,
              ElementOfGradedRelativeRing :=
              ElementOfGradedRelativeGrothendieckRingOfGroup,
              FreeElementOfGradedRelativeRing :=
              FreeElementOfGradedRelativeGrothendieckRingOfGroup );
    
    if not IsElementOfGradedGrothendieckRingOfGroupRep( fiber ) then
        fiber := ElementOfGradedGrothendieckRingOfGroup( fiber );
    fi;
    
    if not IsElementOfGradedGrothendieckRingOfGroupRep( base ) then
        n := DegreeOfCharacter( base );
        base := ElementOfGradedGrothendieckRingOfGroup( [ [ base, -1 ] ], IsEquiDegree );
        SetDegreeOfCharacter( base, n );
    fi;
    
    if IsFree in properties then
        ## Objectify:
        ObjectifyWithAttributes(
                r, TheTypeElementOfGradedRelativeGrothendieckRingOfGroup,
                BaseSpace, base,
                Socle, fiber,
                UnderlyingCharacterTable, ct );
    else
        ## Objectify:
        ObjectifyWithAttributes(
                r, TheTypeElementOfGradedRelativeGrothendieckRingOfGroup,
                BaseSpace, base,
                HomogeneousParts, fiber,
                UnderlyingCharacterTable, ct );
    fi;
    
    if properties <> [ ] then
        for ar in properties do
            Setter( ar )( r, true );
        od;
    fi;
    
    return r;
    
end );

##
InstallGlobalFunction( FreeElementOfGradedRelativeGrothendieckRingOfGroup,
  function( arg )
    
    Add( arg, IsFree );
    
    return CallFuncList( ElementOfGradedRelativeGrothendieckRingOfGroup, arg );
    
end );

##
InstallMethod( GrothendieckRing,
        "for character tables",
        [ IsCharacterTable ],
        
  function( ct )
    local ring, RP, R;
    
    ring := CallFuncList( RingWithOne, Irr( ct ) );
    
    RP := CreateHomalgTable( ct );
    
    R := CreateHomalgRing( ring, ElementOfGrothendieckRingOfGroup, RP );
    
    SetUnderlyingCharacterTable( R, ct );
    
    return R;
    
end );

####################################
#
# View, Print, and Display methods:
#
####################################

##
InstallMethod( Name,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( o )
    local coeffs, l, irr, name, i;
    
    coeffs := Coefficients( o );
    
    if coeffs = [ ] then
        SetIsZero( o, true );
        return Name( o );
    fi;
    
    irr := Irr( UnderlyingCharacterTable( o ) );
    
    name := "";
    
    if coeffs[1][1] = -1 then
        Append( name, "-" );
    elif coeffs[1][1] <> 1 then
        Append( name, Concatenation( String( coeffs[1][1] ), "*" ) );
    fi;
    
    Append( name,
            Concatenation( "{", String( Degree( irr[coeffs[1][2]] ) ), "|χ_", String( coeffs[1][2] ), "}" ) );
    
    l := Length( coeffs );
    
    for i in [ 2 .. l ] do
        
        if coeffs[i][1] = 1 then
            Append( name, "+" );
        elif coeffs[i][1] = -1 then
            Append( name, "-" );
        elif coeffs[i][1] > 0 then
            Append( name,
                    Concatenation( "+", String( coeffs[i][1] ), "*" ) );
        elif coeffs[i][1] < 0 then
            Append( name,
                    Concatenation( String( coeffs[i][1] ), "*" ) );
        fi;
        
        Append( name,
                Concatenation( "{", String( Degree( irr[coeffs[i][2]] ) ), "|χ_", String( coeffs[i][2] ), "}" ) );
        
    od;
    
    return name;
    
end );

##
InstallMethod( Name,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep and IsOne ],
        
  function( o )
    
    return "{1|χ_1}";
    
end );

##
InstallMethod( Name,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep and IsZero ],
        
  function( o )
    
    return "{0|0}";
    
end );

##
InstallMethod( Display,
        "for elements of a Grothendieck ring of a group",
        [ IsElementOfGrothendieckRingOfGroupRep ],
        
  function( o )
    
    Display( EvalRingElement( o ) );
    
end );

##
InstallMethod( Name,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep ],
        
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
    
    Append( name,
            Concatenation( "(", String( DegreeOfCharacter( coeffs[1][1] ) ), "=[", Name( coeffs[1][1] ), "])" ) );
    
    if coeffs[1][2] = 1 then
        Append( name, Concatenation( "*", x ) );
    elif coeffs[1][2] <> 0 then
        Append( name, Concatenation( "*", x, "^", String( coeffs[1][2] ) ) );
    fi;
    
    l := Length( coeffs );
    
    for i in [ 2 .. l ] do
        
        Append( name,
                Concatenation( "+(", String( DegreeOfCharacter( coeffs[i][1] ) ), "=[", Name( coeffs[i][1] ), "])" ) );
        
        if coeffs[i][2] = 1 then
            Append( name, Concatenation( "*", x ) );
        elif coeffs[i][2] <> 0 then
            Append( name, Concatenation( "*", x, "^", String( coeffs[i][2] ) ) );
        fi;
        
    od;
    
    return name;
    
end );

##
InstallMethod( Name,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep and IsOne ],
        
  function( o )
    
    return "(1=[{1|χ_1}])";
    
end );

##
InstallMethod( Name,
        "for elements of a graded Grothendieck ring of a group",
        [ IsElementOfGradedGrothendieckRingOfGroupRep and IsZero ],
        
  function( o )
    
    return "(0=[{0|0}])";
    
end );

##
InstallMethod( Name,
        "for elements of a graded relative Grothendieck ring of a group",
        [ IsElementOfGradedRelativeGrothendieckRingOfGroupRep ],
        
  function( o )
    
    return Concatenation(
                   Name( HomogeneousParts( o ) ),
                   " -> P(",
                   Name( EvalRingElement( BaseSpace( o ) )[1][1] ), ")" );
    
end );

##
InstallMethod( Name,
        "for elements of a graded relative Grothendieck ring of a group",
        [ IsElementOfGradedRelativeGrothendieckRingOfGroupRep and
          IsFree and HasSocle ],
        
  function( o )
    
    return Concatenation( "<",
                   Name( Socle( o ) ),
                   "> -> P(",
                   Name( EvalRingElement( BaseSpace( o ) )[1][1] ), ")" );
    
end );
