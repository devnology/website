---
layout: post
title: "Report - Back to School II - software re-engineering using visualization"
---

This report is written by Galina Slavova([@Galinas](http://twitter.com/Galinas)). Many thanks Galina!

(The official language of this meeting was English. So is this report ;-))

Designing and implementing software systems is more like building a whole city infrastructure and not just a house. And sometimes there are systems that have been expansively developed and maintained for more than 15 years. The scale of the latter is comparable with that of a mega polis!

Tonight we are in building &ldquo;36&rdquo; of Delft University of Technology, indulging ourselves with a warm meal and chatting with each other at this new Devnology meeting. A decent group of around 35 people had come for the lecture of Assistant Professor[ Martin Pinzger](http://swerl.tudelft.nl/bin/view/MartinPinzger/WebHome). Topic is software evolution, reengineering and data visualization of source code.

The focus of this lecture is on &ldquo;brown-field&rdquo; development and the challenges of a growing code base, that is subject to continuous changes and maintenance. Picture this: some 50 to 75% of the time is spent on maintenance where 60% of the whole is spent on just understanding the source code. Here comes a dilemma: what is more expensive &ndash; redesign and restructuring of the system or letting it be as is?

Big and wildly growing software systems are very common and if one accepts the task to understand such a system by means of reverse engineering then there are several maxims and techniques that can be handy to use:&nbsp;

*   communicate with developers and end users and verify what has been said
*   read the code in 1 hour e.g. look for contracts and scan the larger structures, classes with a huge &ldquo;fan-out&rdquo;, and eventually, abstract methods that are high in the hierarchy
*   skim documentation, tie code and questions
*   compile the code and do a mock installation, and debug
*   refactor some of the code in a lab environment in order to understand it&nbsp;
*   understand the code evolution by looking in the source repository

Known tools for code visualization in height, width and color are[ CodeCity](http://www.inf.usi.ch/phd/wettel/codecity.html) and[ X-Ray](http://eclipse-plugins.info/eclipse/plugin_details.jsp?id=1839).[ JDeodorant](http://java.uom.gr/~jdeodorant/) is good for detection of &ldquo;code smells&rdquo;.

Martin goes on with his cordial lecture that invokes questions and leads to discussions in the audience. Some people find it good enough to have &ldquo;red giant&rdquo; classes that stay stable especially when they &ldquo;work&rdquo; and the budget doesn&rsquo;t allow redesigning. So if the code &ldquo;smells&rdquo; is it a must to go and refactor immediately? If not, then when does the engineer come to the point that he really badly needs to refactor? Note stakeholders do not pay for refactoring!

The evening continues with the usual &ldquo;fishbowl&rdquo; discussion. Imagine two circles: one small with four chairs and one big around it. Sitting in the small circle gives the privilege to talk. The outer circle is listening.

What stays in the heart of the discussion is: how should metric tools be interpreted? Of course they point to some abnormalities like too many lines of code or &ldquo;day fly&rdquo; classes (which appear in the source control repository one day and the next day they are gone). These metrics tell a story about the development process and the behavior of the team in the code evolution. They are arbitrary and do not necessarily express whether the team works efficiently or not.

Anyway, if it comes to pair programming or just sharing a programmed solution to a particular problem with a fellow developer on the other side of the world then writing a small and disciplined piece of code repays the effort and shows the elegance of this craft.

Thanks to Devnology for the well organized and interesting evening!

<iframe src="http://www.slideshare.net/slideshow/embed_code/8255463" width="425" height="355" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>

{artsexylightbox flickrNumberOfImages="54" flickr="Devnology" flickrSet="72157626795870687"} {/artsexylightbox}
