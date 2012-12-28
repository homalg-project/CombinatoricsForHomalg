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

DeclarePropertyWithDocumentation( "IsEquiDegree",
        IsElementOfGrothendieckGroup,
        "Returns if the element is of equi-degree.",
        "<C>true</C> or <C>false</C>",
        [ "Characters", "Methods_for_all_objects" ]
        );

####################################
#
# attributes:
#
####################################

DeclareAttributeWithDocumentation( "Dimension",
        IsElementOfGrothendieckGroup,
        "Returns the dimension the base space.",
        "an integer",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "UnderlyingPolynomial",
        IsElementOfGrothendieckGroup,
        "Returns the underlying polynomial.",
        "an Laurent polynomial",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "ExteriorPowers",
        IsElementOfGrothendieckGroup,
        "Returns the exterior powers of the Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "BaseSpace",
        IsElementOfGrothendieckGroup,
        "Returns the graded character of the base space.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "Socle",
        IsElementOfGrothendieckGroup,
        "Returns the graded socle.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "HomogeneousParts",
        IsElementOfGrothendieckGroup,
        "Returns all the homogeneous parts.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "DualOfBaseSpace",
        IsElementOfGrothendieckGroup,
        "Returns the dual of the graded character of the base space.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "PositivePart",
        IsElementOfGrothendieckGroup,
        "Returns the positive part of a Grothendieck ring element.",
        "a graded Grothendieck group element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "DeterminantOfBaseSpace",
        IsElementOfGrothendieckGroup,
        "Returns the graded character of the base space.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "DualOfExteriorPowersOfBaseSpace",
        IsElementOfGrothendieckGroup,
        "Returns the dual of the exterior powers of the graded character of the base space.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "TipOfModule",
        IsElementOfGrothendieckGroup,
        "Returns the head of a graded character.",
        "a graded Grothendieck group element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "FreeCoverOfTip",
        IsElementOfGrothendieckGroup,
        "Returns the free cover of a given tip.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "FreeCover",
        IsElementOfGrothendieckGroup,
        "Returns the free cover of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "EG-Modules", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "HilbertPolynomial",
        IsElementOfGrothendieckGroup,
        "Returns the Hilbert polynomial.",
        "a univariate polynomial",
        "chi",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "ElementOfGrothendieckGroup",
        IsElementOfGrothendieckGroup,
        "Returns the corresponding element of the Grothendieck group.",
        "a Grothendieck group element",
        "chi",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "ChernPolynomial",
        IsElementOfGrothendieckGroup,
        "Returns the corresponding Chern polynomial.",
        "a Chern polynomial with rank",
        "chi",
        [ "Characters", "Methods_for_all_objects" ]
        );

####################################
#
# global functions and operations:
#
####################################

DeclareGlobalFunctionWithDocumentation( "VariableForGrothendieckHilbertSeries",
        "Creates an indeterminate for the use with the Grothendieck-Hilbert polynomials.",
        "an indeterminate",
        [ "Characters", "Constructors" ]
        );

# basic operations

DeclareOperationWithDocumentation( "ExteriorPower",
        [ IsElementOfGrothendieckGroup, IsInt ],
        "Returns the <A>e</A>-th exterior powers of the <A>chi</A>.",
        "a graded Grothendieck ring element",
        "chi, e",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareOperationWithDocumentation( "Kernel",
        [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ],
        "Returns the kernel of the unique map from <A>chi</A> to <A>psi</A>.",
        "a graded Grothendieck ring element",
        "chi, psi",
        [ "Characters", "Methods_for_all_objects" ]
        );

# constructors:

DeclareGlobalFunctionWithDocumentation( "ElementOfRing",
        "Creates an element from a Grothendieck ring.",
        "a homalg ring element",
        [ "Characters", "Constructors" ]
        );

DeclareGlobalFunctionWithDocumentation( "ElementOfGradedRing",
        "Creates an element from a graded Grothendieck ring.",
        "a homalg ring element",
        [ "Characters", "Constructors" ]
        );

DeclareGlobalFunctionWithDocumentation( "ElementOfGradedRelativeRing",
        "Creates an element from a graded relative Grothendieck ring.",
        "a homalg ring element",
        [ "Characters", "Constructors" ]
        );

DeclareGlobalFunctionWithDocumentation( "FreeElementOfGradedRelativeRing",
        "Creates an element from a graded relative Grothendieck ring.",
        "a homalg ring element",
        [ "Characters", "Constructors" ]
        );
