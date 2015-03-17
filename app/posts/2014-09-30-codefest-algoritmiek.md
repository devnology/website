---
layout: post
title: "Codefest Algoritmiek"
---

Op 9 September waren wij zeer welkom bij [Atos](http://nl.atos.net/nl-nl/home.html "Homepage van Atos") voor een nieuwe Devnology Codefest. Bij een codefest is het de bedoeling echt in de code te duiken, vaak gekoppeld aan een bepaald thema. Dit keer was het thema [algoritmiek](http://nl.wikipedia.org/wiki/Algoritme "Wikipedia over algorithmes"), in het bijzonder [sorteren](http://en.wikipedia.org/wiki/Sorting_algorithm "Wikipeidia over sorteer algorithmes").

Felienne behandelde wat theorie over sorteren. Zo werd onder andere het verschil uitgelegd tussen comparatieve sorteeralgoritmen, bijvoorbeeld [quicksort](http://en.wikipedia.org/wiki/Quicksort "Wikipedia over quicksort"), en niet comparatieve sorteeralgoritmen, zoals [bucketsort](http://en.wikipedia.org/wiki/Bucket_sort "Wikipedia over bucketsort"). Daarnaast werden enkele eigenschappen die sorteeralgoritmen kunnen bezitten besproken zoals [stabiliteit](http://en.wikipedia.org/wiki/Sorting_algorithm#Stability "Wikipedia over stabiliteit van sorteeralgorithmen").

Na de theorie was het tijd om de laatste hand, en voor sommige de eerste hand, aan hun gekozen sorteeralgoritme te leggen. Na een klein uur van intens coderen was het tijd om de resultaten met elkaar te delen. De spits werd afgebeten door een [insertionsort](http://en.wikipedia.org/wiki/Insertion_sort "Wikipedia on insertionsort") geïmplementeerd in [Scratch](http://scratch.mit.edu/ "Homepage of Scratch").

![InsertionSort in Scratch](http://devnology.nl/images/stories/articles/codefest.sorteren/scratch.jpg "InsertionSort in Scratch")

Scratch is een visuele programmeertaal ontwikkeld aan MIT om kinderen bekend te maken met programmeren. Dit maakte het mogelijk om een kat te laten miauwen wanneer de lijst gesorteerd was.

Na de Scratch implementatie volgende nog vele even bijzondere ideeën. Zo werd in een oplossing SQL gebruikt om data te sorteren, zonder direct de query mogelijkheden van SQL te gebruiken.

![Sorteren in SQL](http://devnology.nl/images/stories/articles/codefest.sorteren/sql.jpg "Sorteren in SQL")

Felienne gaf een voorproefje van een deel van haar [Strangeloop](https://www.youtube.com/watch?v=0CKru5d4GPk&amp;feature=youtu.be&amp;a "Strangeloop video of Felienne on Youtube") praatje door een (goed leesbaar!) sorteeralgoritme in Excel te demonstreren. 

![Excel excelleert in sorteren](http://devnology.nl/images/stories/articles/codefest.sorteren/excel.jpg "Excel excelleert in sorteren")

Daarna volgde nog implementaties in [D](http://dlang.org/ "Homepage of D programming language"), een implementatie zonder [if-while-case](https://github.com/dvberkel/devnology-sorting "devnology-sorting on GitHub") te gebruiken in JavaScript

![Zelf sorterende bomen in JavaScript](http://devnology.nl/images/stories/articles/codefest.sorteren/javascript_1.jpg "Zelf sorterende bomen in JavaScript")

en een zeer elegante implementatie van quicksort in [Haskell](http://www.haskell.org/haskellwiki/Haskell "Homepage of the programming language Haskell").

De klap op de vuurpijl was een implementatie van een wel heel bijzonder sorteeralgoritme, genaamd [bogosort](http://en.wikipedia.org/wiki/Bogosort "Wikipedia on Bogosort"). Het idee achter dit algoritme is om net zo lang de lijst te schudden tot dat deze door toeval op volgorde is gekomen.
