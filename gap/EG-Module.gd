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

#! @Description
#!  Returns the Grothendieck ring of the character table.
#! @Returns a ring
#! @ChapterInfo Characters, Constructors
DeclareAttribute( "GrothendieckRing",
                  IsCharacterTable );

#! @Description
#!  Returns the character table of the group.
#! @Returns a character table
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "UnderlyingCharacterTable",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Forget the group action and return the graded character.
#! @Returns a graded Grothendieck ring element
#! @Arguments chi
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ForgetGroupAction",
                  IsElementOfGrothendieckGroup );


####################################
#
# global functions and operations:
#
####################################

# basic operations

#! @Description
#!  Returns the decomposition of the class function <A>chi</A>,
#!  i.e., a list including the character table and a list of pairs.
#!  The second entry of each pair is an irreducible character and the first entry is its multiplicity in <A>chi</A>.
#! @Returns a list with two entries
#! @Arguments chi
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "Coefficients",
                  [ IsClassFunction ] );

DeclareOperation( "CommonCharacters",
                  [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ] );

# constructors:

#! @Description
#!  Creates an element from a Grothendieck ring.
#! @Returns a homalg ring element
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "ElementOfGrothendieckRingOfGroup" );

#! @Description
#!  Creates an element from a graded Grothendieck ring.
#! @Returns a homalg ring element
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "ElementOfGradedGrothendieckRingOfGroup" );

#! @Description
#!  Creates an element from a graded relative Grothendieck ring.
#! @Returns a homalg ring element
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "ElementOfGradedRelativeGrothendieckRingOfGroup" );

#! @Description
#!  Creates an element from a graded relative Grothendieck ring.
#! @Returns a homalg ring element
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "FreeElementOfGradedRelativeGrothendieckRingOfGroup" );
