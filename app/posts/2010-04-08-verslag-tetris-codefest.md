---
layout: post
title: "Verslag Tetris codefest"
---

<span class="info">Dit verslag is geschreven door Mendelt Siebenga([@mendelt](http://twitter.com/mendelt)) . Bedankt Mendelt!</span>

[![](images/stories/Events/tetris.xkcd.png)](http://www.xkcd.com/724/)Op woensdag 7 April waren we welkom op het Delftse kantoor van [OGD
](http://www.ogd.nl/)voor het Devnology Tetris Codefest. De OGD heeft een makkelijk bereikbaar
 kantoor aan de rand van Delft met op de bovenste verdieping een kantine
 voorzien van bar, dakterras, flipperkast en een arcade machine. Kortom
een goede plek om met een stel programmeurs een avond lang in code te
duiken.

Natuurlijk moest er eerst gegeten worden. Onder het genot
van enkele biertjes, frisdrank en de indrukwekkende hoeveelheid chinees
die door onze gastheer was besteld werden alvast de verschillende Tetris
 implementaties waar iedereen mee bezig was geweest besproken.

Na
het eten kregen de deelnemers nog een half uur de tijd om de laatste
hand te leggen aan hun code, hierna gingen we van start. Het was leuk om
 te zien dat er grote verschillen waren in aanpak. De meest in het oog
springende versies waren de Tetris compiler in ANTLR en Tetris in SQL.

De
 ANTLR versie gebruikte een met ANTLR gegenereerde parser voor het
inlezen van tekst-bestanden met Tetris spelsituaties waarna een stukje
Java code zich gedroeg als speler en de juiste zetten deed. De
resulterende spelsituaties werden weer in een tekst-bestand
weggeschreven en kon als invoer dienen voor de parser waarna de java
code een volgende zet kon verzinnen. Hiermee was meteen de grootste
onvolkomenheid in traditionele Tetris implementaties geëlimineerd, de
menselijke speler.

De SQL versie gebruikte een database voor het
opslaan van spelsituaties. Alle logica zoals het draaien van stenen en
dergelijke was in SQL geschreven. De gebruikersinterface was geschreven
in C#. Veel van de logica in Tetris is erg goed in SQL set-based
operaties uit te drukken, dus dit was niet eens zo'n gekke
implementatie.

Ook de OGD zelf had ook een inzending. Zij
demonstreerden een C# versie die normaal voor de interne
programmeer-cursussen gebruikt werd. Dit was duidelijk de meest
uitgebreide versie met een tetromino editor waar gebruikers zelf nieuwe
blokken mee kunnen bouwen en meerdere front-ends voor verschillende UI
frameworks. Verder werden nog een compleet functionele aanpak in Haskel
gedemonstreerd, een functionele implementatie in Scala met een Java en
JavaFX front-end. Twee Javascript versies en een Python Tetris.

Behalve
 de verschillende programmeertalen was het ook erg leerzaam om
verschillen in aanpak te vergelijken. Implementatie-details zoals het
roteren van blokken dat op een aantal verschillende manieren
geimplementeerd was tot verschillen in methodologie, van TDD tot
testloos en van functioneel to OO.

Helaas was er niet genoeg tijd
om alle Tetrissen te bespreken, wat dat betreft was het goed dat geen
van de drie aanwezige Devnology bestuursleden code had meegenomen, ze
hebben het natuurlijk al druk genoeg met het organiseren van dit soort
events. Ik zou hun en de mensen van de OGD graag willen bedanken voor
een leuke en leerzame avond.

[
![](http://farm3.static.flickr.com/2721/4502520724_4e80b669d5_s.jpg)
 ![](http://farm3.static.flickr.com/2754/4501747183_715d9e0aa2_s.jpg) 

![](http://farm3.static.flickr.com/2743/4502381938_98587f1d5d_s.jpg)&nbsp;
![](http://farm3.static.flickr.com/2802/4502382162_8b956491f5_s.jpg)

![](http://farm3.static.flickr.com/2758/4501747273_816ce25630_s.jpg)

![](http://farm5.static.flickr.com/4042/4501887561_cbd43dc576_s.jpg)&nbsp;
![](http://farm5.static.flickr.com/4070/4503056303_ecef364215_s.jpg)&nbsp;](http://www.flickr.com/photos/devnology/sets/72157623678582675/)

*   De code voor de Tetris DSL van Jeroen van den Bos is te vinden op [http://github.com/jvdb/tetrisdsl](http://github.com/jvdb/tetrisdsl)

*   Michel Rijnders heeft zijn Haskell beschikbaar gesteld op [http://github.com/rmies/tetris](http://github.com/rmies/tetris)

*   Arjen van Schie heeft een implementatie in JavaFX, Java en Scala op [http://github.com/schiean/tetris](http://github.com/schiean/tetris)

*   Je kunt Mendelt's implementatie in Javascript volgen op zijn blog [http://mendeltsiebenga.com/](http://mendeltsiebenga.com/)
