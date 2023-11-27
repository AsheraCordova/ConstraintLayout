# ConstraintLayout

ConstraintLayout project adds support for ConstraintLayout layout and other helper layouts available with ConstraintLayout.

Important Links:

https://asheracordova.github.io/doc/androidx/constraintlayout/widget/package-summary.html

https://asheracordova.github.io/doc/help-doc.html

https://github.com/AsheraCordova/playground

To install the plugin use:

```
cordova plugin add https://github.com/AsheraCordova/ConstraintLayout.git
```

## Widgets

* androidx.constraintlayout.widget.ConstraintLayout
* androidx.constraintlayout.widget.Barrier
* androidx.constraintlayout.widget.Group
* androidx.constraintlayout.widget.Guideline
* androidx.constraintlayout.widget.Placeholder
* androidx.constraintlayout.helper.widget.Flow
* androidx.constraintlayout.helper.widget.CircularFlow
* androidx.constraintlayout.motion.widget.MotionLayout

See examples on https://asheracordova.github.io/playground/index.html.

## MotionLayout

Important Links:

https://developer.android.com/develop/ui/views/animations/motionlayout
https://developer.android.com/develop/ui/views/animations/motionlayout/examples

### MotionScene and native android Id
Motion scene in android is loaded as native resource file rather than using a html parser. Hence the ids should use android native id. To workaround the same, any element used in motionscene and motionlayout should have id prefixed with n__.

@+id+/n__button
@id+/n__button

Note: If the id is used only in motionlayout or motionscene, then n__ prefix is not needed.

### KeyTrigger
KeyTrigger in motionlayout internally uses reflection in android. As reflection is not supported in browser and ios platform, state methods are provided to replace them on the view. 

Method        | Description
------------- | -------------
state[0-3]    | Method to be used when the number of states are greater than 2
state[Yes|No] | Method to be used when the number of states is 2. hide and show methods are provided which triggers visibility change.
