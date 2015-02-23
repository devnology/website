---
layout: post
title: "Devnology, a bridge between developer communities"
---

_Cross-posted van [Narnach's blog](http://narnach.blogspot.com/)_

# What is Devnology?

Devnology is a foundation that organizes meetings for software developers. Their goal is to bridge the gap between the many different communities that exist for the many programming languages and platforms that a software developer can choose to use. The background of the founders is mainly in the Windows world.

In order to learn from others, Devnology was started as a way to help developers share and learn tips and tricks, insights, tools, news and insights. In this respect, it is similar to how the [Ruby User Group](http://amsterdam-rb.org/) meetings work as a way to learn from each other. The difference is that the Ruby meetings are more heavily focused on socializing, while Devnology meetings are balanced more towards learning.

[Ruby](http://ruby-lang.org/) meetings tend to be fun beer nights: we gather in the pub, drink beer (or ice tea) and talk all night long about topics that can include Ruby, tools, new companies or projects, freelancing, pet projects and much, much more. Sometimes someone gets a laptop on the table and shows what they are working on, usually in the form of a live demo or by showing code. The key difference between Ruby meetings and Devnology meetings is the organized format of Devnology meetings. Devnology meetings have a limit on attendance, a pre-arranged location that is either rented or sponsored and they have a speaker or theme to provide enough fuel to keep the conversations going for the whole evening.

# Building bridges

Getting to know new people is a chance to learn about new ways of thinking. The more different people you meet, the more you can learn. Within a single community, there tends to be an overlap in certain ways of thinking. As an example, let's contrast Rubyists and Windows developers.

Rubyists, in my experience, tend to be young and eager to try out new things. There are quite a bit of people that learn on the job and don't have a formal education. A lot of them work at smaller companies or as freelancer and they are pretty passionate about what they do. Due to [Rails](http://rubyonrails.org/), a lot of work is in web development. Open Source is very important and everyone is more or less expected to have an account on [Github](http://github.com/) to share their code. A lot of people have a Mac or at least run Linux on their laptop. I don't know anyone who is serious about Windows as a developer platform for Ruby. There are some tools for Windows, but support is poor compared to Linux and Mac. Rubyists tend to be intimate with the command line and they tend to know at least a little bit of how to operate a Linux server. From front-end HTML/CSS design, through Rails code to a MySQL database design, from automated unit testing, integration testing and performance testing, a Ruby developer tends to know at least a bit about everything. Chances are, they will fulfill multiple or all of these roles on their projects.

In contrast, the handful of Windows developers I met at the last Devnology meeting tend to be older than Rubyists and appear a bit more formal. There are quite a bit of consultants working for larger companies. I actually heard people describe themselves as Software Architect and talk about corporate ladders as the most normal thing in the world. For a Rubyist to say that would be strange.

For me, these two groups are kind of opposites. Due to this, they would normally not interact much. This causes knowledge to be discovered independently and to be spread in their own communities. What is new in one group could be discovered a year later by the other group. If the two groups interact and share knowledge, the knowledge sharing might happen earlier. This is where Devnology can add a lot of value.

# The git story

A good example of knowledge that is not universal is the [Git](http://git-scm.com/) distributed source code management system. For Rubyists, it is the SCM to use. Subversion is so 2007. In the Windows world, Subversion is still the way to go and Git is largely unknown. Git was developed by Linus Torvalds, of Linux kernel fame, to replace Bitkeeper after Bitkeeper stopped being free. Git has great support on Linux and Mac, but Windows support took a while to get going.

Being distributed, Git does not depend on a central repository to store all code. When you have a checkout of the code, you have the full repository. This includes all history and branches, tags, etc. Git supports a centralized workflow, where everyone pushes their changes to a single server and pulls their updates from there. Through git-svn, it is possible to even use git to interact with Subversion repositories.

The advantages of Git becomes more interesting in the Github model: everyone on the team has a public repository on Github and a private repository on their laptop. You work locally and then push your changes to your public repository. Then you pull changes from other people's public repositories, work offline for a bit and push all changes back to your public repository. Other people can then pull in your changes and so on. This is almost an evolutionary approach to coding, where the best patches get pulled in by a lot of people and remain with the project. For closed source projects, you can use Github's private repositories, which you can share with people of your choice. In the Ruby world, Github is becoming a social network for developers.

My personal "I am so glad I use Git instead of Subversion" moment came when the old server we use to keep a number of private repositories on had a HDD failure. We just put in a new HDD, uploaded my working copies of all repositories and got back to work. During the week we had no central server, we committed code to local branches and ran a built-in git server to share new patches over the network. With Subversion we would have needed to do extra work to regularly backup the central repository and we could not have created new patches during the week the server was down.

# Last week's Devnology meeting

Last week wednesday I attended Devnology's second meeting and had a great evening. There were about 18 people, mostly .NET and Java developers, but there were also two Smalltalkers, a Pythonist and me as a Rubyist. Though a lot of references and examples used the Windows platform and it's tools and languages, the discussion went about fundamentals that apply to all platforms, languages and communities. The meeting type was Round Table discussion and it was divided into two parts, each with their own topics.

## First part

We gathered a number of topics and then voted on them. The two topics we would be discussing were: Generalist vs Specialist and Learning on the job vs Computer Science.

Generalist vs Specialist was interesting because it immediately became clear that everyone had a different opinion on what the terms meant. Is it specific to a language, a business domain, a platform, a role in the team or something else entirely? What is the scope in which you define these terms? It is interesting to question this. I always thought of myself as a Generalist, because I can do almost anything required in our company: be the sysadmin, be the software architect, design the database, write back-end code, write front-end code, test the system, plan the project and lead the team. On the other hand I am a Specialist, because all my knowledge is focused within the Ruby and Rails environment. I would be lost on Windows with a .NET project to develop a GUI application.

After a bit, the discussion flowed over to Learning on the Job vs Computer Science. Arguments that were put forth for CS are that it gives you a broad knowledge of different ways to solve a problem. Learning on the Job saves you four years and immediately starts to teach you what you need to know. You might not know the theoretical background about why things work the way the do, but you will be able to apply it.

The discussion also highlighted interesting perspectives of people who initially started to work and then later got their CS degree. Going this route gives you a lot more practical context to put the theory in. This is the opposite of the CS-first approach, where you first learn a lot of 'useless' theory that only later on becomes relevant when it gets a context in your job. A lot of theory might never get a proper context, I can imagine.

I initially started on a CS-ish route by studying Artificial Intelligence, but I did not find it challenging enough. For this reason I quit and found myself a job, where I did find a challenge and learned a lot of things. From time to time I do find myself hungry for the knowledge I could have gained at a CS course. The problem is that the school system is, in my opinion, very fake with grades as goals instead of knowledge as supreme goal. It's been four years since I left university and I only have vague memories of most of the things I learned, while I was always among the best scoring students. On the other hand, I also tend to forget how to use certain software libraries I knew intimately half a year ago but never used since then. I think that the details of what you know will fade, but the general concepts you learn will probably expand your way of thinking and stay.

## Second part

The question of this part was "What is/are your favorite...?" A couple of suggested things to list were people's top-3 books, blogs, podcasts, tools.

My choice was the [Pragmatic Programmers](http://pragprog.com/). They started as simple software developers turned authors, but they went on to build a publishing house for software books. Whenever I want to learn something new, I always check in there is a PragProg book or screencast available. They introduced the concept of beta books, which are books that have a beta version published as PDF while the author is still writing the book. This is great, as the author gets a lot of feedback to make the printed book better. If the book has source code that contains a bug, you can just click the 'Report Errata' button at the bottom of the PDF and submit a bug report and possible fix for the code on that page. Getting your hands on an early version of a book also means that you can read it way before the paper version even ships.

A second choice is [Peepcode](http://peepcode.com/), which sells professional screencasts on a wide range of topics. Recently they also started publishing smaller eBooks as PDF. A lot of early work is focused on Ruby, but more recent work covers a wider range of topics. Non-ruby topics include Git, Emacs, Clojure, Objective-C, Productivity, Javascript and more.

# Conclusion

Devnology is a great initiative that I intend to support by means of attending meetings and generating publicity in the Ruby communities I am part of. Sharing knowledge between previously unconnected communities is a good thing and I hope it will be a huge success.
