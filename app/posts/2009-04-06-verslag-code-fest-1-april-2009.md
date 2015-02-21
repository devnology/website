---
layout: post
title: "Verslag Code Fest 1 april 2009"
---

[![smiles](http://farm4.static.flickr.com/3556/3410696817_8b6e08d32e_m.jpg)](http://www.flickr.com/photos/devnology/sets/72157616332611310/ "Meer foto")Op dit eerste Code Fest was de case het uitwerken van het klassieke [Game of Life](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) in een taal en platform naar keuze. Na het genieten van een broodje in het namiddagzonnetje op het terras van [Sogyo](http://www.sogyo.nl "Sogyo website") werden de handen uit de mouwen gestoken. Het deelnemersaantal was van tevoren op een maximum van 16 gezet, en dit bleek tijdens de avond een prettig aantal.

De meeste deelnemers kregen tegen het eind van de avond de gelegenheid hun oplossing te demonstreren, en er waren goede discussies, die in een prettige ongedwongen sfeer plaatsvonden. De verscheidenheid en creativiteit in oplossingen die door de deelnemers ten toon werd gespreid was opvallend.

Joep liet ons zien dat [Flex](http://www.adobe.com/products/flex/ "Flex product pagina") vele mogelijkheden tot grafische weergave kent, en met Flexbuilder zijn deze relatief eenvoudig te realiseren. Wel vond men dat er nog veel 'plumbing code' nodig was, maar met een volwassen IDE hoeft dat geen probleem te zijn.

De (denkbeeldige) prijs voor de minste regels code ging naar Ralf, wiens oplossing in de functionele en dynamische taal [Erlang](http://erlang.org/ "Officiele Erlang website") in een paar regels was gevat. De GUI erbij kenmerkte zich hierbij door een retro-look.

De andere functionele taal die aan bod kwam was [Haskell](http://www.haskell.org/), hiervan liet Sander ons zien dat de meeste code de UI beschreef. In vergelijking met Erlang valt hierbij op dat Haskell een veel stricter type systeem heeft. Over het algemeen is de opbouw van een UI niet het sterkste punt van functionele talen, en ook bij Haskell was dat te merken.

Riccardo liet zien hoe je verschillende problemen, en dus ook de Game of Life, kunt beschrijven in [Alloy](http://alloy.mit.edu/), waarna deze de verschillende permutaties aan oplossingen doorloopt en de juiste oplossing toont. De toepasbaarheid van Alloy lijkt voorlopig vooral van academische aard, maar het concept erachter was in vergelijking met de andere oplossing een buitenbeentje en juist daarom interessant. Het lijkt een prima omgeving om [eXploratory Modeling](http://www.cincomsmalltalk.com/blog/blogView?showComments=true&amp;printTitle=eXploratory_Modeling_at_ESUG_2008&amp;entry=3404625062 "eXploratory_Modeling_at_ESUG_2008&amp;entry=3404625062") in toe te passen.

Frank had gekozen voor plain old Java, bij de presentatie van zijn oplossing ontstond een leuke discussie over hoe men het beste met state om kon gaan bij de implementatie. Zijn oplossing was hierdoor geoptimaliseerd voor state management, maar helaas kwam dat er niet uit vanwege een andere bottleneck, namelijk het schrijven naar de console output.

Frans had zijn GL omgeving die hij rond 2001 gebruikte in de demo scene afgestoft en deed ons versteld staan met een heuse 3d showcase, inclusief muziek. Wanneer zijn eerste game wordt uitgebracht is nog niet duidelijk.

We hadden door Rick's inspanningen een heuse implementatie in de Cloud, gerealiseerd met behulp van de Google App Engine via een Python script. Je kunt deze aan het werk zien via [http://game-of-life.appspot.com](http://game-of-life.appspot.com/).

 Matthijs had het op zich genomen om met [CosMos](http://www.gocosmos.org/ "Comsos website") een nieuw operating systeem te maken, welke de Game of Life zou implementeren. Met Cosmos richt men zich vooral op embedded software voor devices, en het was leuk om te zien hoe we nu na Windows en Linux ook een Game of Life OS hebben. Aan een blue screen of death was Matthijs helaas niet toegekomen.

Daar het al laat werd is niet iedere oplossing aan bod gekomen, en Smalltalk en .Net (Spec#, WPF, Silverlight) komen daarom wellicht een andere keer aan bod.
Na wat stemronden was Riccardo met zijn demonstratie van Alloy de gelukkige winnaar van een licentie van Jetbrains naar keuze. Hoewel Riccardo aangeeft dat hij bij voorkeur technologie agnostisch te werk gaat het gerucht dat hij hierbij toch kiest voor [IntelliJ IDEA](http://www.jetbrains.com/idea/index.html "IntelliJ IDEA product informatie"). Gefeliciteerd Riccardo!

[![](http://farm4.static.flickr.com/3663/3411494040_c63f3246c1_s.jpg) ![](http://farm4.static.flickr.com/3408/3410695049_7aa7472853_s.jpg) ![](http://farm4.static.flickr.com/3329/3411505708_f5957e0f61_s.jpg) ![](http://farm4.static.flickr.com/3589/3411500558_b6867fb468_s.jpg) ![](http://farm4.static.flickr.com/3388/3410694153_25b91a3359_s.jpg) ![](http://farm4.static.flickr.com/3334/3410684681_d7641f7c9f_s.jpg) ![](http://farm4.static.flickr.com/3321/3411498844_d926af1ae3_s.jpg) ![](http://farm4.static.flickr.com/3579/3411502686_530cceec36_s.jpg)](http://www.flickr.com/photos/devnology/sets/72157616332611310/ "Meer foto")
