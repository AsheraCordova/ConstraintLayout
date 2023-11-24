//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\ViewTransitionController.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ViewTransitionController")
#ifdef RESTRICT_ViewTransitionController
#define INCLUDE_ALL_ViewTransitionController 0
#else
#define INCLUDE_ALL_ViewTransitionController 1
#endif
#undef RESTRICT_ViewTransitionController

#if !defined (ADXViewTransitionController_) && (INCLUDE_ALL_ViewTransitionController || defined(INCLUDE_ADXViewTransitionController))
#define ADXViewTransitionController_

@class ADMotionEvent;
@class ADXMotionController;
@class ADXMotionLayout;
@class ADXViewTransition;
@class ADXViewTransition_Animate;
@class IOSObjectArray;
@class JavaUtilArrayList;

/*!
 @brief Container for ViewTransitions.It dispatches the run of a ViewTransition.
 It receives animate calls
 */
@interface ADXViewTransitionController : NSObject {
 @public
  JavaUtilArrayList *animations_;
  JavaUtilArrayList *removeList_;
}

#pragma mark Public

- (instancetype)initWithADXMotionLayout:(ADXMotionLayout *)layout;

- (void)addWithADXViewTransition:(ADXViewTransition *)viewTransition;

#pragma mark Package-Private

- (void)addAnimationWithADXViewTransition_Animate:(ADXViewTransition_Animate *)animation;

/*!
 @brief Called by motionLayout during draw to allow ViewTransitions to asynchronously animate
 */
- (void)animate;

- (jboolean)applyViewTransitionWithInt:(jint)viewTransitionId
               withADXMotionController:(ADXMotionController *)motionController;

- (void)enableViewTransitionWithInt:(jint)id_
                        withBoolean:(jboolean)enable;

- (void)invalidate;

- (jboolean)isViewTransitionEnabledWithInt:(jint)id_;

- (void)removeWithInt:(jint)id_;

- (void)removeAnimationWithADXViewTransition_Animate:(ADXViewTransition_Animate *)animation;

/*!
 @brief this gets Touch events on the MotionLayout and can fire transitions on down or up
 @param event
 */
- (void)touchEventWithADMotionEvent:(ADMotionEvent *)event;

/*!
 @brief Support call from MotionLayout.viewTransition
 @param id_ the id of a ViewTransition
 @param views the list of views to transition simultaneously
 */
- (void)viewTransitionWithInt:(jint)id_
              withADViewArray:(IOSObjectArray *)views;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewTransitionController)

J2OBJC_FIELD_SETTER(ADXViewTransitionController, animations_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ADXViewTransitionController, removeList_, JavaUtilArrayList *)

FOUNDATION_EXPORT void ADXViewTransitionController_initWithADXMotionLayout_(ADXViewTransitionController *self, ADXMotionLayout *layout);

FOUNDATION_EXPORT ADXViewTransitionController *new_ADXViewTransitionController_initWithADXMotionLayout_(ADXMotionLayout *layout) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewTransitionController *create_ADXViewTransitionController_initWithADXMotionLayout_(ADXMotionLayout *layout);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewTransitionController)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetViewTransitionController ADXViewTransitionController;

#endif

#pragma pop_macro("INCLUDE_ALL_ViewTransitionController")
