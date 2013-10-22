####################################
#
# categories:
#
####################################

####################################
#
# properties:
#
####################################

####################################
#
# attributes:
#
####################################

DeclareAttributeWithDocumentation( "CharacteristicPolynomial",
        IsHomalgMatrix,
        [ "Returns the characteristic polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a univariate polynomial in <M>t=</M><C>IndeterminateOfCharacteristicPolynomial()</C>",
        "M",
        [ "Matroids", "Methods_for_matroids" ]
        );

DeclareAttributeWithDocumentation( "PoincarePolynomial",
        IsHomalgMatrix,
        [ "Returns the Poincare polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a univariate polynomial in <M>t=</M><C>IndeterminateOfCharacteristicPolynomial()</C>",
        "M",
        [ "Matroids", "Methods_for_matroids" ]
        );

DeclareAttributeWithDocumentation( "LeadingCoefficientOfPoincarePolynomial",
        IsHomalgMatrix,
        [ "Returns the leading coefficient of the Poincare polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a positive integer",
        "M",
        [ "Matroids", "Methods_for_matroids" ]
        );

####################################
#
# global functions and operations:
#
####################################

# basic operations

DeclareOperationWithDocumentation( "TuttePolynomial",
        [ IsHomalgMatrix, IsRingElement, IsRingElement ],
        [ "Returns the Tutte polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a bivariate polynomial in <A>x</A> and <A>y</A>",
        "M, x, y",
        [ "Matroids", "Methods_for_matroids" ],
        rec( function_label := "for IsMatroid, IsRingElement, IsRingElement" )
        );

DeclareOperationWithDocumentation( "CharacteristicPolynomial",
        [ IsHomalgMatrix, IsRingElement ],
        [ "Returns the characteristic polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a univariate polynomial in <A>t</A>",
        "M, t",
        [ "Matroids", "Methods_for_matroids" ],
        rec( function_label := "for IsMatroid, IsRingElement" )
        );

DeclareOperationWithDocumentation( "PoincarePolynomial",
        [ IsHomalgMatrix, IsRingElement ],
        [ "Returns the Poincare polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a univariate polynomial in <A>t</A>",
        "M, t",
        [ "Matroids", "Methods_for_matroids" ],
        rec( function_label := "for IsMatroid, IsRingElement" )
        );

# constructors:
