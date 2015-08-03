#Tool Implementation

\singlespacing 
\begin{pygmented}{swift}
var horizontalFolds:[Edge] = [] //list horizontal folds
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
/// returns edges that are less than the minimum length
func tooShortEdges() -> [Edge]{
  return featureEdges?.filter({$0.length() < kMinLineLength}) ?? []
}
/// this function should try to fix errors first, 
/// then return an error if it can't fix them
/// returns whether the feature was valid
func validate() -> (passed:Bool,error:String){ 
  var valid = true
  if(!tooShortEdges().filter({$0.kind == Edge.Kind.Fold}).isEmpty){              
  return (false,"Edges too short")
  }
  println("valid")
  return (true,"")
}
\end{pygmented}
\doublespacing