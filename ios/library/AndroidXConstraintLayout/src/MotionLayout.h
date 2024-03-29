//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\MotionLayout.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MotionLayout")
#ifdef RESTRICT_MotionLayout
#define INCLUDE_ALL_MotionLayout 0
#else
#define INCLUDE_ALL_MotionLayout 1
#endif
#undef RESTRICT_MotionLayout
#ifdef INCLUDE_ADXMotionLayout_MyTracker
#define INCLUDE_ADXMotionLayout_MotionTracker 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ADXMotionLayout_) && (INCLUDE_ALL_MotionLayout || defined(INCLUDE_ADXMotionLayout))
#define ADXMotionLayout_

#define RESTRICT_ConstraintLayout 1
#define INCLUDE_ADXConstraintLayout 1
#include "ConstraintLayout.h"

@class ADMotionEvent;
@class ADRect;
@class ADView;
@class ADXConstraintSet;
@class ADXMotionController;
@class ADXMotionLayout_Model;
@class ADXMotionLayout_TransitionState;
@class ADXMotionScene;
@class ADXMotionScene_Transition;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@protocol ADInterpolator;
@protocol ADXMotionLayout_MotionTracker;
@protocol JavaLangRunnable;

@interface ADXMotionLayout : ADXConstraintLayout {
 @public
  ADXMotionScene *mScene_;
  id<ADInterpolator> mInterpolator_;
  id<ADInterpolator> mProgressInterpolator_;
  jfloat mLastVelocity_;
  jint mCurrentState_;
  JavaUtilHashMap *mFrameArrayList_;
  jfloat mTransitionPosition_;
  jfloat mTransitionLastPosition_;
  jfloat mTransitionGoalPosition_;
  jboolean mInTransition_;
  jboolean mIndirectTransition_;
  jint mDebugPath_;
  jboolean firstDown_;
  jint mOldWidth_;
  jint mOldHeight_;
  jint mLastLayoutWidth_;
  jint mLastLayoutHeight_;
  jboolean mUndergoingMotion_;
  jfloat mScrollTargetDX_;
  jfloat mScrollTargetDY_;
  jfloat mScrollTargetDT_;
  jboolean mIsAnimating_;
  jboolean mMeasureDuringTransition_;
  jint mStartWrapWidth_;
  jint mStartWrapHeight_;
  jint mEndWrapWidth_;
  jint mEndWrapHeight_;
  jint mWidthMeasureMode_;
  jint mHeightMeasureMode_;
  jfloat mPostInterpolationPosition_;
  jint mScheduledTransitions_;
  jint mRotatMode_;
  JavaUtilHashMap *mPreRotate_;
  ADRect *mTempRect_;
  ADXMotionLayout_TransitionState *mTransitionState_;
  ADXMotionLayout_Model *mModel_;
  JavaUtilArrayList *mTransitionCompleted_;
}

#pragma mark Public

- (instancetype)init;

- (void)fireTriggerWithInt:(jint)triggerId
               withBoolean:(jboolean)positive
                 withFloat:(jfloat)progress;

- (ADXConstraintSet *)getConstraintSetWithInt:(jint)id_;

- (IOSIntArray *)getConstraintSetIds;

- (jint)getCurrentState;

- (JavaUtilArrayList *)getDefinedTransitions;

- (jint)getEndState;

- (jfloat)getProgress;

- (ADXMotionScene *)getScene;

- (jint)getStartState;

- (ADXMotionScene_Transition *)getTransitionWithInt:(jint)id_;

- (jfloat)getVelocity;

- (void)initMotionScene OBJC_METHOD_FAMILY_NONE;

- (void)invalidate;

- (jboolean)isInteractionEnabled;

- (id<ADXMotionLayout_MotionTracker>)obtainVelocityTracker;

- (jboolean)onTouchEventWithADMotionEvent:(ADMotionEvent *)event;

- (void)onViewAddedWithADView:(ADView *)view;

- (void)onViewRemovedWithADView:(ADView *)view;

- (void)postInit;

- (void)rebuildScene;

- (void)requestLayout;

- (void)setOnHideWithFloat:(jfloat)progress;

- (void)setOnShowWithFloat:(jfloat)progress;

- (void)setProgressWithFloat:(jfloat)pos;

- (void)setProgressWithFloat:(jfloat)pos
                   withFloat:(jfloat)velocity;

- (void)setReduceFlickerWithBoolean:(jboolean)reduceFlicker;

- (void)setStateWithInt:(jint)id_
                withInt:(jint)screenWidth
                withInt:(jint)screenHeight;

- (void)setTransitionWithInt:(jint)transitionId;

- (void)setTransitionWithInt:(jint)beginId
                     withInt:(jint)endId;

- (void)setTransitionDurationWithInt:(jint)milliseconds;

- (void)touchAnimateToWithInt:(jint)touchUpMode
                    withFloat:(jfloat)position
                    withFloat:(jfloat)currentVelocity;

- (void)transitionToEnd;

- (void)transitionToEndWithJavaLangRunnable:(id<JavaLangRunnable>)onComplete;

- (void)transitionToStart;

- (void)transitionToStateWithInt:(jint)id_;

- (void)transitionToStateWithInt:(jint)id_
                         withInt:(jint)duration;

- (void)transitionToStateWithInt:(jint)id_
                         withInt:(jint)screenWidth
                         withInt:(jint)screenHeight;

- (void)transitionToStateWithInt:(jint)id_
                         withInt:(jint)screenWidth
                         withInt:(jint)screenHeight
                         withInt:(jint)duration;

- (void)updateState;

- (void)updateStateWithInt:(jint)stateId
      withADXConstraintSet:(ADXConstraintSet *)set;

- (void)viewTransitionWithInt:(jint)viewTransitionId
              withADViewArray:(IOSObjectArray *)view;

#pragma mark Protected

- (void)fireTransitionCompleted;

- (jlong)getNanoTime;

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)left
                    withInt:(jint)top
                    withInt:(jint)right
                    withInt:(jint)bottom;

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

- (void)setTransitionWithADXMotionScene_Transition:(ADXMotionScene_Transition *)transition;

#pragma mark Package-Private

- (void)animateToWithFloat:(jfloat)position;

- (void)endTriggerWithBoolean:(jboolean)start;

- (void)evaluateWithBoolean:(jboolean)force;

- (void)getAnchorDpDtWithInt:(jint)mTouchAnchorId
                   withFloat:(jfloat)pos
                   withFloat:(jfloat)locationX
                   withFloat:(jfloat)locationY
              withFloatArray:(IOSFloatArray *)mAnchorDpDt;

- (ADXMotionController *)getMotionControllerWithInt:(jint)mTouchAnchorId;

- (void)onNewStateAttachHandlers;

- (void)setStateWithADXMotionLayout_TransitionState:(ADXMotionLayout_TransitionState *)newState;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionLayout)

J2OBJC_FIELD_SETTER(ADXMotionLayout, mScene_, ADXMotionScene *)
J2OBJC_FIELD_SETTER(ADXMotionLayout, mInterpolator_, id<ADInterpolator>)
J2OBJC_FIELD_SETTER(ADXMotionLayout, mProgressInterpolator_, id<ADInterpolator>)
J2OBJC_FIELD_SETTER(ADXMotionLayout, mFrameArrayList_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ADXMotionLayout, mPreRotate_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ADXMotionLayout, mTempRect_, ADRect *)
J2OBJC_FIELD_SETTER(ADXMotionLayout, mTransitionState_, ADXMotionLayout_TransitionState *)
J2OBJC_FIELD_SETTER(ADXMotionLayout, mModel_, ADXMotionLayout_Model *)
J2OBJC_FIELD_SETTER(ADXMotionLayout, mTransitionCompleted_, JavaUtilArrayList *)

inline jint ADXMotionLayout_get_TOUCH_UP_COMPLETE(void);
#define ADXMotionLayout_TOUCH_UP_COMPLETE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, TOUCH_UP_COMPLETE, jint)

