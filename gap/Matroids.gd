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
        "a univariate polynomial in <M>t=</M><C>VariableForCharacteristicPolynomial()</C>",
        "M",
        [ "Matroids", "Methods_for_matroids" ]
        );

DeclareAttributeWithDocumentation( "PoincarePolynomial",
        IsHomalgMatrix,
        [ "Returns the Poincare polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a univariate polynomial in <M>t=</M><C>VariableForCharacteristicPolynomial()</C>",
        "M",
        [ "Matroids", "Methods_for_matroids" ]
        );

####################################
#
# global functions and operations:
#
####################################

DeclareGlobalFunctionWithDocumentation( "VariableForCharacteristicPolynomial",
        "Creates an indeterminate for the characteristic polynomial.",
        "an indeterminate",
        [ "Matroids", "Constructors" ]
        );

# basic operations

DeclareOperationWithDocumentation( "TuttePolynomial",
        [ IsHomalgMatrix, IsRingElement, IsRingElement ],
        [ "Returns the Tutte polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a bivariate polynomial in <A>x</A> and <A>y</A>",
        "M, x, y",
        [ "Matroids", "Methods_for_matroids" ]
        );

DeclareOperationWithDocumentation( "CharacteristicPolynomial",
        [ IsHomalgMatrix, IsRingElement ],
        [ "Returns the characteristic polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a univariate polynomial in <A>t</A>",
        "M, t",
        [ "Matroids", "Methods_for_matroids" ]
        );

DeclareOperationWithDocumentation( "PoincarePolynomial",
        [ IsHomalgMatrix, IsRingElement ],
        [ "Returns the Poincare polynomial of the realizable matroid represented by",
          "the rows of the matrix <A>M</A>." ],
        "a univariate polynomial in <A>t</A>",
        "M, t",
        [ "Matroids", "Methods_for_matroids" ]
        );

# constructors:
