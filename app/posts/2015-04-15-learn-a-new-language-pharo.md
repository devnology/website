---
layout: post
title: "Learn a new language: Pharo"
---

Dit verslag is geschreven door Kees Kremer ([@kremerk](https://twitter.com/kremerk "Kees Kremer")). Bedankt Kees!

![Learn a Language: Pharo](/images/stories/articles/pharo.jpg)  

Op 1 April mochten we in Arnhem kennis maken met de taal Pharo. Luminis had voor ons haar faciliteiten beschikbaar gesteld. De meeting werd afgetrapt met pizza en een drankje.

Daarna begonnen Stephan Eggermont en Diego Lont met de aftrap. Pharo is een open source Smalltalk implementatie met een actieve gemeenschap. Complexiteit van software is een steeds groter probleem, Pharo kan daar een oplossing voor bieden. Het bevat late-binding,  is volledig object georienteerd, gebruikt message passing en heeft goede ontwikkeltooling waarbij de omgeving een constante feedback geeft.

Bij de opdracht die we gingen uitvoeren kregen we direct de  ontwikkeltooling, te zien. De omgeving was op te starten door het dowloaden van een Pharo-image. Die konden we openen en in dat image zat zowel het deel van de opgaven als de ontwikkeltooling. We hoefden dus niet een compiler, IDE en opgaven te installeren. Het downloaden van een image voldoet.

De opgave bestond uit het implementeren van “1 euro + 100 cent = 2 euro” . Hiervoor gingen we een test schrijven waarvan het de bedoeling was dat deze ging slagen. Het bijzondere was bij het runnen van de test de Debugger (die ook in het Pharo Image zit) op kwam (1 does not understand: euro) waarna vanuit de debugger de methode euro op getal kon worden gedefinieerd. Verschillende acties moesten worden uitgevoerd om de test te laten slagen, alles vanuit de debugger. Niet TestDrivenDesign maar DebugDrivenDesign. Blijkbaar kan een debugger hier ook kan worden gebruikt om nieuwe zaken te maken. 

Daarna gingen we op zoek naar mogelijkheden binnen het image. We zagen een deel van het metaprogrammeren, de tooling die de code visualiseert. Daarmee was de complexiteit van de code in kaart gebracht. We zagen de classbrowser en gingen op zoek en vonden de implementatie van het if statement.

Naast dat we met de taal Pharo kennis maakten, was er ook voldoende ruimte voor discussie en vragen.  Smalltalk is geen mainstream taal, maar in bepaalde hoeken wordt het intensief gebruikt. Zoals plekken waar de software veranderende complexe zaken moet automatiseren (zoals binnen het bankwezen) of grote database systemen (Gemstone op Pharo). De Pharo ontwikkelaars gaven aan dat de productiviteit met Smalltalk/Pharo substantieel hoger ligt dan bij andere programmeertalen. Waarna we een discussie hadden over “Stel dat een programmeertaal bewezen efficiënter is zou management hiervoor durven/moeten/kunnen kiezen?”. Ook hadden we het over de problemen waar we tegen aan lopen, zoals performance bij updaten van grote hoeveelheden gebruikers. Een leuke levendige discussie.

Deze avond hebben we veel gezien. Het concept van het werken via een image biedt veel voordelen voor een avond zoals deze: iedereen was zo up en running en omdat het image een volwassen ontwikkel systeem aan boord heeft is het eenvoudig om opdrachten uit te werken. Verassend te zien dat hierbij zowel volwassen ontwikkeltooling als alle code beschikbaar is in zo weinig Mb’s.

Voor we het wisten was de avond ten einde. Een geslaagde avond bij Luminis (ze zoeken nog mensen!)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/LlKPcpsF29iInj" marginwidth="0" marginheight="0" scrolling="no" allowfullscreen="allowfullscreen" frameborder="0" height="355" width="425"></iframe>

<div>**[Pharo devnology20150401](//www.slideshare.net/StephanEggermont/pharo-devnology20150401 "Pharo devnology20150401")** from **[Stephan Eggermont](//www.slideshare.net/StephanEggermont)**</div>
