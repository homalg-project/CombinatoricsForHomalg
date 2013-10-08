####################################
#
# representations:
#
####################################

####################################
#
# families and types:
#
####################################

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
InstallMethod( CharacteristicPolynomial,
        "for a homalg matrix",
        [ IsHomalgMatrix ],
        
  function( M )
    local t;
    
    t := VariableForCharacteristicPolynomial( );
    
    return CharacteristicPolynomial( M, t );
    
end );

##
InstallMethod( PoincarePolynomial,
        "for a homalg matrix",
        [ IsHomalgMatrix ],
        
  function( M )
    local t;
    
    t := VariableForCharacteristicPolynomial( );
    
    return PoincarePolynomial( M, t );
    
end );

####################################
#
# methods for operations:
#
####################################

##
InstallMethod( TuttePolynomial,
        "for a homalg matrix and two ring element",
        [ IsHomalgMatrix, IsRingElement, IsRingElement ],
        
  function( M, x, y )
    local n, r, s, N;
    
    if not IsHomalgInternalRingRep( HomalgRing( M ) ) then
        TryNextMethod( );
    fi;
    
    n := NrColumns( M );
    
    ## here we highly depend on conventions which are only true for 
    M := BasisOfRows( M );
    
    r := RowRankOfMatrix( M );
    
    if r = 0 then
        return y^n;
    fi;
    
    if r = 1 then
        s := Length( NonZeroColumns( M ) );
        if IsZero( y ) then
            if s < n then
                return Zero( y );
            else ## s = n
                return x;
            fi;
        fi;
        return ( x + Sum( [ 1 .. s - 1 ], i -> y^i ) ) * y^(n - s);
    fi;
    
    if IsZero( y ) and
       n > 7 then	## 7 is a heuristic value which works best for B4.g
        ## Michael Cuntz' trick reduces the recursion depth
        N := Involution( M );
        N := List( [ 1 .. n ], i -> BasisOfRows( CertainRows( N, [ i ] ) ) );
        N := DuplicateFreeList( N );
        if Length( N ) < n then
            M := Iterated( N, UnionOfRows );
            M := Involution( M );
            n := NrColumns( M );
        fi;
    fi;
    
    s := PositionOfFirstNonZeroEntryPerRow( CertainRows( M, [ 1 ] ) )[ 1 ];
    
    if s > 1 then
        if IsZero( y ) then
            return Zero( y );
        else
            return y^(s - 1) * TuttePolynomial( CertainColumns( M, [ s .. n ] ), x, y );
        fi;
    fi;
    
    M := CertainColumns( M, [ 2 .. n ] );
    N := CertainRows( M, [ 2 .. r ] );
    
    if IsZero( CertainRows( M, [ 1 ] ) ) then
        if IsZero( x ) then
            return Zero( x );
        else
            return x * TuttePolynomial( N, x, y );
        fi;
    fi;
    
    return TuttePolynomial( M, x, y ) + TuttePolynomial( N, x, y );
    
end );

##
InstallMethod( CharacteristicPolynomial,
        "for a homalg matrix and a ring element",
        [ IsHomalgMatrix, IsRingElement ],
        
  function( M, t )
    
    return (-1)^RowRankOfMatrix( M ) * TuttePolynomial( M, 1 - t, 0 );
    
end );

##
InstallMethod( PoincarePolynomial,
        "for a homalg matrix and a ring element",
        [ IsHomalgMatrix, IsRingElement ],
        
  function( M, t )
    
    return (-t)^RowRankOfMatrix( M ) * CharacteristicPolynomial( M, -t^-1 );
    
end );

####################################
#
# constructors:
#
####################################

##
InstallGlobalFunction( VariableForCharacteristicPolynomial,
  function( arg )
    local t;
    
    if not IsBound( HOMALG_MODULES.variable_for_characteristic_polynomial ) then
        
        if Length( arg ) > 0 and IsString( arg[1] ) then
            t := arg[1];
        else
            t := "t";
        fi;
        
        t := Indeterminate( Integers, t );
        
        HOMALG_MODULES.variable_for_characteristic_polynomial := t;
    fi;
    
    return HOMALG_MODULES.variable_for_characteristic_polynomial;
    
end );

####################################
#
# View, Print, and Display methods:
#
####################################
