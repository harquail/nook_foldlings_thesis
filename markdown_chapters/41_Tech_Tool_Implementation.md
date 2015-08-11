#Tool Implementation

Below is the definition of the FoldFeature superclass — all features created using Foldlings can override these methods to provide specific functionality.  For further discussion of the FoldFeature data structure, see **>>TODO cite**.  

\small
\singlespacing 
\begin{pygmented}{swift}
var horizontalFolds:[Edge] = [] //list of horizontal folds
var featureEdges:[Edge]?        //edges in a feature
var children:[FoldFeature] = [] // children of feature
var drivingFold:Edge? // driving fold of feature
var parent:FoldFeature? // parent of feature
var startPoint:CGPoint?
var endPoint:CGPoint? // start and end touch points

/// splits an edge around the current feature
func splitFoldByOcclusion(edge:Edge) -> [Edge]
{
//by default, return edge whole
return [edge]
}
/// features are leaves if they don't have children
func isLeaf() -> Bool
{
return children.count == 0
}
/// options or modifications that can be made to the current feature
func tapOptions() -> [FeatureOption]?
{
  return [FeatureOption.PrintPlanes, FeatureOption.PrintEdges,
  FeatureOption.ColorPlaneEdges, FeatureOption.PrintSinglePlane]
}
/// whether a feature is drawn over a fold, determines whether 
/// a fold can be the driving fold for a feature
  func featureSpansFold(fold:Edge)->Bool
{
  return false
}
/// returns and calculates planes in a feature
func getFeaturePlanes()-> [Plane]{
  return featurePlanes
}
/// whether a feature contains a point
/// needs to be overridden by subclasses
func containsPoint(point:CGPoint) -> Bool{
  return self.boundingBox()?.contains(point) ?? false
}
\end{pygmented}
\doublespacing
\normalsize

## Box Fold

talk about fold heights
talk about occlusion

### FreeForm

talk about splitting
catmull rom curves

However, the catmull-Rom algorithm only draws a full path when the start and end points of the curve are coincident.  We use an alpha value of 1.0, which we found to be the closest to the intended touch shape through informal user studies. 

talk about truncation

\small
\singlespacing 
\begin{pygmented}{swift}
func truncateWithFolds()
\end{pygmented}
\doublespacing
\normalsize

\begin{algorithm}[H]
 \KwData{this text}
 \KwResult{how to write algorithm with \LaTeX2e }
 initialization\;
 \While{not at end of this document}{
  read current\;
  \eIf{understand}{
   go to next section\;
   current section becomes this one\;
   }{
   go back to the beginning of current section\;
  }
 }
 \caption{Path Splitting}
\end{algorithm}

\begin{algorithm}[H]
 \KwData{this text}
 \KwResult{how to write algorithm with \LaTeX2e }
 initialization\;
 \While{not at end of this document}{
  read current\;
  \eIf{understand}{
   go to next section\;
   current section becomes this one\;
   }{
   go back to the beginning of current section\;
  }
 }
 \caption{TRUNCATION}
\end{algorithm}


### Polygon

contrast with free-form
talk about point dragging 
talk about truncation

### V-Fold

talk about angle calculation