#Tool Interactions

Through the iterations described in the previous chapter, we arrived at Foldlings' tool-based system for card design.  Each tool creates a specific type of feature — a group of cuts and folds that define planes that will fold together in 3D^[Described in more detail in section \ref{interface-data-structures}, \nameref{interface-data-structures}, on page \pageref{interface-data-structures}.].  The four feature types: box fold, freeform, polygon, and v-fold, help users design complex cards while maintaining the card's foldability at all stages of design.  The core interaction is as follows:

1. User selects a tool
2. User drags on the screen to define a feature
	a. (Some features require more than one touch to define)
3. The feature is added to the sketch on releasing the drag

## Feature Interactions

Some interactions are common to all features.  To add a feature, you select the tool that creates features of that type.  Each feature type^[(Except for the master card)] has a corresponding button in the toolbar at the bottom of the sketch.  In general, all features are defined by dragging in the drawing area.  Features are generally completed by releasing the drag.  As long as you remain in that tool, you can continue creating features of that type by dragging.  Consistent tool interactions help reduce the burden of learning new tools, and allow for a scaffolded user experience (@wood2001scaffolding). 

We can infer that the user has completed a sketch when a touch completes the feature.  Completion conditions are different depending on the feature, but the completion state is never ambiguous.  Two feature types are always defined with a single touch: Box Fold and Free Form.  The multi-step tools: Polygon and V-Fold — require more than one touch to define.

The fold features are described in section \ref{interface-data-structures}, \nameref{interface-data-structures}, on page \pageref{interface-data-structures}.  What follows is a description of the interaction to create each type of fold feature.  

![Examples of the four fold features created by the tools. Left to right: box fold, freeform, polygon, v-fold.](figures/32_UI_Tool_Interactions/foldFeatures.png)

###Box Fold Interactions

A box fold is created by dragging to define the bounds of the box.  Box folds are only valid if they span a driving fold.

###Free Form Interactions

Free-form shapes are created by dragging a closed shape.  Free-form shapes that cross a fold are truncated^[See Chapter 3 section \ref{tool-implementation} on page \pageref{truncation} for a description of the truncation process.], and a center fold is automatically added at the correct height.  If a free-form shape does not cross a fold^[More formally, if a feature does not span a fold, as determined by the _featureSpansFold_ function described in Chapter 3 section \ref{tool-implementation} on page \pageref{tool-implementation}.] it is considered a hole, and no folds are added.  Initially, we considered having a separate tool for creating holes.  However, through informal user tests we discovered that users intuitively understood that free-form shape that do not cross a fold will become holes — and we were therefore able to combine the two functions into a single tool.

###Polygon Interactions

Polygons are created one vertex at a time.  Points are added by tapping or dragging on the sketch, adding edges between successive points with each tap.  Once a vertex is (nearly) coincident with the initial point, the feature is complete.  Users can also drag existing points in the polygon to modify the shape.

Initially, tapping was they only way to add points to a polygon — we added dragging points to make the interaction more consistent with other feature types.  

Polygons are the only feature that can be created by tapping rather than dragging.  This creates a conflict with tap options, which are also accessed using a tap.  If the user is in the polygon tool and taps inside an existing feature, it is ambiguous whether they want to start a new polygon or select a tap option. To resolve this conflict, if the first tap of a polygon is inside another feature (other than the master card), we display the tap options rather than creating a polygon.  Users can either start polygon within the master card or use a drag to add the first point, if they wish to construct a polygon inside another fold feature.

### V-Fold Interactions

V-Folds require two touches to complete.  The first touch creates a "vertical cut" that crosses a fold, the second defines the point on that fold from which diagonal folds are constructed.

##Tap Options

![Options presented when tapping a box fold feature.](figures/32_UI_Tool_Interactions/tap-options.png)

Tap options are actions that can be performed on a feature.  These options allow the user to modify or delete features in the sketch.  Different options are presented based on the feature type and state.  For example, currently only leaf nodes in the feature tree have the "Drag Folds" option.  That is, you can only move folds within a feature that has no children.  Since moving folds within a feature with children would require modifying the folds of all of their children^[Dragging folds in a parent feature can also cause child features to become invalid, depending on their fold positions.], implementing fold dragging in features with children is future work.

##Tutorial

We eschewed detailed drawing instructions or a separate tutorial mode, in favor of short video tutorials that appear the first time each tool is used.  These tutorials can also be accessed by tapping the feature icons on the about page.

![Free-form shape tutorial video.](figures/32_UI_Tool_Interactions/tutorial_step_one_two.png)

We also show helpful tips between screens — for example, when moving to 3D preview and restoring from a saved sketch.  

##Warnings and Errors

We display warnings and errors as bright-red banners above the sketch work area. These warnings are displayed in response to failing the validity checks performed when adding a feature to the sketch^[The system for validating fold features is described section Chapter 3 section \ref{validity}, \nameref{validity} on page \pageref{validity}].

![An error message shown when rejecting a polygon with intersecting edges.](figures/32_UI_Tool_Interactions/error_message.pdf)

The goal of these warnings is to give users descriptive feedback when errors occur, and to give them an intuitive sense of which actions create invalid features.

##Intersecting Features

Some features can be drawn over cuts and folds of existing features.  When a new feature intersects a previously-drawn feature, it occludes existing cuts and folds — creating the new feature on top of existing features.  The implementation of these intersections is described in Chapter 3, section \ref{intersections-between-features} on page \pageref{intersections-between-features}.

##Send to Laser Cutter

Users can tap the "send to laser cutter" option; this sends the user an email with an attached SVG file.  This file can be fed to a laser cutter or paper cutting machine, and can be opened in a vector graphics editor to make further changes.

The sketches are bound by physical constraints, as described in  Chapter 3 section \ref{constraints-on-fold-features} \ref{physical-constraints}, \nameref{physical-constraints} on page \pageref{physical-constraints}.  One constraint is the precision of the cutting tool, which limits how closely cuts and folds can be drawn to each other.  We take these physical constraints into account during the sketching process, so the user's design is foldable.

##Print

In addition to sharing an SVG file for laser cutting, users can press "print".  This option provides what is essentially a screenshot of the 2D sketch.  This image can be printed, emailed, or shared via social media.  Typically, this is the option a user would choose to cut and fold their design by hand.

![Options for sharing a fold pattern from the 3D preview.](figures/32_UI_Tool_Interactions/3d-share.png)

##Visual Aids

![Line patterns in SVG export](figures/32_UI_Tool_Interactions/dot-dash.pdf)

Foldlings utility relies on the user understanding how their design will fold while they are designing.  We use visual aids to help the user.  Using data from the user study described in Chapter 3, section \ref{visual-aids-user-study}, on page  \pageref{visual-aids-user-study}, we adjusted our interface to include more cues to help users visualize the design.  The primary visual aid is the 3D preview, which displays an interactive preview of the folded card.  Users can interact with this card through an intuitive "pinch" gesture.  In addition, we shade planes based on orientation (cool colors for planes that will be vertical when the card is halfway folded and warm colors for horizontal planes).  In the SVG file (accessed via "Send to Laser Cutter"), we adjust line dash patterns for folds based on orientation: dotted lines are mountains, creased away from the main fold — dot-dash lines are valleys, creased in the same direction as the main fold.  From the visual aids user study, we  have data suggesting that displaying fold orientation is very helpful to users when folding pop-up cards.

![Plane shading is one of many visual aids in Foldlings.](figures/32_UI_Tool_Interactions/currentInterface.png)