inline jint ADXMotionLayout_get_TOUCH_UP_COMPLETE_TO_START(void);
#define ADXMotionLayout_TOUCH_UP_COMPLETE_TO_START 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, TOUCH_UP_COMPLETE_TO_START, jint)

inline jint ADXMotionLayout_get_TOUCH_UP_COMPLETE_TO_END(void);
#define ADXMotionLayout_TOUCH_UP_COMPLETE_TO_END 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, TOUCH_UP_COMPLETE_TO_END, jint)

inline jint ADXMotionLayout_get_TOUCH_UP_STOP(void);
#define ADXMotionLayout_TOUCH_UP_STOP 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, TOUCH_UP_STOP, jint)

inline jint ADXMotionLayout_get_TOUCH_UP_DECELERATE(void);
#define ADXMotionLayout_TOUCH_UP_DECELERATE 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, TOUCH_UP_DECELERATE, jint)

inline jint ADXMotionLayout_get_TOUCH_UP_DECELERATE_AND_COMPLETE(void);
#define ADXMotionLayout_TOUCH_UP_DECELERATE_AND_COMPLETE 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, TOUCH_UP_DECELERATE_AND_COMPLETE, jint)

inline jint ADXMotionLayout_get_TOUCH_UP_NEVER_TO_START(void);
#define ADXMotionLayout_TOUCH_UP_NEVER_TO_START 6
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, TOUCH_UP_NEVER_TO_START, jint)

inline jint ADXMotionLayout_get_TOUCH_UP_NEVER_TO_END(void);
#define ADXMotionLayout_TOUCH_UP_NEVER_TO_END 7
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, TOUCH_UP_NEVER_TO_END, jint)

inline NSString *ADXMotionLayout_get_TAG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXMotionLayout_TAG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXMotionLayout, TAG, NSString *)

inline jboolean ADXMotionLayout_get_IS_IN_EDIT_MODE(void);
inline jboolean ADXMotionLayout_set_IS_IN_EDIT_MODE(jboolean value);
inline jboolean *ADXMotionLayout_getRef_IS_IN_EDIT_MODE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean ADXMotionLayout_IS_IN_EDIT_MODE;
J2OBJC_STATIC_FIELD_PRIMITIVE(ADXMotionLayout, IS_IN_EDIT_MODE, jboolean)

inline jint ADXMotionLayout_get_DEBUG_SHOW_NONE(void);
#define ADXMotionLayout_DEBUG_SHOW_NONE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, DEBUG_SHOW_NONE, jint)

inline jint ADXMotionLayout_get_DEBUG_SHOW_PROGRESS(void);
#define ADXMotionLayout_DEBUG_SHOW_PROGRESS 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, DEBUG_SHOW_PROGRESS, jint)

inline jint ADXMotionLayout_get_DEBUG_SHOW_PATH(void);
#define ADXMotionLayout_DEBUG_SHOW_PATH 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, DEBUG_SHOW_PATH, jint)

inline jint ADXMotionLayout_get_MAX_KEY_FRAMES(void);
#define ADXMotionLayout_MAX_KEY_FRAMES 50
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, MAX_KEY_FRAMES, jint)

inline jint ADXMotionLayout_get_VELOCITY_POST_LAYOUT(void);
#define ADXMotionLayout_VELOCITY_POST_LAYOUT 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, VELOCITY_POST_LAYOUT, jint)

inline jint ADXMotionLayout_get_VELOCITY_LAYOUT(void);
#define ADXMotionLayout_VELOCITY_LAYOUT 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, VELOCITY_LAYOUT, jint)

inline jint ADXMotionLayout_get_VELOCITY_STATIC_POST_LAYOUT(void);
#define ADXMotionLayout_VELOCITY_STATIC_POST_LAYOUT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, VELOCITY_STATIC_POST_LAYOUT, jint)

inline jint ADXMotionLayout_get_VELOCITY_STATIC_LAYOUT(void);
#define ADXMotionLayout_VELOCITY_STATIC_LAYOUT 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionLayout, VELOCITY_STATIC_LAYOUT, jint)

