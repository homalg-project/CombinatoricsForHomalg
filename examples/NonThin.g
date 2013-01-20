## Sebastian Posur <Sebastian.Posur@rwth-aachen.de>
## To: Mohamed Barakat <mohamed.barakat@rwth-aachen.de>
## Re: Liste treuer Charaktere
## 
## Hallo Mohamed,
## 
## ich möchte dir noch eine Beobachtung zur 1-Dünnheit mitteilen, die auf Experimenten
## mit CombinatoricsForHomalg basiert:
## Zunächst einmal kann es nicht passieren, dass in der Tabelle einer k-Auflösung
## in einer Spalte zwei direkt hintereinander stehende Kohomologien ungleich 0 sind (dies ist
## einfach zu beweisen).
## Ich habe mir deshalb die Frage gestellt, wie es mit Kohomolgien in einer Spalte aussieht, die
## weiter voneinander entfernt liegen (also beispielsweise H^2 und H^0).
## 
## Ich glaube, dass folgende Aussage richtig ist:
## Für jedes n > 0 gibt es einen graduierten k-Modul K_1, sodass
## die k-Auflösung von K_1 n Schritte lang folgende Eigenschaften erfüllt:
## 1.) die Auflösung ist "zulässig" in dem Sinne, dass die Sockel
##     niemals zu breit sind
## 2.) es existiert mindestens eine Spalte in der Tabelle der k-Auflösung
##     welche die 1-Dünnheit verletzt.
## 
## Die k-Moduln K_1, die mich zu dieser Vermutung geführt haben sind von der Gestalt
## 
## ElementOfGradedRelativeRing( [ [ d, -2 ], [ 4, -1 ], [ 1, 0 ] ], 5 )
## 
## mit d geeignet, z.B.
## 
## d = 11 => n = 3
## d = 12 => n = 4
## d = 13 => n = 5
## d = 19 => n = 6
## d = 38 => n = 7
## d = 94 => n = 8
## d = 266 => n = 9
## d = 820 => n = 10
## d = 2686 => n = 11
## 
## Es gibt also ein paar "gefährliche" Startmoduln K_1 in dem Sinne, dass
## sie lange "regulär" aussehen.
## 
## Schöne Grüße
## 
## Sebastian

chiV := 5;

K_1 := [ [ 11, -2 ], [ 4, -1 ], [ 1, 0 ] ];

LoadPackage( "CombinatoricsForHomalg" );

K_1 := ElementOfGradedRelativeRing( K_1, chiV );

Assert( 0, IsZero( ProjectiveInjectiveSaturation( K_1 ) - K_1 ) );
Assert( 0, IsZero( InjectiveProjectiveSaturation( K_1 ) - K_1 ) );
