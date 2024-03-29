//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\ViewTransition.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ViewTransition")
#ifdef RESTRICT_ViewTransition
#define INCLUDE_ALL_ViewTransition 0
#else
#define INCLUDE_ALL_ViewTransition 1
#endif
#undef RESTRICT_ViewTransition

#if !defined (ADXViewTransition_) && (INCLUDE_ALL_ViewTransition || defined(INCLUDE_ADXViewTransition))
#define ADXViewTransition_

@class ADContext;
@class ADView;
@class ADXConstraintSet;
@class ADXConstraintSet_Constraint;
@class ADXKeyFrames;
@class ADXMotionLayout;
@class ADXViewTransitionController;
@class IOSObjectArray;
@protocol ADInterpolator;

/*!
 @brief Provides a support for <ViewTransition> tag
  it Parses tag
  it implement the transition
  it will update ConstraintSet or sets
  For asynchronous it will create and drive a MotionController.
 */
@interface ADXViewTransition : NSObject {
 @public
  ADXConstraintSet *set_;
  jint mViewTransitionMode_;
  ADXKeyFrames *mKeyFrames_;
  ADXConstraintSet_Constraint *mConstraintDelta_;
  ADContext *mContext_;
}

#pragma mark Public

- (instancetype)init;

/*!
 @brief Gets the SharedValue it will be listening for.
 */
- (jint)getSharedValue;

- (jint)getSharedValueCurrent;

/*!
 @brief Gets the ID of the SharedValue it will be listening for.
 @return the id of the shared value
 */
- (jint)getSharedValueID;

/*!
 @brief Gets the type of transition to listen to.
 @return ONSTATE_TRANSITION_*
 */
- (jint)getStateTransition;

/*!
 @brief sets the SharedValue it will be listening for.
 */
- (void)setSharedValueWithInt:(jint)sharedValue;

- (void)setSharedValueCurrentWithInt:(jint)sharedValueCurrent;

/*!
 @brief sets the ID of the SharedValue it will be listening for.
 */
- (void)setSharedValueIDWithInt:(jint)sharedValueID;

/*!
 @brief Sets the type of transition to listen to.
 @param stateTransition
 */
- (void)setStateTransitionWithInt:(jint)stateTransition;

- (NSString *)description;

#pragma mark Package-Private

- (void)applyIndependentTransitionWithADXViewTransitionController:(ADXViewTransitionController *)controller
                                              withADXMotionLayout:(ADXMotionLayout *)motionLayout
                                                       withADView:(ADView *)view;

- (void)applyTransitionWithADXViewTransitionController:(ADXViewTransitionController *)controller
                                   withADXMotionLayout:(ADXMotionLayout *)layout
                                               withInt:(jint)fromId
                                  withADXConstraintSet:(ADXConstraintSet *)current
                                       withADViewArray:(IOSObjectArray *)views;

- (jboolean)checkTagsWithADView:(ADView *)view;

- (jint)getId;

- (id<ADInterpolator>)getInterpolatorWithADContext:(ADContext *)context;

- (jboolean)isEnabled;

- (jboolean)matchesViewWithADView:(ADView *)view;

- (void)setEnabledWithBoolean:(jboolean)enable;

- (void)setIdWithInt:(jint)id_;

- (jboolean)supportsWithInt:(jint)action;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewTransition)

J2OBJC_FIELD_SETTER(ADXViewTransition, set_, ADXConstraintSet *)
J2OBJC_FIELD_SETTER(ADXViewTransition, mKeyFrames_, ADXKeyFrames *)
J2OBJC_FIELD_SETTER(ADXViewTransition, mConstraintDelta_, ADXConstraintSet_Constraint *)
J2OBJC_FIELD_SETTER(ADXViewTransition, mContext_, ADContext *)

inline NSString *ADXViewTransition_get_VIEW_TRANSITION_TAG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXViewTransition_VIEW_TRANSITION_TAG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXViewTransition, VIEW_TRANSITION_TAG, NSString *)

inline NSString *ADXViewTransition_get_KEY_FRAME_SET_TAG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXViewTransition_KEY_FRAME_SET_TAG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXViewTransition, KEY_FRAME_SET_TAG, NSString *)

inline NSString *ADXViewTransition_get_CONSTRAINT_OVERRIDE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXViewTransition_CONSTRAINT_OVERRIDE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXViewTransition, CONSTRAINT_OVERRIDE, NSString *)

inline NSString *ADXViewTransition_get_CUSTOM_ATTRIBUTE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXViewTransition_CUSTOM_ATTRIBUTE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXViewTransition, CUSTOM_ATTRIBUTE, NSString *)

inline NSString *ADXViewTransition_get_CUSTOM_METHOD(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXViewTransition_CUSTOM_METHOD;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXViewTransition, CUSTOM_METHOD, NSString *)

inline jint ADXViewTransition_get_ONSTATE_ACTION_DOWN(void);
#define ADXViewTransition_ONSTATE_ACTION_DOWN 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, ONSTATE_ACTION_DOWN, jint)

inline jint ADXViewTransition_get_ONSTATE_ACTION_UP(void);
#define ADXViewTransition_ONSTATE_ACTION_UP 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, ONSTATE_ACTION_UP, jint)

inline jint ADXViewTransition_get_ONSTATE_ACTION_DOWN_UP(void);
#define ADXViewTransition_ONSTATE_ACTION_DOWN_UP 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, ONSTATE_ACTION_DOWN_UP, jint)

inline jint ADXViewTransition_get_ONSTATE_SHARED_VALUE_SET(void);
#define ADXViewTransition_ONSTATE_SHARED_VALUE_SET 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, ONSTATE_SHARED_VALUE_SET, jint)