FOUNDATION_EXPORT void ADXMotionLayout_init(ADXMotionLayout *self);

FOUNDATION_EXPORT ADXMotionLayout *new_ADXMotionLayout_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXMotionLayout *create_ADXMotionLayout_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionLayout)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetMotionLayout ADXMotionLayout;

#endif

#if !defined (ADXMotionLayout_TransitionState_) && (INCLUDE_ALL_MotionLayout || defined(INCLUDE_ADXMotionLayout_TransitionState))
#define ADXMotionLayout_TransitionState_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ADXMotionLayout_TransitionState_Enum) {
  ADXMotionLayout_TransitionState_Enum_UNDEFINED = 0,
  ADXMotionLayout_TransitionState_Enum_SETUP = 1,
  ADXMotionLayout_TransitionState_Enum_MOVING = 2,
  ADXMotionLayout_TransitionState_Enum_FINISHED = 3,
};

@interface ADXMotionLayout_TransitionState : JavaLangEnum

#pragma mark Public

+ (ADXMotionLayout_TransitionState *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ADXMotionLayout_TransitionState_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ADXMotionLayout_TransitionState)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ADXMotionLayout_TransitionState *ADXMotionLayout_TransitionState_values_[];

inline ADXMotionLayout_TransitionState *ADXMotionLayout_TransitionState_get_UNDEFINED(void);
J2OBJC_ENUM_CONSTANT(ADXMotionLayout_TransitionState, UNDEFINED)

inline ADXMotionLayout_TransitionState *ADXMotionLayout_TransitionState_get_SETUP(void);
J2OBJC_ENUM_CONSTANT(ADXMotionLayout_TransitionState, SETUP)

inline ADXMotionLayout_TransitionState *ADXMotionLayout_TransitionState_get_MOVING(void);
J2OBJC_ENUM_CONSTANT(ADXMotionLayout_TransitionState, MOVING)

inline ADXMotionLayout_TransitionState *ADXMotionLayout_TransitionState_get_FINISHED(void);
J2OBJC_ENUM_CONSTANT(ADXMotionLayout_TransitionState, FINISHED)

FOUNDATION_EXPORT IOSObjectArray *ADXMotionLayout_TransitionState_values(void);

FOUNDATION_EXPORT ADXMotionLayout_TransitionState *ADXMotionLayout_TransitionState_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ADXMotionLayout_TransitionState *ADXMotionLayout_TransitionState_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionLayout_TransitionState)

#endif

#if !defined (ADXMotionLayout_MotionTracker_) && (INCLUDE_ALL_MotionLayout || defined(INCLUDE_ADXMotionLayout_MotionTracker))
#define ADXMotionLayout_MotionTracker_

@class ADMotionEvent;

@protocol ADXMotionLayout_MotionTracker < JavaObject >

- (void)recycle;

- (void)clear;

- (void)addMovementWithADMotionEvent:(ADMotionEvent *)event;

- (void)computeCurrentVelocityWithInt:(jint)units;

- (void)computeCurrentVelocityWithInt:(jint)units
                            withFloat:(jfloat)maxVelocity;

- (jfloat)getXVelocity;

- (jfloat)getYVelocity;

- (jfloat)getXVelocityWithInt:(jint)id_;

- (jfloat)getYVelocityWithInt:(jint)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionLayout_MotionTracker)

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionLayout_MotionTracker)

#endif

#if !defined (ADXMotionLayout_StateCache_) && (INCLUDE_ALL_MotionLayout || defined(INCLUDE_ADXMotionLayout_StateCache))
#define ADXMotionLayout_StateCache_

@class ADBundle;
@class ADXMotionLayout;

@interface ADXMotionLayout_StateCache : NSObject {
 @public
  jfloat mProgress_;
  jfloat mVelocity_;
  jint startState_;
  jint endState_;
  NSString *KeyProgress_;
  NSString *KeyVelocity_;
  NSString *KeyStartState_;
  NSString *KeyEndState_;
}

#pragma mark Public

- (ADBundle *)getTransitionState;

- (void)recordState;

- (void)setEndStateWithInt:(jint)endState;

