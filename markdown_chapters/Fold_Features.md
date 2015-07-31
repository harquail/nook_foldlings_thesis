#Interface Data Structures

##Edges

An Edge represents a cut or fold.  Edges are the basic building block of planes and 

###Driving Folds

A driving fold is not a special type of edge, but rather a .  Any fold can be the driving fold for 

##Planes

A plane is a list of Edges.  **TODO: CITE MARISSA HERE**

##Fold Features

The central data structure of Foldlings is the FoldFeature: a representation of a shape drawn by the user that folds in 3d.  Each fold feature is a single design element — and can be individually created, modified, and deleted.  There are five types of FoldFeature: MasterCard, BoxFold, FreeForm, Polygon, and V-Fold, representing differences in drawing behavior, geometry, and (the differences are described in detail below).  Each of these features is a subclass of the FoldFeature super class.

All FoldFeatures have functionality in common:

* Each feature contains a list of edges in the feature — both cuts and folds
* Each feature has a driving fold — in the case of unconnected features, such as the master card and holes, the driving fold is nil.
* Each feature can be deleted from the Sketch, "healing" the sketch by closing gaps left in any
* Features implement the encodeWithCoder and decodeWithCoder methods, allowing them to be serialized to a file on the device and restored from the saved file.
* Each feature can provide a list of current "tap options" — actions that can be performed on the feature given its state. **TODO:SEE tap options in interface design**
 [@Nobody06]. **TODO:REMOVE -- JUST TESTING** 
 
 In addition, each feature contains 


### MasterCard

### Box Fold

### FreeForm

Holes are a special case of FreeForm shapes.   FreeForm shapes that do not cross a fold are considered holes — drawn in white in the 2d sketch and drawn as subtractions from planes in the 3d view.

### Polygon

### V-Fold

###Validity

#Sketch
