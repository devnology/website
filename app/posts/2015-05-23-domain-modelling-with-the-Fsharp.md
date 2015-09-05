---
layout: post
title: "Domain modelling with the F# type system: Make illegal states unrepresentable"
---

![](images/stories/articles/domain-modeling-whatswrong.jpg)

A review of the Devnology F# Meetup with Scott Wlaschin by Aage ten Hengel  

Monday’s meetup focusing on domain modeling with F# was hosted by Infi, at their offices located near the city center of Utrecht. Their kind hospitality, the free pizza and F# stickers got things off to a good start.  

Around seven o’clock everybody made their way to the beautiful, old-fashioned lecture hall where Scott would have his talk. After a brief introduction on who the Infi-Team is, Scott began the topic at hand: Domain modeling with F#.  

Scott addressed the fundamentals of F# (and functional programming) fast pacing through a couple of slides, but giving room for questions at all times. Scott comes across as a kind, passionate and funny man (“for those who don’t know what a service is, it’s just a microservice without the ‘micro’ in front of it” – addressing the current microservice fad). He has a clear and visual way of explaining what makes functional programming unique.

![](images/stories/articles/domain-modeling-domain.jpg)

Functional programming focusses on a few central building blocks: Functions (well, yeah), Composition (chaining functions makes a service, chaining services makes a use-case) and Types, which is the topic of this meetup.  

One of Scott’s main points is that Types help you express your domain model in a very concise and explicit way. He has an example of an entire domain model (with about 10 types) on a single slide, as fully functional code. A key point he makes is that you can (and maybe should) type everything; a RegisteredCustomer is something else than a GuestCustomer and this should not be determined by setting (or forgetting to set) a flag on a Customer.  

The other main point is that F# allows you to type your domain model in a way so that you could literally could not write incorrect code. He shows a type Payment type which has an Amount field of type PaymentAmount, where the PaymentAmount is of type decimal. At first I thought you could just make the Amount of type decimal, but the way Scott types this model makes sure you can’t accidentally set this field with a value of another type of type decimal. This ability eradicates the necessity of some unit tests and guarantees compile-time correct code.  

This was a great talk, despite the 5 min. one-on-one Scott has with one of the audience members, much to the annoyance of some others (for which he apologized afterwards). I’m very much intrigued by F# and functional programming and looking forward to see whether the promises it makes (Conciseness, Rapid development, High Quality software and Fun!) hold up and if I can wrap my brain around it. Some of the tips Scott had I’m even taking back to my cozy OO world.
