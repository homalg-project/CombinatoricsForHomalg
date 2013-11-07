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

#! @Description
#!  Returns if the element is of equi-degree.
#! @ChapterInfo Characters, Methods for characters
DeclareProperty( "IsEquiDegree",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns true if the element has only positive or only negative parts, false otherwise.
#! @ChapterInfo Characters, Methods for characters
DeclareProperty( "IsPure",
                  IsElementOfGrothendieckGroup );


####################################
#
# attributes:
#
####################################

#! @Description
#!  Returns the dimension the base space.
#! @Returns an integer
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "Dimension",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the underlying polynomial.
#! @Returns an Laurent polynomial
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "UnderlyingPolynomial",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the exterior powers of the Grothendieck ring element.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ExteriorPowers",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the graded character of the base space.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "BaseSpace",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the graded socle.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "Socle",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the graded head.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "Head",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns all the homogeneous parts.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "HomogeneousParts",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the dual of the graded character of the base space.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "DualOfBaseSpace",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the dual of a graded character.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "Dual",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the ChernCharacter
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ChernCharacter",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the Rank
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "RankOfObject",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the positive part of a Grothendieck ring element.
#! @Returns a graded Grothendieck group element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "PositivePart",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the negative part of a Grothendieck ring element.
#! @Returns a graded Grothendieck group element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "NegativePart",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the graded character of the base space.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "DeterminantOfBaseSpace",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the dual of the exterior powers of the graded character of the base space.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "DualOfExteriorPowersOfBaseSpace",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the head of a graded character.
#! @Returns a graded Grothendieck group element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "TipOfModule",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the head of a graded character.
#! @Returns a graded Grothendieck group element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "BottomOfModule",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the projective cover of a given tip.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ProjectiveCoverOfTip",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the projective cover of a Grothendieck ring element.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ProjectiveCover",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the injective hull of a given bottom.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "InjectiveHullOfBottom",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the injective hull of a Grothendieck ring element.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "InjectiveHull",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the injective hull of the projective syzygy of a Grothendieck ring element.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "InjectiveProjectiveSaturation",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the injective hull of the injective syzygy of a Grothendieck ring element.
#! @Returns a graded Grothendieck ring element
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ProjectiveInjectiveSaturation",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the values of the Betti table in a certain range.
#! @Returns a list
#! @Arguments chi
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ValuesOfBettiTable",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the Hilbert polynomial.
#! @Returns a univariate polynomial
#! @Arguments chi
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "HilbertPolynomial",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the Euler Characteristic.
#! @Returns an element of a Grothendieck ring
#! @Arguments chi
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "EulerCharacteristic",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the corresponding element of the Grothendieck group.
#! @Returns a Grothendieck group element
#! @Arguments chi
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ElementOfGrothendieckGroup",
                  IsElementOfGrothendieckGroup );

#! @Description
#!  Returns the corresponding Chern polynomial.
#! @Returns a Chern polynomial with rank
#! @Arguments chi
#! @ChapterInfo Characters, Methods for characters
DeclareAttribute( "ChernPolynomial",
                  IsElementOfGrothendieckGroup );


####################################
#
# global functions and operations:
#
####################################

#! @Description
#!  Creates an indeterminate for the use with the Grothendieck-Hilbert polynomials.
#! @Returns an indeterminate
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "VariableForGrothendieckHilbertSeries" );


# basic operations

#! @Description
#!  Returns the <A>e</A>-th exterior powers of the <A>chi</A>.
#! @Returns a graded ring element
#! @Arguments chi, e
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "ExteriorPower",
                  [ IsElementOfGrothendieckGroup, IsInt ] );

#! @Description
#!  Returns the <A>e</A>-th symmetric powers of the <A>chi</A>.
#! @Returns a graded ring element
#! @Arguments chi, e
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "SymmetricPower",
                  [ IsElementOfGrothendieckGroup, IsInt ] );

#! @Description
#!  Returns the cokernel of the unique map from <A>chi</A> to <A>psi</A>.
#! @Returns a graded relative ring element
#! @Arguments chi, psi
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "Cokernel",
                  [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ] );

#! @Description
#!  Returns the kernel of the unique map from <A>chi</A> to <A>psi</A>.
#! @Returns a graded relative ring element
#! @Arguments chi, psi
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "Kernel",
                  [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ] );

#! @Description
#!  Returns the <A>i</A>-th syzyies object of <A>chi</A>.
#! @Returns a graded relative ring element
#! @Arguments i, chi
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "SyzygyObject",
                  [ IsInt, IsElementOfGrothendieckGroup ] );

#! @Description
#!  Returns the <A>i</A>-th syzyies object of <A>chi</A>.
#! @Returns a graded relative ring element
#! @Arguments i, chi
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "CosyzygyObject",
                  [ IsInt, IsElementOfGrothendieckGroup ] );

#! @Description
#!  Returns the i-th shift of chi.
#! @Returns a graded relative ring element
#! @Arguments chi, i
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "VerticalShift",
                  [ IsElementOfGrothendieckGroup, IsInt ] );

#! @Description
#!  Returns the i-th twist of chi.
#! @Returns a graded relative ring element
#! @Arguments chi, i
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "Twist",
                  [ IsElementOfGrothendieckGroup, IsInt ] );

#! @Description
#!  Returns the internal Hom of two graded characters.
#! @Returns two graded Grothendieck ring elements
#! @ChapterInfo Characters, Methods for characters
DeclareOperation( "CombinatorialHom",
                  [ IsElementOfGrothendieckGroup, IsElementOfGrothendieckGroup ] );


# constructors:

#! @Description
#!  Creates an element from a Grothendieck ring.
#! @Returns a homalg ring element
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "ElementOfRing" );

#! @Description
#!  Creates an element from a graded Grothendieck ring.
#! @Returns a homalg ring element
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "ElementOfGradedRing" );

#! @Description
#!  Creates an element from a graded relative Grothendieck ring.
#! @Returns a homalg ring element
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "ElementOfGradedRelativeRing" );

#! @Description
#!  Creates an element from a graded relative Grothendieck ring.
#! @Returns a homalg ring element
#! @ChapterInfo Characters, Constructors
DeclareGlobalFunction( "FreeElementOfGradedRelativeRing" );
