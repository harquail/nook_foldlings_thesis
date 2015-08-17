#Saving

Every time users leave a sketch, Foldlings archives the sketch to a file, from which the session can later be restored.  Users restore a sketch by tapping on one of the cards on the main screen.  These cards can be deleted through a long press on the sketch, which presents an option to remove the saved file.  This convention is familiar to iOS users.

![Saved sketches displayed on the main screen.](figures/34_UI_Saving/saved_sketches.png)

In addition, we also save fold patterns for user designs to Amazon S3.  Saving these files allows us to debug user problems remotely and see the kinds of cards users attempt to make with our software.  Along with user testing, these captured sketches have been instrumental to our design process.