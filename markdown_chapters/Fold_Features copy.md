#Interface Data Structures

##Edges

An Edge represents.

##Planes

A plane is a list of Edges.  

##Fold Features

The central data structure of Foldlings is the FoldFeature: a representation of a shape drawn by the user that folds in 3d.  Each fold feature is a single design element — and can be individually created, modified, and deleted.  There are five types of FoldFeature: MasterCard, BoxFold, FreeForm, Polygon, and V-Fold, representing differences in drawing behavior, geometry, and (the differences are described in detail below).  Each of these features is a subclass of the FoldFeature super class.

All FoldFeatures have functionality in common:

* Each feature contains a list of edges in the feature — both cuts and folds
* Each feature can be deleted from the Sketch, healing the 

### MasterCard

### FreeForm

Holes are a special case of FreeForm shapes.   FreeForm shapes that do not cross a fold are considered holes — drawn in white in the 2d sketch and drawn as subtractions from planes in the 3d view.

### Polygon

### V-Fold

#Sketch
