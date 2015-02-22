---
layout: post
title: "Python en de Google AppEngine op het Code Fest"
---

Verslag geschreven door Rick van der Arend. Meer lezen van Rick? Bezoek dan zijn blog op: [codeagle.com](http://codeagle.com)

Op 1 april vond het eerste Devnology CodeFest plaats. Er was een mooie groep van 16 enthousiastelingen verzameld op de Sogyo boerderij voor het maken van een implementatie van the Game of Life, de bekende cellulaire automaat bedacht door Conway.

Mijn doel voor deze avond was het maken van een implementatie van the Game of Life in Python en deze te hosten in de Google AppEngine. Een aardige uitdaging, aangezien mijn kennis van Python niet veel verder ging dan dat het whitespace significant scripttaal is waar regelmatig het keyword def in voorkomt en dat deze taal ontwikkeld is door Guido van Rossum. Oh en natuurlijk dat deze taal tegenwoordig door Google omarmd is, wat niet geheel toevallig samenging met het feit dat Guido voor Google is gaan werken.

Enfin, ik had anderhalf uur om Python en de Google AppEngine te leren kennen en er de game-of-life in te implementeren. Dat is dus gelukt. (Zie [game-of-life.appspot.com](http://game-of-life.appspot.com)). Dit lijkt me een flinke opsteker voor de makers van de Google AppEngine SDK. Je hebt twee belangrijke handelingen nodig om een applicatie te ontwikkelen voor de AppEngine: uitproberen en uploaden. En inderdaad, daar hoef je dus ook echt maar twee commando's ([dev_appserver.py](http://code.google.com/appengine/docs/python/tools/devserver.html) en [appcfg.py](http://code.google.com/appengine/docs/python/tools/uploadinganapp.html)) voor te kennen en te gebruiken. En het werkt gewoon: heel erg netjes. Python was iets meer werk om in thuis te geraken, maar viel eigenlijk ook best mee. Het hielp waarschijnlijk wel dat ik een aantal jaar in PHP geprogrammeerd heb. Hoewel ze behoorlijk wat verschillen hebben, zijn beide dynamische scripttalen en dat helpt toch wel om met kennis van de &eacute;&eacute;n, thuis te geraken in de ander.

De avond was voor mij persoonlijk dus succesvol, maar zeker ook voor de hele groep. Iedereen was zich duidelijk aan het vermaken en waarschijnlijk ook wel hier en daar iets nieuws aan het leren. Erg interessant om te zien wat anderen ervan gemaakt hebben. Een 3D versie, een Erlang versie, JavaFx, een OS versie in Cosmos, je kunt het zo gek niet bedenken. Met live commentaar van de maker, uiteraard. Hopelijk is iedereen er een volgende keer weer bij.
