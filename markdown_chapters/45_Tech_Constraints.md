#Constraints on Fold Features

Constraints are central to the implementation of Foldlings' algorithms, and the pi.  As an educational tool, one of the primary benefits of our software might be the development of an intuitive understanding of the limits of paper.

##Geometric Constraints

Several geometric constraints drive Foldling's algorithms.  These constraints are the core reason for the difficulty of creating designs manually; a key advantage of our system is that these constraints are resolved automatically.  

###Box Fold

![Geometric constraints for freeform features](figures/45_Tech_Constraints/boxfoldConstraints.pdf)

A box fold is constrained by a relationship between its folds.  Given a top fold and bottom fold at fixed height, with a driving fold with a height between the other two folds, the top fold must be 

  This 90-degree angle constraint applies equally to freeform and polygon features (at least, those that span a fold).  Holes are not bound by this constraint, because they do not have a driving fold.

###Freeform

![Geometric constraints for freeform features](figures/45_Tech_Constraints/freeformConstraints.pdf)

A freeform shape is also constrained by.  After performing truncation ^[described **>>TODO: CITE** ] to place the top and bottom folds of the freeform shape, we apply the ninety-degree constraint to place the middle fold in the feature.


###Polygon

![Geometric constraints for polygon features](figures/45_Tech_Constraints/polygonConstraints.pdf)

The same constraints that apply to freeform shape apply to polygons.   Although the edges are constructed differently, polygons are essentially a subset of freeform shapes, composed only of straight lines.

###V-Fold

![Geometric constraints for freeform features](figures/45_Tech_Constraints/vfoldConstraints.pdf)

Although a v-fold also folds from zero to 180 degrees with the card, its planes moves at non-orthogonal angles.  The constraint of folds in a v-fold feature is therefore based on angle rather than height.

The simplest case of v-folds — and the one most popularly constructed by our user testers using manual methods — is a symmetric v-fold.  In this case, the top and bottom angles of the fold are equal.  The shape approximates an isosceles triangle.

In the more complex case, the angles between the two diagonal folds and the driving fold differ.  
**>>TODO: CITE GLASSNER**

##Physical Constraints

In addition, the physicality of paper place constraints on where cuts and folds can be placed.  Depending on the manufacture method, there is some minimum line length that can be cut or folded, and some minimum distance folds and cuts must be apart.  These depends on a wide number of variables ranging from paper thickness to manufacture method (for example, laser cutters have a higher tolerance for closely-drawn lines ).  Even within a specific technology, there is also a wide variation in cutting precision.

![One constraint](figures/45_Tech_Constraints/tooclosecuts.jpg)

In our software, we take this into account through the minimum edge length.  In addition, we .  We currently 

Physical.  Obvious .  Minimum edge length.  This depends on the laser cutter

**>>TODO: Figure showing problem**
