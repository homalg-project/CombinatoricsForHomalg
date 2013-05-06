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
        
DeclareAttributeWithDocumentation( "ChernCharacter",
        IsElementOfGrothendieckGroup,
        "Returns the ChernCharacter",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );
                
DeclareAttributeWithDocumentation( "RankOfObject",
        IsElementOfGrothendieckGroup,
        "Returns the Rank",
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

DeclareAttributeWithDocumentation( "BottomOfModule",
        IsElementOfGrothendieckGroup,
        "Returns the head of a graded character.",
        "a graded Grothendieck group element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "ProjectiveCoverOfTip",
        IsElementOfGrothendieckGroup,
        "Returns the projective cover of a given tip.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "ProjectiveCover",
        IsElementOfGrothendieckGroup,
        "Returns the projective cover of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "EG-Modules", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "InjectiveHullOfBottom",
        IsElementOfGrothendieckGroup,
        "Returns the injective hull of a given bottom.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "InjectiveHull",
        IsElementOfGrothendieckGroup,
        "Returns the injective hull of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "EG-Modules", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "InjectiveProjectiveSaturation",
        IsElementOfGrothendieckGroup,
        "Returns the injective hull of the projective syzygy of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "EG-Modules", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "ProjectiveInjectiveSaturation",
        IsElementOfGrothendieckGroup,
        "Returns the injective hull of the injective syzygy of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "EG-Modules", "Methods_for_all_objects" ]
        );

DeclareAttributeWithDocumentation( "ValuesOfBettiTable",
        IsElementOfGrothendieckGroup,
        "Returns the values of the Betti table in a certain range.",
        "a list",
        "chi",
        [ "Characters", "Methods_for_all_objects" ]
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
        "a graded ring element",
        "chi, e",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareOperationWithDocumentation( "Cokernel",
        [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ],
        "Returns the cokernel of the unique map from <A>chi</A> to <A>psi</A>.",
        "a graded relative ring element",
        "chi, psi",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareOperationWithDocumentation( "Kernel",
        [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ],
        "Returns the kernel of the unique map from <A>chi</A> to <A>psi</A>.",
        "a graded relative ring element",
        "chi, psi",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareOperationWithDocumentation( "SyzygyObject",
        [ IsInt, IsElementOfGrothendieckGroup ],
        "Returns the <A>i</A>-th syzyies object of <A>chi</A>.",
        "a graded relative ring element",
        "i, chi",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareOperationWithDocumentation( "CosyzygyObject",
        [ IsInt, IsElementOfGrothendieckGroup ],
        "Returns the <A>i</A>-th syzyies object of <A>chi</A>.",
        "a graded relative ring element",
        "i, chi",
        [ "Characters", "Methods_for_all_objects" ]
        );

DeclareOperationWithDocumentation( "VerticalShift",
        [ IsElementOfGrothendieckGroup, IsInt ],
        "Returns the i-th shift of chi.",
        "a graded relative ring element",
        "chi, i",
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
