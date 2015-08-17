\chapter{Conclusions}

We plan to release Foldlings in the Apple app store in September.  In many ways, the primary test of our software will be the extent to which real users are able to achieve their design goals.  However, we can make several conclusions about the success of our tool.  **>>TODO: reference final user study**.  Additionally, we have qualitative evidence that suggest that users can create a wide range of complex cards, faster and with more precision than using manual methods.  That said, there is much work to be done on this and related popup-card design problems.

#User Interface Future Work

##Modifications to the Master Card

Currently, our software only allows for one size and type of master card feature.  That is, a greeting-card sized piece of paper, with a single driving fold in the center.  Allowing modifications to the driving fold might allow users to change paper size, rotate the card so that the middle fold is vertical, or construct a diagonal fold for the master card.

##Multiple Cards

Currently, our software.  In order to support combinations of interlocking sketches, we would need to create an interface that allow for connecting pop-up card elements in 3D.  Although very complex to implement, this interface could ultimately allow for a far more complex arrangement of features that our software currently affords (@hart2007modular).

##Safe Area Guides

Often, users wish construct a fully-contained popup card.  That is, a card that can close fully, with no portions of internal fold features visible when the card is closed.  In order to achieve this design in a symmetrical card, all features with a driving fold must be within the middle third of the card.  We could add "safe area" guides and warnings to indicate this area to users that want add that additional constraint to their design.

#Algorithms & Implementation Future Work

##Feature Intersections

Feature intersections are only partially implemented, and do not always succeed.  To fully-implement feature intersections, we would need to refactor our FoldFeature class to add feature intersections a primary component.  This would replace the current method of intersecting features with folds — _splitFoldByOcclusion_ — and would allow for more generalizable intersections between features.

##Concurrency

A key limitation of Foldlings is that all functions currently run on a single thread.  As a consequence, the user is sometimes blocked by operations that could be performed in the background.  For example, when completing a feature, out app ignores touch input until the feature is added to the sketch and planes are calculated.  This can cause a slight but noticeable delay between  Restructuring our algorithms to perform computationally-heavy operations in the background would reduce lag between action, allowing users to design more quickly and fluidly.

#Potential Applications

_This section is co-authored with Marissa Allen_  **>>TODO: get comments/more content from marissa**

As a general-purpose design tool for cuts and folds, Foldlings has a wide variety of potential applications.
For example, Melina Blees et al present a graphene transistor that is constructed through kirigami methods @blees2014graphene.  Simple, usable interfaces for designing complex kirigami structures are needed to advance similar research.
 
One exciting application of Foldlings is as a tool for developing advanced spatial reasoning skills.  Taylor et al present a curriculum that uses popup card design as a tool for building mathematics and spatial reasoning skills @taylor2013think3d.  A tool like Foldlings would likely increase the effectiveness of such a program, since much of the experimentation could happen more quickly in software than using manual methods.  Because our code is open source, advanced students could even modify our software to develop new fold features and interactions.
