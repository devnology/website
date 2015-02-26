---
layout: post
title: "Verslag code inspectie met IfSQ"
---

<span class="info">Dit verslag is geschreven door Rick van der Arend([@rvdarend](http://twitter.com/rvdarend)) . Bedankt Rick!</span>

Nog even hard aan het werk om zover mogelijk te komen voor een presentatie van de rapportage-faciliteiten komende maandag en vervolgens de boel afsluiten om alles netjes achter te laten voor het lange Hemelvaartweekend. En dan uiteindelijk tegen vijf uur toch echt in de auto duiken in Amersfoort om de A1 en A9 te pakken richting het Microsoft kantoor bij Schiphol. Zo begon mijn woensdagavond.

Aangekomen bij het goed bereikbare kantoor bleek alles piekfijn geregeld. De receptie wist van de komst van de Devnology leden af en gaf zonder gemor een in- en uitrij kaart aan me uit. Binnengekomen werd ik door een vriendelijke dame begeleid naar het restaurant. Ondertussen gaf ik natuurlijk mijn ogen goed de kost, ik was nog niet in dit vrij nieuwe kantoor geweest en wist dat ze er werkend volgens "Het Nieuwe Werken". Dat betekent grote tafels en open ruimte en dus veel ruimte voor flexwerkers. En daarnaast kleine afgezonderde ruimtes voor teams of een-op-een gesprekken. Al met al zag het er mooi uit, wel een beetje massaal. Maar de inrichting gaf het toch wel een 'warm' gevoel, met afwisselende details en het gebruik van stoffen bekleding op een behoorlijk aantal muren. Uiteraard ook nuttig om geluidsoverlast te voorkomen, aangezien deze muren behoorlijk wat geluid opnemen. Aangekomen bij het restaurant was daar de keuze tussen een lasagne en een tagliatelle. Met een flink bord lasagne voor mijn neus raakte ik al snel in gesprek met de andere ontwikkelaars die er vanavond bij gingen zijn. De lasagne was heerlijk en ik heb me laten vertellen dat de tagliatelle ook prima was.
De avond eindigde overigens ook met een borrel met een aantal lekkere hapjes en drankjes, dus we zijn goed verzorgd door Microsoft.

De Devnology bijeenkomst van vanavond draaide deze keer om code reviews volgens het format van IFSQ. Frank Oppedijk en Ronald Harmsen gingen ons daarin wegwijs maken en uiteraard uitleggen waarom ze deze techniek zelf ook gebruiken. Ten eerste een korte impressie van de theorie:

*   De IFSQ code review techniek kent meerdere, zo expliciet en objectief mogelijk beschreven niveaus.
*   Niveau 1 is echt heel expliciet beschreven en bestaat uit het tellen van beschreven defects in code-regels.&nbsp;
*   Denk hierbij o.a. aan todo's die nog in de code staan en het gebruik van magic numbers.
*   Het totale aantal defects per soort en in totaal wordt uitgerekend en gedeeld op het aantal regels code komt daar een rapportcijfer uit.
*   Elk volgend niveau voegt een aantal defects toe waarop gecontroleerd dient te worden.
*   Niveau 2 is ook nog vrij expliciet, maar heeft wel drie subjectieve regels erbij vermeld al.
*   Niveau 3 voegt een aantal vrij subjectieve regels toe.
*   Een en ander is allemaal goed terug te vinden op [http://www.ifsq.org](http://www.ifsq.org)

Om er een beetje gevoel voor te krijgen, hebben we gezamenlijk een IFSQ check level 1 uitgevoerd op door Frank en Ronald meegebrachte code. Dat bleek nog niet eenvoudig, je moet even wat handigheid krijgen in het 'zien' van de defects en deze handig optellen. Detecteren per type over de hele lengte en vervolgens optellen per type en per pagina bleek handig te werken. Vervolgens gingen we aan de slag met onze eigen code of een tweede set meegebrachte code voor een ronde op level 2. Ik ben begonnen met mijn eigen code, maar het bleek handig te zijn om regelnummers mee te printen en niet twee pagina's per A4 uit te printen, zodat ik daar vrij snel vanaf stapte (vond trouwens ook veel te weinig :-)). Vervolgens heb ik nog even gebruik gemaakt van de voor iedereen meegebrachte code.

Eerlijk gezegd kreeg ik al snel het idee dat deze checks toch te automatiseren moeten zijn, zeker die op niveau 1. En er zijn uiteraard vrij veel static code checking tools die precies dat doen. De vraag werd dan ook aan onze presentatoren voorgelegd of dit niet beter ge-automatiseerd gedaan kan worden. Ronald en Frank gaven aan deze vorm van code reviewing volgens de IFSQ methode te doen om de volgende redenen:

*   De regels zijn door een onafhankelijk orgaan opgesteld. Dit maakt het eenvoudiger te verdedigen in lastige situaties waar er een (al dan niet terechte) schijn van belangenverstrengeling is.
*   Niet alle regels zijn voldoende expliciet te maken. Wat is er allemaal een todo die nog in de code staat? Dat staat vaak free-format in commentaar..
*   Het uitvoeren van de code-checks heeft ook een leereffect. Doe je het met het team, dan zwengelt het ook de discussie aan.
*   De regels zijn bewust taal-onafhankelijk opgesteld
*   Zeker de hogere niveaus zijn moeilijk expliciet genoeg te maken om ge-automatiseerd te kunnen checken.

Mogelijk heb ik er nog een paar gemist, maar ik geloof dat dit ze toch wel waren. Of dit voldoende redenen zijn om gebruik te maken van deze methode, laat ik uiteraard aan de lezer. Zelf vond ik het in ieder geval interessant om een afwijkend geluid te horen wat dit betreft en mocht ik hem nodig hebben, dan weet ik waar ik moet zoeken. Hierbij wil ik dus in ieder geval Ronald en Frank bedanken voor de goede voorbereiding en organisatie. Naast de inhoud was de avond in ieder geval ook een mooie gelegenheid om een aantal mensen weer eens te spreken. En nu op naar de Open Space in juni!

[
![](http://farm2.static.flickr.com/1227/4602582808_08741e4f9c_s.jpg)
 ![](http://farm4.static.flickr.com/3416/4602582894_21f5e11086_s.jpg)

![](http://farm5.static.flickr.com/4052/4602583170_39e3c27e82_s.jpg)&nbsp;
![](http://farm2.static.flickr.com/1161/4602583532_673d8acdcd_s.jpg)

![](http://farm5.static.flickr.com/4052/4602583170_39e3c27e82_s.jpg)

![](http://farm2.static.flickr.com/1233/4602583656_f3429cd2e1_s.jpg)&nbsp;
![](http://farm4.static.flickr.com/3162/4602583832_287299dfda_s.jpg)&nbsp;](http://www.flickr.com/photos/devnology/sets/72157623924870545/show/)

<div style="width: 425px;" id="__ss_4088300">**[Code inspecties](http://www.slideshare.net/devnology/code-inspecties "Code inspecties")**<object id="__sse4088300" width="425" height="355"><param name="movie" value="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=code-inspecties-100513153734-phpapp02&amp;stripped_title=code-inspecties"><param name="allowFullScreen" value="true"><param name="allowScriptAccess" value="always"><embed name="__sse4088300" src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=code-inspecties-100513153734-phpapp02&amp;stripped_title=code-inspecties" mce_src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=code-inspecties-100513153734-phpapp02&amp;stripped_title=code-inspecties" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="355"></object></div><script src="http://b.scorecardresearch.com/beacon.js?c1=7&amp;c2=7400849&amp;c3=1&amp;c4=&amp;c5=&amp;c6="></script>
