## Sebastian Posur <Sebastian.Posur@rwth-aachen.de>
## To: Mohamed Barakat <mohamed.barakat@rwth-aachen.de>
## Chernpolynome mit nicht ganzzahligen Koeffizienten
## 
## Hallo Mohamed,
## 
## bei der Vektorbündelsuche habe ich folgendes Beispiel entdeckt:
## 
## K0 := ElementOfGradedRelativeRing( [ [ 3, -1 ], [ 10, 0 ], [ 5, 1 ], [ 1, 2 ] ], 5 );
## 
## ProjectiveInjectiveSaturation( K0 ) - K0;
## 
## InjectiveProjectiveSaturation( K0 ) - K0;
## 
## ChernPolynomial( K0 );
## 
## Es handelt sich um einen in obigen Sinne saturierten Modul bei dem die
## Chernpolynomrechnung den Fehler wirft, die Koeffizienten seien nicht
## ganzzahlig.
## Das Beispiel ist bei der A_5 aufgetreten.
## Wäre es möglich, rationale Koeffizienten beim Chernpolynom im Programm
## zuzulassen? Anderenfalls stürzt die Suche in diesen Fällen derzeit ab.
## 
## Gruß
## 
## Sebastian

LoadPackage( "CombinatoricsForHomalg" );

K0 := ElementOfGradedRelativeRing( [ [ 3, -1 ], [ 10, 0 ], [ 5, 1 ], [ 1, 2 ] ], 5 );
Assert( 0, IsZero( ProjectiveInjectiveSaturation( K0 ) - K0 ) );
Assert( 0, IsZero( InjectiveProjectiveSaturation( K0 ) - K0 ) );
chi := HilbertPolynomial( K0 );
Assert( 0, not IsNumerical( chi ) );
