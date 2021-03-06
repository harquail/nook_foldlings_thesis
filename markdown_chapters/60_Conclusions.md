\chapter{Conclusions}

We plan to release Foldlings in the Apple App Store in September.  In many ways, the primary test of our software will be the extent to which real users are able to achieve their design goals.  However, we can make several conclusions about the success of our tool.  In general, users find the process of designing popup cards more intuitive with the current version of Foldlings than with previous versions of our software or manual methods.  Additionally, we have qualitative evidence that suggest that users can create a wide range of complex cards, faster and with more precision than using manual methods.  That said, there is much work to be done on this and related popup-card design problems.

#User Interface Future Work

##Modifications to the Master Card

Currently, our software only allows for one size and type of master card feature.  That is, a greeting-card sized piece of paper, with a single driving fold in the center.  Allowing modifications to the driving fold might allow users to change paper size, rotate the card so that the middle fold is vertical, or construct a diagonal fold for the master card.

##Multiple Cards

Currently, our software simulates cuts and folds performed on a single piece of paper.  In order to support combinations of interlocking sketches, we would need to create an interface that allow for connecting pop-up card elements in 3D.  Although very complex to implement, this interface could ultimately allow for a far more complex arrangement of features that our software currently affords (@hart2007modular).

##Safe Area Guides

Often, users wish construct a fully-contained popup card.  That is, a card that can close fully, with no portions of internal fold features visible when the card is closed.  In order to achieve this design in a symmetrical card, all features with a driving fold must be created such that their planes will not extend beyond the bound of the master card when fully folded.  We could add "safe area" guides and warnings to indicate this area to users that want to add that additional constraint to their design.

#Algorithms & Implementation Future Work

##Feature Intersections

Feature intersections are only partially implemented, and do not always succeed.  To fully-implement feature intersections, we would need to refactor our FoldFeature class to add feature intersections as a primary component.  This would replace the current method of intersecting features with folds — $splitFoldByOcclusion$ — and would allow for more generalizable intersections between features.

##Concurrency

A key limitation of Foldlings is that all functions currently run on a single thread.  As a consequence, the user is sometimes blocked by operations that could be performed in the background.  For example, when completing a feature, our app ignores touch input until the feature is added to the sketch and planes are calculated.  This can cause a slight but noticeable delay between actions.  Restructuring our algorithms to perform computationally-heavy operations in the background would reduce lag between actions, allowing users to design more quickly and fluidly.
