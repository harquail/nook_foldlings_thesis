#Interface Data Structures
We will refer to several data structures throughout the discussion of user interface design and implementation.  These are the primary means of storing user input processed by the tools, and are the [^1].

[^1]: This section only describes the primary data structures necessary for, not structures for drawing features in 2D or 3D.  For a discussion of 2D drawing, see sections.  For a discussion of, see  .  **>>TODO:cite marissa >>TODO  reference section**

##Edges

An Edge represents a cut or fold.  Edges are the basic building block of planes, and a basic element of .  An edge is minimally defined by a start point, end point, and a a type (either cut or fold).  This represents a straight edge between two points.  In addition, an Edge can contain further information: the path drawn to create it, and a reference to the plane or feature it is a part of.  Additionally, each edge contains a reference to its twin edge.

###Twins
 Although it is often simpler to think of edges as cuts and folds created by the user, the reality in Foldlings is slightly more complicated.  For each edge that the user creates using a tool, two edges are created.  One in the .  Processing the edges.   Having alternate orientations for edges also 
  In order.  Each edge is actually defined by two edges, 

**>>TODO: DIAGRAM**

###Driving Folds

A driving fold is not a special type of edge, but rather a relationship between an edge in one feature and a feature "spanning" that edge.  A feature is said to span a fold when it is drawn on top of an existing fold, so that it .  
**>>TODO: boxfold diagram**

 An edge can be the driving fold for more than one feature, but each feature has only one driving fold (if there are multiple potential driving edges at the same height, the leftmost edge is selected.  The driving fold is important for calculating parent-child relationships between features: a feature's parent is the feature that contains it's driving fold [^2].  These parent-child relationships are described in more detail in the \nameref{nested-features} section on page \pageref{nested-features}.
 
 [^2]: The exception to this rule is holes — a hole's parent is the feature that contains it.
 
 ###Fold Orientation
 
 Traditionally, 

##Planes

A plane is a collection of Edges.  **TODO: CITE MARISSA HERE**

##Fold Features

The central data structure of Foldlings is the FoldFeature: a representation of a shape drawn by the user that folds in 3d.  Each fold feature is a single design element — and can be individually created, modified, and deleted.  There are five types of FoldFeature: MasterCard, BoxFold, FreeForm, Polygon, and V-Fold, representing differences in drawing behavior, geometry, and (the differences are described in detail below).  Each of these features is a subclass of the FoldFeature super class.

All FoldFeatures have functionality in common:

* Each feature contains a list of edges in the feature — both cuts and folds
* Each feature has a driving fold — in the case of unconnected features, such as the master card and holes, the driving fold is nil.
* Each feature can be deleted from the Sketch, "healing" the sketch by closing gaps left in any
* Features implement the encodeWithCoder and decodeWithCoder methods, allowing them to be serialized to a file on the device and restored from the saved file.
* Each feature can provide a list of current "tap options" — actions that can be performed on the feature given its state. **TODO:SEE tap options in interface design**
 [@Nobody06]. **TODO:REMOVE -- JUST TESTING** 


### Master Card

Each sketch always contains a single master feature, which is the ancestor of all other features.  It is very similar to the box fold.

### Box Fold

A box fold consists entirely of straight edges, and can be constructed from two points: the top left point, and .  All other fold positions .  Box folds are only valid if they have a driving fold.

### Free Form

Free-form shapes are defined by.  In addition, they may contain horizontal folds.

Holes are a special case of FreeForm shapes, and are cut out from the final design, rather than folded.   FreeForm shapes that do not cross a fold are considered holes — drawn in white in the 2d sketch and drawn as subtractions from planes in the 3d view.

### Polygon

Like FreeForm shapes, Polygons that do not have  a driving fold are considered holes.

### V-Fold

V-folds are only valid if they have a driving fold.

##Sketch

A sketch is the representation of the user's drawing — it's primary role is as a collection of features.  It also contains information about the current drawing state, 
