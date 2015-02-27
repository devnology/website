---
layout: post
title: "Verslag DNSSEC: Internet achter de schermen"
---

<span class="info">Dit verslag is geschreven door Vincent Verschuren ([@vverschuren](http://www.twitter.com/vverschuren)). Bedankt Vincent!</span>

Manoeuvrerend langs wegwerkzaamheden stuurde mijn inventieve navigatiesysteem me door het prachtigste tuinbouwlandschap via nostalgische B-wegen naar het nieuwe kantoor van Pareto. Pareto is een aanbieder van weboplossingen, zowel in Microsoft technologie als in open source. Met ruim een half uur vertraging kwam ik de drempel over met het avondeten op de hielen. Een select gezelschap van 12 developers en 1 security specialist waren al druk aan het bij kletsen. De macaroni en vegetarische lasagna werden welkom onthaald, maar hierna was het tijd voor echt zware kost: DNS en DNSSEC.
 De spreker van deze avond was Matthijs Mekking van [NLNet Labs](http://www.nlnetlabs.nl). NLnet Labs is een stichting opgericht om (nieuwe) protocollen te evalueren en te ontwikkelen. De focus ligt hierbij op onderwerpen die direct gerelateerd zin aan het Internet, zoals IPv6 en routing, maar vooral ligt de expertise op het gebied van DNS en DNSSEC. Onze spreker is dus met recht een expert.

Omdat er een internationaal gezelschap aanwezig was, was de presentatie deze keer in het Engels. Het onderwerp van de avond was DNS en vooral de DNSSEC extensie dat een aantal security kwesties oplost. Omdat het merendeel van de aanwezigen developers was en niet dagelijks met DNS bezig zijn, begon de presentatie met een korte beschrijving van het DNS protocol.

## Wat is DNS

Het Domain Name System (DNS) is het systeem en protocol dat o.a. op het Internet gebruikt wordt om IP-addressen bij domeinnamen te vinden.  Het systeem bestaat uit een hiërarchische structuur van name servers. Via een recursieve lookup kan op basis van de hiërarchische structuur in de domeinnaam, van een root server naar authoritative nameserver worden genavigeerd, die uiteindelijk het IP-adres van een website teruggeeft. Ook het omgekeerde is mogelijk: een IP-adres kan gematcht worden naar een bepaald domain (reverse DNS). Hoewel dit de meest gebruikte mogelijkheden zijn, wordt DNS ook op andere manieren gebruikt, bijvoorbeeld voor het bepalen van de mailservers voor een domein.
Om niet iedere keer een volledige lookup te hoeven doen, worden DNS gegevens meestal gecached door de locale DNS server. De Time To Live (TTL) waarde van het DNS record bepaald hoe lang de data in de cache blijft.

## Security threats

Het grootste probleem is dat de integriteit van de verkregen data niet te valideren is. Omdat het DNS protocol niet goed beveiligd is, is het vrij eenvoudig om domeinnamen te kapen of onbereikbaar te maken door bijvoorbeeld cache poisoning. Dit is bijvoorbeeld te realiseren via de zogenaamde Kaminsky Attack, waarbij men niet alleen een DNS query maar ook een response verstuurt, die vervolgens in de cache van de DNS server wordt opgenomen. Dit kan redelijk eenvoudig omdat het DNS protocol slechts 65536 mogelijke transaction ID’s kent, waardoor dit eenvoudig te raden is.
Tot recent was er geen echte oplossing voor dit probleem. Een van de mogelijke patches was het vergroten van het aantal mogelijke UDP poorten, waardoor raden moeilijker werd.

## DNSSEC

DNSSEC, wat mede door NLNet Labs ontwikkeld is, is een oplossing voor dit beveiligingsprobleem. Het is een backwards compatible uitbreiding op het DNS protocol. De beveiliging wordt bereikt door de DNS records te signen d.m.v. public-key cryptografie. Het DNS record wordt geverifieerd via een ‘chain of trust’ die start vanaf de DNS root server. Op die manier kan de bron en authenticiteit van de DNS records worden geverifieerd. Ook het ontbreken van een record kan worden aangetoond doordat de hashes van de records die voor en na het ontbrekende record zouden staan, worden geretourneerd.

## Praktische problemen bij het gebruik van DNSSEC

Een van de problemen is dat het periodiek nodig is de encryptie keys, of zelfs het complete encryptie algoritme te vervangen.  Een aantal strategieën om dit te realiseren werden besproken. Verder is het een probleem dat nog niet alle toplevel-domeinen DNSSEC ondersteunen. Bijvoobeeld de .nl DNS-servers zijn nog niet gesigned. De verwachting is echter dat dit binnenkort gerealiseerd zal zijn.

Een ander probleem is dat DNSSEC het beheren van de DNS records veel complexer maakt. NLNet Labs werkt hiervoor aan een softwarepakket genaamd OpenDNSSEC, die dit vereenvoudigt.
Ten slotte werd er een [video](http://www.youtube.com/watch?v=b9j-sfP9GUU) getoond van de Signing Ceremony van de root servers.

Hoewel de meeste aanwezigen developers zijn en vanuit die functie niet dagelijks bezig zijn met DNS, was de sessie een zeer welkome verdieping van de kennis van een van de belangrijkste protocollen op het internet.

Na de sessie werd er, zoals gebruikelijk, nog lang na gesproken onder het genot van een hapje en een drankje. Ook hierin zijn we goed verzorgd door onze gastheren.
Mijn dank gaat uit naar Pareto die zo vriendelijk was om de gastheer van deze avond te zijn.

[
![](http://farm5.static.flickr.com/4099/4862122911_28b3aa0fb4_s.jpg)
![](http://farm5.static.flickr.com/4074/4862122145_babc172fff_s.jpg)
![](http://farm5.static.flickr.com/4100/4862741028_4550dbf3dc_s.jpg)
![](http://farm5.static.flickr.com/4121/4862741304_0cbaf56b0d_s.jpg)
![](http://farm5.static.flickr.com/4095/4862741448_4c517c6d04_s.jpg)
![](http://farm5.static.flickr.com/4139/4862741182_bfae980409_s.jpg)
![](http://farm5.static.flickr.com/4139/4862123075_b1f7b0b27f_s.jpg)
](http://www.flickr.com/photos/devnology/sets/72157624533098605/detail/)

<div style="width: 425px;" id="__ss_4907390">
**
[DNSSec: Internet achter de schermen](http://www.slideshare.net/devnology/devnology-20100804 "DNSSec: Internet achter de schermen")
**
<object id="__sse4907390" width="425" height="355">
<param name="movie" value="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=devnology-20100804-100805075027-phpapp01&amp;stripped_title=devnology-20100804"><param name="allowFullScreen" value="true"><param name="allowScriptAccess" value="always"><embed name="__sse4907390" src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=devnology-20100804-100805075027-phpapp01&amp;stripped_title=devnology-20100804" mce_src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=devnology-20100804-100805075027-phpapp01&amp;stripped_title=devnology-20100804" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="355"></object>
<div style="padding: 5px 0pt 12px;" mce_style="padding:5px 0 12px">View more [presentations](http://www.slideshare.net/) from [Devnology](http://www.slideshare.net/devnology).</div></div><script src="http://b.scorecardresearch.com/beacon.js?c1=7&amp;c2=7400849&amp;c3=1&amp;c4=&amp;c5=&amp;c6="></script>
