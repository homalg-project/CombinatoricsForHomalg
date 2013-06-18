eps := E(5);

g1 := [[0,1,0,0,0],[0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,1],[1,0,0,0,0]];
g2 := DiagonalMat([1,eps,eps^2,eps^3,eps^4]);
n1 := PermutationMat((2,5)(3,4),5);
n2 := -1*PermutationMat( (2,3,5,4),5);
n3 := DiagonalMat([1,eps,eps^4,eps^4,eps]);
n4 := -1*ER(5)^(-1)* [[eps,eps^2,eps^3,eps^4,1],[eps^2,eps^4,eps,eps^3,1],[eps^3,eps,eps^4,eps^2,1],[eps^4,eps^3,eps^2,eps,1],[1,1,1,1,1]];

N := Group(g1,g2,n1,n2,n3,n4);

CC := ConjugacyClasses(N);
ct := CharacterTable(N);
V := Character(ct,List(CC,i->Trace(Representative(i))));
W := ComplexConjugate(V);
