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
        [ "Characters", "Methods_for_characters" ]
        );

DeclarePropertyWithDocumentation( "IsPure",
        IsElementOfGrothendieckGroup,
        "Returns true if the element has only positive or only negative parts, false otherwise.",
        [ "Characters", "Methods_for_characters" ]
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
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "UnderlyingPolynomial",
        IsElementOfGrothendieckGroup,
        "Returns the underlying polynomial.",
        "an Laurent polynomial",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ExteriorPowers",
        IsElementOfGrothendieckGroup,
        "Returns the exterior powers of the Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "BaseSpace",
        IsElementOfGrothendieckGroup,
        "Returns the graded character of the base space.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "Socle",
        IsElementOfGrothendieckGroup,
        "Returns the graded socle.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "HomogeneousParts",
        IsElementOfGrothendieckGroup,
        "Returns all the homogeneous parts.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "DualOfBaseSpace",
        IsElementOfGrothendieckGroup,
        "Returns the dual of the graded character of the base space.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );
        
DeclareAttributeWithDocumentation( "Dual",
        IsElementOfGrothendieckGroup,
        "Returns the dual of a graded character.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ChernCharacter",
        IsElementOfGrothendieckGroup,
        "Returns the ChernCharacter",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );
                
DeclareAttributeWithDocumentation( "RankOfObject",
        IsElementOfGrothendieckGroup,
        "Returns the Rank",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );        

DeclareAttributeWithDocumentation( "PositivePart",
        IsElementOfGrothendieckGroup,
        "Returns the positive part of a Grothendieck ring element.",
        "a graded Grothendieck group element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "NegativePart",
        IsElementOfGrothendieckGroup,
        "Returns the negative part of a Grothendieck ring element.",
        "a graded Grothendieck group element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "DeterminantOfBaseSpace",
        IsElementOfGrothendieckGroup,
        "Returns the graded character of the base space.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "DualOfExteriorPowersOfBaseSpace",
        IsElementOfGrothendieckGroup,
        "Returns the dual of the exterior powers of the graded character of the base space.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "TipOfModule",
        IsElementOfGrothendieckGroup,
        "Returns the head of a graded character.",
        "a graded Grothendieck group element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "BottomOfModule",
        IsElementOfGrothendieckGroup,
        "Returns the head of a graded character.",
        "a graded Grothendieck group element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ProjectiveCoverOfTip",
        IsElementOfGrothendieckGroup,
        "Returns the projective cover of a given tip.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ProjectiveCover",
        IsElementOfGrothendieckGroup,
        "Returns the projective cover of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "InjectiveHullOfBottom",
        IsElementOfGrothendieckGroup,
        "Returns the injective hull of a given bottom.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "InjectiveHull",
        IsElementOfGrothendieckGroup,
        "Returns the injective hull of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "InjectiveProjectiveSaturation",
        IsElementOfGrothendieckGroup,
        "Returns the injective hull of the projective syzygy of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ProjectiveInjectiveSaturation",
        IsElementOfGrothendieckGroup,
        "Returns the injective hull of the injective syzygy of a Grothendieck ring element.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ValuesOfBettiTable",
        IsElementOfGrothendieckGroup,
        "Returns the values of the Betti table in a certain range.",
        "a list",
        "chi",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "HilbertPolynomial",
        IsElementOfGrothendieckGroup,
        "Returns the Hilbert polynomial.",
        "a univariate polynomial",
        "chi",
        [ "Characters", "Methods_for_characters" ]
        );
        
DeclareAttributeWithDocumentation( "EulerCharacteristic",
        IsElementOfGrothendieckGroup,
        "Returns the Euler Characteristic.",
        "an element of a Grothendieck ring",
        "chi",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ElementOfGrothendieckGroup",
        IsElementOfGrothendieckGroup,
        "Returns the corresponding element of the Grothendieck group.",
        "a Grothendieck group element",
        "chi",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ChernPolynomial",
        IsElementOfGrothendieckGroup,
        "Returns the corresponding Chern polynomial.",
        "a Chern polynomial with rank",
        "chi",
        [ "Characters", "Methods_for_characters" ]
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
        [ "Characters", "Methods_for_characters" ]
        );

DeclareOperationWithDocumentation( "SymmetricPower",
        [ IsElementOfGrothendieckGroup, IsInt ],
        "Returns the <A>e</A>-th symmetric powers of the <A>chi</A>.",
        "a graded ring element",
        "chi, e",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareOperationWithDocumentation( "Cokernel",
        [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ],
        "Returns the cokernel of the unique map from <A>chi</A> to <A>psi</A>.",
        "a graded relative ring element",
        "chi, psi",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareOperationWithDocumentation( "Kernel",
        [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ],
        "Returns the kernel of the unique map from <A>chi</A> to <A>psi</A>.",
        "a graded relative ring element",
        "chi, psi",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareOperationWithDocumentation( "SyzygyObject",
        [ IsInt, IsElementOfGrothendieckGroup ],
        "Returns the <A>i</A>-th syzyies object of <A>chi</A>.",
        "a graded relative ring element",
        "i, chi",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareOperationWithDocumentation( "CosyzygyObject",
        [ IsInt, IsElementOfGrothendieckGroup ],
        "Returns the <A>i</A>-th syzyies object of <A>chi</A>.",
        "a graded relative ring element",
        "i, chi",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareOperationWithDocumentation( "VerticalShift",
        [ IsElementOfGrothendieckGroup, IsInt ],
        "Returns the i-th shift of chi.",
        "a graded relative ring element",
          "chi, i",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareOperationWithDocumentation( "Twist",
        [ IsElementOfGrothendieckGroup, IsInt ],
        "Returns the i-th twist of chi.",
        "a graded relative ring element",
        "chi, i",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareOperationWithDocumentation( "GradedHom",
        [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ],
        "Returns the internal Hom of two graded characters.",
        "two graded Grothendieck ring elements",
        [ "Characters", "Methods_for_characters" ]
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
