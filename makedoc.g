##  this creates the documentation, needs: GAPDoc package, latex, pdflatex,
##  mkindex, dvips
##  
##  Call this with GAP.
##

LoadPackage( "AutoDoc" );

PrintTo( "VERSION", PackageInfo( "CombinatoricsForHomalg" )[1].Version );

AutoDoc(
    "CombinatoricsForHomalg" : 
    autodoc := true,
    scaffold := false,
    maketest := true
);



QUIT;