inline jint ADXViewTransition_get_ONSTATE_SHARED_VALUE_UNSET(void);
#define ADXViewTransition_ONSTATE_SHARED_VALUE_UNSET 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, ONSTATE_SHARED_VALUE_UNSET, jint)

inline jint ADXViewTransition_get_VIEWTRANSITIONMODE_CURRENTSTATE(void);
#define ADXViewTransition_VIEWTRANSITIONMODE_CURRENTSTATE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, VIEWTRANSITIONMODE_CURRENTSTATE, jint)

inline jint ADXViewTransition_get_VIEWTRANSITIONMODE_ALLSTATES(void);
#define ADXViewTransition_VIEWTRANSITIONMODE_ALLSTATES 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, VIEWTRANSITIONMODE_ALLSTATES, jint)

inline jint ADXViewTransition_get_VIEWTRANSITIONMODE_NOSTATE(void);
#define ADXViewTransition_VIEWTRANSITIONMODE_NOSTATE 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, VIEWTRANSITIONMODE_NOSTATE, jint)

inline jint ADXViewTransition_get_EASE_IN_OUT(void);
#define ADXViewTransition_EASE_IN_OUT 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, EASE_IN_OUT, jint)

inline jint ADXViewTransition_get_EASE_IN(void);
#define ADXViewTransition_EASE_IN 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, EASE_IN, jint)

inline jint ADXViewTransition_get_EASE_OUT(void);
#define ADXViewTransition_EASE_OUT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, EASE_OUT, jint)

inline jint ADXViewTransition_get_LINEAR(void);
#define ADXViewTransition_LINEAR 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, LINEAR, jint)

inline jint ADXViewTransition_get_BOUNCE(void);
#define ADXViewTransition_BOUNCE 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, BOUNCE, jint)

inline jint ADXViewTransition_get_OVERSHOOT(void);
#define ADXViewTransition_OVERSHOOT 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, OVERSHOOT, jint)

inline jint ADXViewTransition_get_ANTICIPATE(void);
#define ADXViewTransition_ANTICIPATE 6
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, ANTICIPATE, jint)

FOUNDATION_EXPORT void ADXViewTransition_init(ADXViewTransition *self);

FOUNDATION_EXPORT ADXViewTransition *new_ADXViewTransition_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewTransition *create_ADXViewTransition_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewTransition)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetViewTransition ADXViewTransition;

#endif

#if !defined (ADXViewTransition_Animate_) && (INCLUDE_ALL_ViewTransition || defined(INCLUDE_ADXViewTransition_Animate))
#define ADXViewTransition_Animate_

@class ADRect;
@class ADXKeyCache;
@class ADXMotionController;
@class ADXViewTransitionController;
@protocol ADInterpolator;

@interface ADXViewTransition_Animate : NSObject {
 @public
  jlong mStart_;
  ADXMotionController *mMC_;
  jint mDuration_;
  jint mUpDuration_;
  ADXKeyCache *mCache_;
  ADXViewTransitionController *mVtController_;
  id<ADInterpolator> mInterpolator_;
  jboolean reverse_;
  jfloat mPosition_;
  jfloat mDpositionDt_;
  jlong mLastRender_;
  ADRect *mTempRec_;
  jboolean hold_at_100_;
}

#pragma mark Public

- (void)reactToWithInt:(jint)action
             withFloat:(jfloat)x
             withFloat:(jfloat)y;

#pragma mark Package-Private

- (instancetype)initWithADXViewTransitionController:(ADXViewTransitionController *)controller
                            withADXMotionController:(ADXMotionController *)motionController
                                            withInt:(jint)duration
                                            withInt:(jint)upDuration
                                            withInt:(jint)mode
                                 withADInterpolator:(id<ADInterpolator>)interpolator
                                            withInt:(jint)setTag
                                            withInt:(jint)clearTag;

- (void)mutate;

- (void)mutateForward;

- (void)mutateReverse;

- (void)reverseWithBoolean:(jboolean)dir;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewTransition_Animate)

J2OBJC_FIELD_SETTER(ADXViewTransition_Animate, mMC_, ADXMotionController *)
J2OBJC_FIELD_SETTER(ADXViewTransition_Animate, mCache_, ADXKeyCache *)
J2OBJC_FIELD_SETTER(ADXViewTransition_Animate, mVtController_, ADXViewTransitionController *)
J2OBJC_FIELD_SETTER(ADXViewTransition_Animate, mInterpolator_, id<ADInterpolator>)
J2OBJC_FIELD_SETTER(ADXViewTransition_Animate, mTempRec_, ADRect *)

FOUNDATION_EXPORT void ADXViewTransition_Animate_initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_(ADXViewTransition_Animate *self, ADXViewTransitionController *controller, ADXMotionController *motionController, jint duration, jint upDuration, jint mode, id<ADInterpolator> interpolator, jint setTag, jint clearTag);

FOUNDATION_EXPORT ADXViewTransition_Animate *new_ADXViewTransition_Animate_initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_(ADXViewTransitionController *controller, ADXMotionController *motionController, jint duration, jint upDuration, jint mode, id<ADInterpolator> interpolator, jint setTag, jint clearTag) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewTransition_Animate *create_ADXViewTransition_Animate_initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_(ADXViewTransitionController *controller, ADXMotionController *motionController, jint duration, jint upDuration, jint mode, id<ADInterpolator> interpolator, jint setTag, jint clearTag);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewTransition_Animate)

#endif

#pragma pop_macro("INCLUDE_ALL_ViewTransition")
