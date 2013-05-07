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

DeclareAttributeWithDocumentation( "GrothendieckRing",
        IsCharacterTable,
        "Returns the Grothendieck ring of the character table.",
        "a ring",
        [ "Characters", "Constructors" ]
        );

DeclareAttributeWithDocumentation( "UnderlyingCharacterTable",
        IsElementOfGrothendieckGroup,
        "Returns the character table of the group.",
        "a character table",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "DualCharacter",
        IsElementOfGrothendieckGroup,
        "Returns the dual of a graded character.",
        "a graded Grothendieck ring element",
        [ "Characters", "Methods_for_characters" ]
        );

DeclareAttributeWithDocumentation( "ForgetGroupAction",
        IsElementOfGrothendieckGroup,
        "Forget the group action and return the graded character.",
        "a graded Grothendieck ring element",
        "chi",
        [ "Characters", "Methods_for_characters" ]
        );

####################################
#
# global functions and operations:
#
####################################

# basic operations

DeclareOperationWithDocumentation( "Coefficients",
        [ IsVirtualCharacter ],
        [ "Returns the decomposition of the virtual character <A>chi</A>,",
          "i.e., a list including the character table and a list of pairs.",
          "The second entry of each pair is an irreducible character and the first entry is its multiplicity in <A>chi</A>." ],
        "a list with two entries",
        "chi",
        [ "Characters", "Methods_for_characters" ]
        );

# constructors:

DeclareGlobalFunctionWithDocumentation( "ElementOfGrothendieckRingOfGroup",
        "Creates an element from a Grothendieck ring.",
        "a homalg ring element",
        [ "Characters", "Constructors" ]
        );

DeclareGlobalFunctionWithDocumentation( "ElementOfGradedGrothendieckRingOfGroup",
        "Creates an element from a graded Grothendieck ring.",
        "a homalg ring element",
        [ "Characters", "Constructors" ]
        );

DeclareGlobalFunctionWithDocumentation( "ElementOfGradedRelativeGrothendieckRingOfGroup",
        "Creates an element from a graded relative Grothendieck ring.",
        "a homalg ring element",
        [ "Characters", "Constructors" ]
        );

DeclareGlobalFunctionWithDocumentation( "FreeElementOfGradedRelativeGrothendieckRingOfGroup",
        "Creates an element from a graded relative Grothendieck ring.",
        "a homalg ring element",
        [ "Characters", "Constructors" ]
        );
