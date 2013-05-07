##  this creates the documentation, needs: GAPDoc package, latex, pdflatex,
##  mkindex, dvips
##  
##  Call this with GAP.
##

LoadPackage( "GAPDoc" );

SetGapDocLaTeXOptions( "utf8" );

bib := ParseBibFiles( "doc/CombinatoricsForHomalg.bib" );
WriteBibXMLextFile( "doc/CombinatoricsForHomalgBib.xml", bib );

Read( "ListOfDocFiles.g" );

PrintTo( "VERSION", PackageInfo( "CombinatoricsForHomalg" )[1].Version );

MakeGAPDocDoc( "doc", "CombinatoricsForHomalg", list, "CombinatoricsForHomalg" );

GAPDocManualLab("CombinatoricsForHomalg");

QUIT;