- (void)setProgressWithFloat:(jfloat)progress;

- (void)setStartStateWithInt:(jint)startState;

- (void)setTransitionStateWithADBundle:(ADBundle *)bundle;

- (void)setVelocityWithFloat:(jfloat)mVelocity;

#pragma mark Package-Private

- (instancetype)initWithADXMotionLayout:(ADXMotionLayout *)outer$;

- (void)apply;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionLayout_StateCache)

J2OBJC_FIELD_SETTER(ADXMotionLayout_StateCache, KeyProgress_, NSString *)
J2OBJC_FIELD_SETTER(ADXMotionLayout_StateCache, KeyVelocity_, NSString *)
J2OBJC_FIELD_SETTER(ADXMotionLayout_StateCache, KeyStartState_, NSString *)
J2OBJC_FIELD_SETTER(ADXMotionLayout_StateCache, KeyEndState_, NSString *)

FOUNDATION_EXPORT void ADXMotionLayout_StateCache_initWithADXMotionLayout_(ADXMotionLayout_StateCache *self, ADXMotionLayout *outer$);

FOUNDATION_EXPORT ADXMotionLayout_StateCache *new_ADXMotionLayout_StateCache_initWithADXMotionLayout_(ADXMotionLayout *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXMotionLayout_StateCache *create_ADXMotionLayout_StateCache_initWithADXMotionLayout_(ADXMotionLayout *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionLayout_StateCache)

#endif

#if !defined (ADXMotionLayout_DecelerateInterpolator_) && (INCLUDE_ALL_MotionLayout || defined(INCLUDE_ADXMotionLayout_DecelerateInterpolator))
#define ADXMotionLayout_DecelerateInterpolator_

#define RESTRICT_MotionInterpolator 1
#define INCLUDE_ADXMotionInterpolator 1
#include "MotionInterpolator.h"

@class ADXMotionLayout;

@interface ADXMotionLayout_DecelerateInterpolator : ADXMotionInterpolator {
 @public
  jfloat initalV_;
  jfloat currentP_;
  jfloat maxA_;
}

#pragma mark Public

- (void)configWithFloat:(jfloat)velocity
              withFloat:(jfloat)position
              withFloat:(jfloat)maxAcceleration;

- (jfloat)getInterpolationWithFloat:(jfloat)time;

- (jfloat)getVelocity;

#pragma mark Package-Private

- (instancetype)initWithADXMotionLayout:(ADXMotionLayout *)outer$;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionLayout_DecelerateInterpolator)

FOUNDATION_EXPORT void ADXMotionLayout_DecelerateInterpolator_initWithADXMotionLayout_(ADXMotionLayout_DecelerateInterpolator *self, ADXMotionLayout *outer$);

FOUNDATION_EXPORT ADXMotionLayout_DecelerateInterpolator *new_ADXMotionLayout_DecelerateInterpolator_initWithADXMotionLayout_(ADXMotionLayout *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXMotionLayout_DecelerateInterpolator *create_ADXMotionLayout_DecelerateInterpolator_initWithADXMotionLayout_(ADXMotionLayout *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionLayout_DecelerateInterpolator)

#endif

#if !defined (ADXMotionLayout_Model_) && (INCLUDE_ALL_MotionLayout || defined(INCLUDE_ADXMotionLayout_Model))
#define ADXMotionLayout_Model_

@class ADView;
@class ADXConstraintSet;
@class ADXConstraintWidget;
@class ADXConstraintWidgetContainer;
@class ADXMotionLayout;

@interface ADXMotionLayout_Model : NSObject {
 @public
  ADXConstraintWidgetContainer *mLayoutStart_;
  ADXConstraintWidgetContainer *mLayoutEnd_;
  ADXConstraintSet *mStart_;
  ADXConstraintSet *mEnd_;
  jint mStartId_;
  jint mEndId_;
}

#pragma mark Public

- (void)build;

- (jboolean)isNotConfiguredWithWithInt:(jint)startId
                               withInt:(jint)endId;

- (void)measureWithInt:(jint)widthMeasureSpec
               withInt:(jint)heightMeasureSpec;

- (void)reEvaluateState;

- (void)setMeasuredIdWithInt:(jint)startId
                     withInt:(jint)endId;

#pragma mark Package-Private

- (instancetype)initWithADXMotionLayout:(ADXMotionLayout *)outer$;

- (void)copy__WithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)src
              withADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)dest OBJC_METHOD_FAMILY_NONE;

