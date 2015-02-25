---
layout: post
title: "Verslag Rascal workshop"
---

<span class="info">Dit verslag is geschreven door Jeroen van den Bos ([@jvandenbos](http://twitter.com/jvandenbos)) . Bedankt Jeroen!</span>

In het indrukwekkende pand van [TTY](http://www.tty.nl) in het hartje van Amsterdam
organiseerde Devnology haar tiende maandelijkse bijeenkomst. Het doel
deze avond was om de metaprogrammeertaal [Rascal](http://www.rascal-mpl.org/) te leren kennen door er
met z'n allen een aantal problemen mee op te lossen -- de beste manier
om een programmeertaal te leren kennen is tenslotte om er iets nuttigs
mee te doen.

[Jurgen Vinju](http://jurgen.vinju.org/) starte het
programma met een korte introductie over de achtergrond van de taal
Rascal, waarin hij vooral inging op waar je het nou voor zou kunnen
gebruiken. Een belangrijke conclusie is dat het domein van Rascal erg
groot is: van software analyse tot de implementatie van refactorings en
van grootschalige automatische migratie tot de ontwikkeling en
constructie van volledige compilers voor domein-specifieke talen.

Daarna
 richtte Jurgen zich op praktische details om met Rascal aan de slag te
gaan. Om het makkelijk te maken om met de taal te beginnen lijkt de
syntax sterk op Java. Vrijwel alle bekende constructies zijn aanwezig,
behalve de object-georienteerde, die ontbreken vrijwel volledig. Naast
de vertrouwde syntax zijn er dan heel veel functies, zowel in de taal
zelf als in de bijgeleverde bibliotheken die de specifieke
metaprogrammeertaken vergemakkelijken. Zaken als het automatisch
extraheren van feiten uit Java-projecten, ingebouwde ondersteuning voor
het visitor-pattern, het simpel definieren en werken met bomen van
datastructuren en het visualiseren van allerlei relaties.

Tijd
 voor actie! Jurgen stelde voor om eerst even de syntax te oefenen door
een programma te schrijven dat alle priemgetallen teruggeeft tussen 1 en
 100. Een aantal minuten later al waren er diverse oplossingen, waarvan
de volgende de uitdrukkingskracht van Rascal goed laat zien:

`[p | p <- [1..100], all(i <- [2..p], p != i ==> p % i !=0)]`

Het
 echte werk lonkte: het analyseren van een Java project. Door de
functies om allerlei feiten uit een Eclipse Java project te extraheren
heb je in een paar statements een flinke dataset tot je beschikking
waarmee je door middel van uitgebreide analyses (die veelal qua vorm
sterk lijken op de voorbeeldregel hierboven) andere datasets kunt
opbouwen. Om uiteindelijk inzicht te krijgen in de resultaten kan dan de
 visualisatiebibliotheek van Rascal worden aangeroepen, die in veel
gevallen via een enkele aanroep een aangeleverde datastructuur omzet in
een te kiezen visualisatie, van pie charts en diagrammen tot word clouds
 of complexere plaatjes.

Het mag duidelijk zijn dat Rascal een
 speciale domein-specifieke taal is. Waar veel DSLs een zeer beperkte
uitdrukkingskracht hebben (vaak om de focus heel smal te houden) is
Rascal een zeer omvangrijke en breed inzetbare taal. Dit zorgt ervoor
dat de metaprogrammeur zich niet hoeft in te houden in het soort
analyses dat hij wil uitvoeren. Het domein-specifieke zit hem hier dan
ook duidelijk in alles dat er extra in of bij de taal wordt geleverd.
Deze functies zijn puur gericht op het domein van Rascal en zorgen
ervoor dat je je niet overmatig hoeft bezig te houden met zaken als data
 importeren of resultaten visualiseren. Dat gaat allemaal vrijwel
vanzelf. Zo kun je al je aandacht richten op het schrijven van
effectieve analyses.

Dat deden de Devnology bezoekers dan ook
zeer fanatiek, waardoor er flink wat t-shirts zijn uitgedeeld voor het
snelst oplossen van een van de opgaven. Uiteindelijke winnaars van de
avond waren echter het duo [@Rick](http://twitter.com/rvdarend) en [@Frank](http://twitter.com/frankgeerlings), die het tijdens de bijeenkomst
op zich namen om een bug in de Windows-versie van Rascal ter plekke op
te lossen.

De presentatie en opgaven van deze avond zijn te
vinden op de [website
 van Rascal](http://www.rascal-mpl.org/Rascal/Documentation).

[
![](http://farm3.static.flickr.com/2757/4406309162_4a66376d1b_s.jpg)
 ![](http://farm3.static.flickr.com/2800/4405543991_38a8a14c97_s.jpg)
![](http://farm3.static.flickr.com/2801/4405544753_06fd3804d1_s.jpg)&nbsp;
![](http://farm3.static.flickr.com/2727/4405545057_8b30560e9f_s.jpg)

![](http://farm5.static.flickr.com/4043/4408501064_edc77c3311_s.jpg)
![](http://farm5.static.flickr.com/4004/4408500514_8c4da0fd78_s.jpg)&nbsp;
![](http://farm3.static.flickr.com/2716/4407736915_dde3614b1d_s.jpg)&nbsp;](http://www.flickr.com/photos/devnology/sets/72157623552682234/)

<div style="width: 425px;" id="__ss_3342030">**[Rascal Devnology Code Fest](http://www.slideshare.net/devnology/rascal-devnology-code-fest "Rascal Devnology Code Fest")**<object width="425" height="355"><param name="movie" value="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=rascaldevnologycodefest-100305043302-phpapp02&amp;stripped_title=rascal-devnology-code-fest"><param name="allowFullScreen" value="true"><param name="allowScriptAccess" value="always"><embed src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=rascaldevnologycodefest-100305043302-phpapp02&amp;stripped_title=rascal-devnology-code-fest" mce_src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=rascaldevnologycodefest-100305043302-phpapp02&amp;stripped_title=rascal-devnology-code-fest" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="355"></object><div style="padding: 5px 0pt 12px;" mce_style="padding:5px 0 12px">View more [presentations](http://www.slideshare.net/) from [Devnology](http://www.slideshare.net/devnology).</div></div><script src="http://b.scorecardresearch.com/beacon.js?c1=7&amp;c2=7400849&amp;c3=1&amp;c4=&amp;c5=&amp;c6="></script>
