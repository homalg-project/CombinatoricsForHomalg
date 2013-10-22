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
    
    t := IndeterminateOfCharacteristicPolynomial( );
    
    return CharacteristicPolynomial( M, t );
    
end );

##
InstallMethod( PoincarePolynomial,
        "for a homalg matrix",
        [ IsHomalgMatrix ],
        
  function( M )
    local t;
    
    t := IndeterminateOfCharacteristicPolynomial( );
    
    return PoincarePolynomial( M, t );
    
end );

##
InstallMethod( LeadingCoefficientOfPoincarePolynomial,
        "for a homalg matrix",
        [ IsHomalgMatrix ],
        
  function( M )
    
    return TuttePolynomial( M, 1, 0 );
    
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
    
    return TuttePolynomial( Matroid( M ), x, y );
    
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