- (ADXConstraintWidget *)getWidgetWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)container
                                                        withADView:(ADView *)view;

- (void)initFromWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)baseLayout
                            withADXConstraintSet:(ADXConstraintSet *)start
                            withADXConstraintSet:(ADXConstraintSet *)end OBJC_METHOD_FAMILY_NONE;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionLayout_Model)

J2OBJC_FIELD_SETTER(ADXMotionLayout_Model, mLayoutStart_, ADXConstraintWidgetContainer *)
J2OBJC_FIELD_SETTER(ADXMotionLayout_Model, mLayoutEnd_, ADXConstraintWidgetContainer *)
J2OBJC_FIELD_SETTER(ADXMotionLayout_Model, mStart_, ADXConstraintSet *)
J2OBJC_FIELD_SETTER(ADXMotionLayout_Model, mEnd_, ADXConstraintSet *)

FOUNDATION_EXPORT void ADXMotionLayout_Model_initWithADXMotionLayout_(ADXMotionLayout_Model *self, ADXMotionLayout *outer$);

FOUNDATION_EXPORT ADXMotionLayout_Model *new_ADXMotionLayout_Model_initWithADXMotionLayout_(ADXMotionLayout *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXMotionLayout_Model *create_ADXMotionLayout_Model_initWithADXMotionLayout_(ADXMotionLayout *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionLayout_Model)

#endif

#if !defined (ADXMotionLayout_TransitionListener_) && (INCLUDE_ALL_MotionLayout || defined(INCLUDE_ADXMotionLayout_TransitionListener))
#define ADXMotionLayout_TransitionListener_

@class ADXMotionLayout;

@protocol ADXMotionLayout_TransitionListener < JavaObject >

- (void)onTransitionStartedWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                                       withInt:(jint)startId
                                       withInt:(jint)endId;

- (void)onTransitionChangeWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                                      withInt:(jint)startId
                                      withInt:(jint)endId
                                    withFloat:(jfloat)progress;

- (void)onTransitionCompletedWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                                         withInt:(jint)currentId;

- (void)onTransitionTriggerWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                                       withInt:(jint)triggerId
                                   withBoolean:(jboolean)positive
                                     withFloat:(jfloat)progress;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionLayout_TransitionListener)

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionLayout_TransitionListener)

#endif

#if !defined (ADXMotionLayout_MyTracker_) && (INCLUDE_ALL_MotionLayout || defined(INCLUDE_ADXMotionLayout_MyTracker))
#define ADXMotionLayout_MyTracker_

@class ADMotionEvent;

@interface ADXMotionLayout_MyTracker : NSObject < ADXMotionLayout_MotionTracker >

#pragma mark Public

- (instancetype)init;

- (void)addMovementWithADMotionEvent:(ADMotionEvent *)event;

- (void)clear;

- (void)computeCurrentVelocityWithInt:(jint)units;

- (void)computeCurrentVelocityWithInt:(jint)units
                            withFloat:(jfloat)maxVelocity;

- (jfloat)getXVelocity;

- (jfloat)getXVelocityWithInt:(jint)id_;

- (jfloat)getYVelocity;

- (jfloat)getYVelocityWithInt:(jint)id_;

- (void)recycle;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionLayout_MyTracker)

FOUNDATION_EXPORT void ADXMotionLayout_MyTracker_init(ADXMotionLayout_MyTracker *self);

FOUNDATION_EXPORT ADXMotionLayout_MyTracker *new_ADXMotionLayout_MyTracker_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXMotionLayout_MyTracker *create_ADXMotionLayout_MyTracker_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionLayout_MyTracker)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_MotionLayout")
