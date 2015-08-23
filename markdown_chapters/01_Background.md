\chapter{Introduction}

![A complex design created with our software.](figures/shared/01_Background/complexFoldlings.pdf)

#Background
_This section is co-authored with Marissa Allen_

Kirigami is the art of papercraft originating from 17th century Japan (@temko1978magic).  Kirigami structures vary widely in form and scale — from sub-microscopic creations to large sculptures  (@grosso2015bending to @andrewscreating).  Kirigami can represent a wide range of 2D and 3D constructions.  For example, a design can be a 2D lace-like pattern, or a large architectural structure — as long as the paper design does not require glue or other attachments, it is kirigami.  Further constraints define subsets of kirigami, such as origami, which only allows folds^[Purist origami adds further restrictions, including the requirement that the starting piece of paper be square (@burczykul).].  In particular, Foldlings is concerned with 90-degree pop-up cards, which have the additional constraint that orthogonal relationships exist between planes.  We do not use glue or other attachments in building pop-up cards; all designs are cut from a single piece of paper, in the tradition of kirigami (@temko1978magic).  Thus, Foldlings creates orthogonal, kirigami popup cards.

![Cross-section of a popup card Figure modified from https://en.wikipedia.org/
wiki/File:Popup-diagram.svg.](figures/shared/01_Background/popup-diagram.pdf)

Typically, users create popup cards manually.  For example, a user might sketch out shape on a card in pencil, and then measure with a rule to determine locations to place folds.  Or, they might fold the paper while cutting, discovering correct fold positions experimentally.  The second method works well for simple designs, but becomes difficult with complex and nested geometries^[These are behaviors we observed by watching users create pop-up cards.].  Constructing popup cards manually is difficult for several reasons:

1. \textbf{2D to 3D visualization is difficult}.  Users have difficulty understanding how the card will fold based on a 2D design.
2. \textbf{Geometric constraints}.  The pop-up card.  
3. \textbf{Can’t "undo"}. Since pop-up card design is often a trial-and-error process, 
4. \textbf{Physical constraints}.  In addition to the geometric constraints, the paper medium presents physical limitations on where edges can be placed.

The 90-degree popup card presents a tightly-constrained problem, with opportunities for both interface design and algorithm innovations.  **>>TODO: xpand**

We present a system for designing popup cards, whose audience is deliberately broad.  That is, our tool aims to make the design process easier and more fun for users with all degrees of popup card design experience.




