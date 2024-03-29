//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\ViewTransition.java
//

#include "AccelerateDecelerateInterpolator.h"
#include "AccelerateInterpolator.h"
#include "AnimationUtils.h"
#include "AnticipateInterpolator.h"
#include "BounceInterpolator.h"
#include "CLDebug.h"
#include "ConstraintLayout.h"
#include "ConstraintSet.h"
#include "Context.h"
#include "DecelerateInterpolator.h"
#include "Easing.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "Interpolator.h"
#include "J2ObjC_source.h"
#include "Key.h"
#include "KeyCache.h"
#include "KeyFrames.h"
#include "MotionController.h"
#include "MotionEvent.h"
#include "MotionLayout.h"
#include "MotionScene.h"
#include "OvershootInterpolator.h"
#include "R.h"
#include "Rect.h"
#include "View.h"
#include "ViewGroup.h"
#include "ViewTransition.h"
#include "ViewTransitionController.h"
#include "java/lang/Float.h"
#include "java/lang/Long.h"
#include "java/lang/Runnable.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#pragma clang diagnostic ignored "-Wprotocol"

@interface ADXViewTransition () {
 @public
  jint mId_;
  jint mOnStateTransition_;
  jboolean mDisabled_;
  jint mPathMotionArc_;
  jint mDuration_;
  jint mUpDuration_;
  jint mTargetId_;
  NSString *mTargetString_;
  jint mDefaultInterpolator_;
  NSString *mDefaultInterpolatorString_;
  jint mDefaultInterpolatorID_;
  jint mSetsTag_;
  jint mClearsTag_;
  jint mIfTagSet_;
  jint mIfTagNotSet_;
  jint mSharedValueTarget_;
  jint mSharedValueID_;
  jint mSharedValueCurrent_;
}

- (void)updateTransitionWithADXMotionScene_Transition:(ADXMotionScene_Transition *)transition
                                           withADView:(ADView *)view;

@end

J2OBJC_FIELD_SETTER(ADXViewTransition, mTargetString_, NSString *)
J2OBJC_FIELD_SETTER(ADXViewTransition, mDefaultInterpolatorString_, NSString *)

inline NSString *ADXViewTransition_get_TAG(void);
inline NSString *ADXViewTransition_set_TAG(NSString *value);
static NSString *ADXViewTransition_TAG = @"ViewTransition";
J2OBJC_STATIC_FIELD_OBJ(ADXViewTransition, TAG, NSString *)

inline jint ADXViewTransition_get_UNSET(void);
#define ADXViewTransition_UNSET -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, UNSET, jint)

inline jint ADXViewTransition_get_SPLINE_STRING(void);
#define ADXViewTransition_SPLINE_STRING -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, SPLINE_STRING, jint)

inline jint ADXViewTransition_get_INTERPOLATOR_REFERENCE_ID(void);
#define ADXViewTransition_INTERPOLATOR_REFERENCE_ID -2
J2OBJC_STATIC_FIELD_CONSTANT(ADXViewTransition, INTERPOLATOR_REFERENCE_ID, jint)

__attribute__((unused)) static void ADXViewTransition_updateTransitionWithADXMotionScene_Transition_withADView_(ADXViewTransition *self, ADXMotionScene_Transition *transition, ADView *view);

@interface ADXViewTransition_1 : NSObject < ADInterpolator > {
 @public
  ADXEasing *val$easing_;
}

- (instancetype)initWithADXEasing:(ADXEasing *)capture$0;

- (jfloat)getInterpolationWithFloat:(jfloat)v;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewTransition_1)

__attribute__((unused)) static void ADXViewTransition_1_initWithADXEasing_(ADXViewTransition_1 *self, ADXEasing *capture$0);

__attribute__((unused)) static ADXViewTransition_1 *new_ADXViewTransition_1_initWithADXEasing_(ADXEasing *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADXViewTransition_1 *create_ADXViewTransition_1_initWithADXEasing_(ADXEasing *capture$0);

@interface ADXViewTransition_Animate () {
 @public
  jint mSetsTag_;
  jint mClearsTag_;
}

@end

@interface ADXViewTransition_$Lambda$1 : NSObject < JavaLangRunnable > {
 @public
  ADXViewTransition *this$0_;
  IOSObjectArray *val$views_;
}

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewTransition_$Lambda$1)

__attribute__((unused)) static void ADXViewTransition_$Lambda$1_initWithADXViewTransition_withADViewArray_(ADXViewTransition_$Lambda$1 *self, ADXViewTransition *outer$, IOSObjectArray *capture$0);

__attribute__((unused)) static ADXViewTransition_$Lambda$1 *new_ADXViewTransition_$Lambda$1_initWithADXViewTransition_withADViewArray_(ADXViewTransition *outer$, IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADXViewTransition_$Lambda$1 *create_ADXViewTransition_$Lambda$1_initWithADXViewTransition_withADViewArray_(ADXViewTransition *outer$, IOSObjectArray *capture$0);

NSString *ADXViewTransition_VIEW_TRANSITION_TAG = @"ViewTransition";
NSString *ADXViewTransition_KEY_FRAME_SET_TAG = @"KeyFrameSet";
NSString *ADXViewTransition_CONSTRAINT_OVERRIDE = @"ConstraintOverride";
NSString *ADXViewTransition_CUSTOM_ATTRIBUTE = @"CustomAttribute";
NSString *ADXViewTransition_CUSTOM_METHOD = @"CustomMethod";

@implementation ADXViewTransition

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewTransition_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getSharedValueCurrent {
  return mSharedValueCurrent_;
}

- (void)setSharedValueCurrentWithInt:(jint)sharedValueCurrent {
  self->mSharedValueCurrent_ = sharedValueCurrent;
}

- (jint)getStateTransition {
  return mOnStateTransition_;
}

- (void)setStateTransitionWithInt:(jint)stateTransition {
  self->mOnStateTransition_ = stateTransition;
}

- (jint)getSharedValue {
  return mSharedValueTarget_;
}

- (void)setSharedValueWithInt:(jint)sharedValue {
  self->mSharedValueTarget_ = sharedValue;
}

- (jint)getSharedValueID {
  return mSharedValueID_;
}

- (void)setSharedValueIDWithInt:(jint)sharedValueID {
  self->mSharedValueID_ = sharedValueID;
}

- (NSString *)description {
  return JreStrcat("$IC", @"ViewTransition(", ADXCLDebug_getNameWithADContext_withInt_(mContext_, mId_), ')');
}

- (id<ADInterpolator>)getInterpolatorWithADContext:(ADContext *)context {
  {
    ADXEasing *easing;
    switch (mDefaultInterpolator_) {
      case ADXViewTransition_SPLINE_STRING:
      easing = ADXEasing_getInterpolatorWithNSString_(mDefaultInterpolatorString_);
      return create_ADXViewTransition_1_initWithADXEasing_(easing);
      case ADXViewTransition_INTERPOLATOR_REFERENCE_ID:
      return ADAnimationUtils_loadInterpolatorWithADContext_withInt_(context, mDefaultInterpolatorID_);
      case ADXViewTransition_EASE_IN_OUT:
      return create_ADAccelerateDecelerateInterpolator_init();
      case ADXViewTransition_EASE_IN:
      return create_ADAccelerateInterpolator_init();
      case ADXViewTransition_EASE_OUT:
      return create_ADDecelerateInterpolator_init();
      case ADXViewTransition_LINEAR:
      return nil;
      case ADXViewTransition_ANTICIPATE:
      return create_ADAnticipateInterpolator_init();
      case ADXViewTransition_OVERSHOOT:
      return create_ADOvershootInterpolator_init();
      case ADXViewTransition_BOUNCE:
      return create_ADBounceInterpolator_init();
    }
  }
  return nil;
}

- (void)applyIndependentTransitionWithADXViewTransitionController:(ADXViewTransitionController *)controller
                                              withADXMotionLayout:(ADXMotionLayout *)motionLayout
                                                       withADView:(ADView *)view {
  ADXMotionController *motionController = create_ADXMotionController_initWithADView_(view);
  [motionController setBothStatesWithADView:view];
  [((ADXKeyFrames *) nil_chk(mKeyFrames_)) addAllFramesWithADXMotionController:motionController];
  [motionController setupWithInt:[((ADXMotionLayout *) nil_chk(motionLayout)) getWidth] withInt:[motionLayout getHeight] withFloat:mDuration_ withLong:JavaLangSystem_nanoTime()];
  create_ADXViewTransition_Animate_initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_(controller, motionController, mDuration_, mUpDuration_, mOnStateTransition_, [self getInterpolatorWithADContext:[motionLayout getContext]], mSetsTag_, mClearsTag_);
}

- (void)applyTransitionWithADXViewTransitionController:(ADXViewTransitionController *)controller
                                   withADXMotionLayout:(ADXMotionLayout *)layout
                                               withInt:(jint)fromId
                                  withADXConstraintSet:(ADXConstraintSet *)current
                                       withADViewArray:(IOSObjectArray *)views {
  if (mDisabled_) {
    return;
  }
  if (mViewTransitionMode_ == ADXViewTransition_VIEWTRANSITIONMODE_NOSTATE) {
    [self applyIndependentTransitionWithADXViewTransitionController:controller withADXMotionLayout:layout withADView:IOSObjectArray_Get(nil_chk(views), 0)];
    return;
  }
  if (mViewTransitionMode_ == ADXViewTransition_VIEWTRANSITIONMODE_ALLSTATES) {
    IOSIntArray *ids = [((ADXMotionLayout *) nil_chk(layout)) getConstraintSetIds];
    for (jint i = 0; i < ((IOSIntArray *) nil_chk(ids))->size_; i++) {
      jint id_ = IOSIntArray_Get(ids, i);
      if (id_ == fromId) {
        continue;
      }
      ADXConstraintSet *cSet = JreRetainedLocalValue([layout getConstraintSetWithInt:id_]);
      {
        IOSObjectArray *a__ = views;
        ADView * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        ADView * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          ADView *view = *b__++;
          ADXConstraintSet_Constraint *constraint = JreRetainedLocalValue([((ADXConstraintSet *) nil_chk(cSet)) getConstraintWithInt:[((ADView *) nil_chk(view)) getId]]);
          if (mConstraintDelta_ != nil) {
            [mConstraintDelta_ applyDeltaWithADXConstraintSet_Constraint:constraint];
            [((JavaUtilHashMap *) nil_chk(((ADXConstraintSet_Constraint *) nil_chk(constraint))->mCustomConstraints_)) putAllWithJavaUtilMap:((ADXConstraintSet_Constraint *) nil_chk(mConstraintDelta_))->mCustomConstraints_];
          }
        }
      }
    }
  }
  ADXConstraintSet *transformedState = create_ADXConstraintSet_init();
  [transformedState cloneWithADXConstraintSet:current];
  {
    IOSObjectArray *a__ = views;
    ADView * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ADView * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ADView *view = *b__++;
      ADXConstraintSet_Constraint *constraint = JreRetainedLocalValue([transformedState getConstraintWithInt:[((ADView *) nil_chk(view)) getId]]);
      if (mConstraintDelta_ != nil) {
        [mConstraintDelta_ applyDeltaWithADXConstraintSet_Constraint:constraint];
        [((JavaUtilHashMap *) nil_chk(((ADXConstraintSet_Constraint *) nil_chk(constraint))->mCustomConstraints_)) putAllWithJavaUtilMap:((ADXConstraintSet_Constraint *) nil_chk(mConstraintDelta_))->mCustomConstraints_];
      }
    }
  }
  [((ADXMotionLayout *) nil_chk(layout)) updateStateWithInt:fromId withADXConstraintSet:transformedState];
  [layout updateStateWithInt:JreLoadStatic(ADR_id, view_transition) withADXConstraintSet:current];
  [layout setStateWithInt:JreLoadStatic(ADR_id, view_transition) withInt:-1 withInt:-1];
  ADXMotionScene_Transition *tmpTransition = create_ADXMotionScene_Transition_initWithInt_withADXMotionScene_withInt_withInt_(-1, layout->mScene_, JreLoadStatic(ADR_id, view_transition), fromId);
  {
    IOSObjectArray *a__ = views;
    ADView * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ADView * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ADView *view = *b__++;
      ADXViewTransition_updateTransitionWithADXMotionScene_Transition_withADView_(self, tmpTransition, view);
    }
  }
  [layout setTransitionWithADXMotionScene_Transition:tmpTransition];
  [layout transitionToEndWithJavaLangRunnable:create_ADXViewTransition_$Lambda$1_initWithADXViewTransition_withADViewArray_(self, views)];
}

- (void)updateTransitionWithADXMotionScene_Transition:(ADXMotionScene_Transition *)transition
                                           withADView:(ADView *)view {
  ADXViewTransition_updateTransitionWithADXMotionScene_Transition_withADView_(self, transition, view);
}

- (jint)getId {
  return mId_;
}

- (void)setIdWithInt:(jint)id_ {
  self->mId_ = id_;
}

- (jboolean)matchesViewWithADView:(ADView *)view {
  if (view == nil) {
    return false;
  }
  if (mTargetId_ == -1 && mTargetString_ == nil) {
    return false;
  }
  if (![self checkTagsWithADView:view]) {
    return false;
  }
  if ([view getId] == mTargetId_) {
    return true;
  }
  if (mTargetString_ == nil) {
    return false;
  }
  ADViewGroup_LayoutParams *lp = JreRetainedLocalValue([view getLayoutParams]);
  if ([lp isKindOfClass:[ADXConstraintLayout_LayoutParams class]]) {
    NSString *tag = JreRetainedLocalValue(((ADXConstraintLayout_LayoutParams *) nil_chk(((ADXConstraintLayout_LayoutParams *) cast_chk(([view getLayoutParams]), [ADXConstraintLayout_LayoutParams class]))))->constraintTag_);
    if (tag != nil && [tag java_matches:mTargetString_]) {
      return true;
    }
  }
  return false;
}

- (jboolean)supportsWithInt:(jint)action {
  if (mOnStateTransition_ == ADXViewTransition_ONSTATE_ACTION_DOWN) {
    return action == ADMotionEvent_ACTION_DOWN;
  }
  if (mOnStateTransition_ == ADXViewTransition_ONSTATE_ACTION_UP) {
    return action == ADMotionEvent_ACTION_UP;
  }
  if (mOnStateTransition_ == ADXViewTransition_ONSTATE_ACTION_DOWN_UP) {
    return action == ADMotionEvent_ACTION_DOWN;
  }
  return false;
}

- (jboolean)isEnabled {
  return !mDisabled_;
}

- (void)setEnabledWithBoolean:(jboolean)enable {
  self->mDisabled_ = !enable;
}

- (jboolean)checkTagsWithADView:(ADView *)view {
  jboolean set = (mIfTagSet_ == ADXViewTransition_UNSET) ? true : (nil != [((ADView *) nil_chk(view)) getTagWithInt:mIfTagSet_]);
  jboolean notSet = (mIfTagNotSet_ == ADXViewTransition_UNSET) ? true : nil == [((ADView *) nil_chk(view)) getTagWithInt:mIfTagNotSet_];
  return set && notSet;
}

- (void)dealloc {
  RELEASE_(set_);
  RELEASE_(mKeyFrames_);
  RELEASE_(mConstraintDelta_);
  RELEASE_(mTargetString_);
  RELEASE_(mDefaultInterpolatorString_);
  RELEASE_(mContext_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LADInterpolator;", 0x0, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x80, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 14, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 15, 16, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 17, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 18, 19, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 20, 16, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSharedValueCurrent);
  methods[2].selector = @selector(setSharedValueCurrentWithInt:);
  methods[3].selector = @selector(getStateTransition);
  methods[4].selector = @selector(setStateTransitionWithInt:);
  methods[5].selector = @selector(getSharedValue);
  methods[6].selector = @selector(setSharedValueWithInt:);
  methods[7].selector = @selector(getSharedValueID);
  methods[8].selector = @selector(setSharedValueIDWithInt:);
  methods[9].selector = @selector(description);
  methods[10].selector = @selector(getInterpolatorWithADContext:);
  methods[11].selector = @selector(applyIndependentTransitionWithADXViewTransitionController:withADXMotionLayout:withADView:);
  methods[12].selector = @selector(applyTransitionWithADXViewTransitionController:withADXMotionLayout:withInt:withADXConstraintSet:withADViewArray:);
  methods[13].selector = @selector(updateTransitionWithADXMotionScene_Transition:withADView:);
  methods[14].selector = @selector(getId);
  methods[15].selector = @selector(setIdWithInt:);
  methods[16].selector = @selector(matchesViewWithADView:);
  methods[17].selector = @selector(supportsWithInt:);
  methods[18].selector = @selector(isEnabled);
  methods[19].selector = @selector(setEnabledWithBoolean:);
  methods[20].selector = @selector(checkTagsWithADView:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0xa, -1, 21, -1, -1 },
    { "set_", "LADXConstraintSet;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "VIEW_TRANSITION_TAG", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "KEY_FRAME_SET_TAG", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 23, -1, -1 },
    { "CONSTRAINT_OVERRIDE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 24, -1, -1 },
    { "CUSTOM_ATTRIBUTE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 25, -1, -1 },
    { "CUSTOM_METHOD", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "UNSET", "I", .constantValue.asInt = ADXViewTransition_UNSET, 0x1a, -1, -1, -1, -1 },
    { "mId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ONSTATE_ACTION_DOWN", "I", .constantValue.asInt = ADXViewTransition_ONSTATE_ACTION_DOWN, 0x19, -1, -1, -1, -1 },
    { "ONSTATE_ACTION_UP", "I", .constantValue.asInt = ADXViewTransition_ONSTATE_ACTION_UP, 0x19, -1, -1, -1, -1 },
    { "ONSTATE_ACTION_DOWN_UP", "I", .constantValue.asInt = ADXViewTransition_ONSTATE_ACTION_DOWN_UP, 0x19, -1, -1, -1, -1 },
    { "ONSTATE_SHARED_VALUE_SET", "I", .constantValue.asInt = ADXViewTransition_ONSTATE_SHARED_VALUE_SET, 0x19, -1, -1, -1, -1 },
    { "ONSTATE_SHARED_VALUE_UNSET", "I", .constantValue.asInt = ADXViewTransition_ONSTATE_SHARED_VALUE_UNSET, 0x19, -1, -1, -1, -1 },
    { "mOnStateTransition_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mDisabled_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mPathMotionArc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mViewTransitionMode_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "VIEWTRANSITIONMODE_CURRENTSTATE", "I", .constantValue.asInt = ADXViewTransition_VIEWTRANSITIONMODE_CURRENTSTATE, 0x18, -1, -1, -1, -1 },
    { "VIEWTRANSITIONMODE_ALLSTATES", "I", .constantValue.asInt = ADXViewTransition_VIEWTRANSITIONMODE_ALLSTATES, 0x18, -1, -1, -1, -1 },
    { "VIEWTRANSITIONMODE_NOSTATE", "I", .constantValue.asInt = ADXViewTransition_VIEWTRANSITIONMODE_NOSTATE, 0x18, -1, -1, -1, -1 },
    { "mKeyFrames_", "LADXKeyFrames;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mConstraintDelta_", "LADXConstraintSet_Constraint;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mDuration_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mUpDuration_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTargetId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTargetString_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "SPLINE_STRING", "I", .constantValue.asInt = ADXViewTransition_SPLINE_STRING, 0x1a, -1, -1, -1, -1 },
    { "INTERPOLATOR_REFERENCE_ID", "I", .constantValue.asInt = ADXViewTransition_INTERPOLATOR_REFERENCE_ID, 0x1a, -1, -1, -1, -1 },
    { "mDefaultInterpolator_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mDefaultInterpolatorString_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mDefaultInterpolatorID_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "EASE_IN_OUT", "I", .constantValue.asInt = ADXViewTransition_EASE_IN_OUT, 0x18, -1, -1, -1, -1 },
    { "EASE_IN", "I", .constantValue.asInt = ADXViewTransition_EASE_IN, 0x18, -1, -1, -1, -1 },
    { "EASE_OUT", "I", .constantValue.asInt = ADXViewTransition_EASE_OUT, 0x18, -1, -1, -1, -1 },
    { "LINEAR", "I", .constantValue.asInt = ADXViewTransition_LINEAR, 0x18, -1, -1, -1, -1 },
    { "BOUNCE", "I", .constantValue.asInt = ADXViewTransition_BOUNCE, 0x18, -1, -1, -1, -1 },
    { "OVERSHOOT", "I", .constantValue.asInt = ADXViewTransition_OVERSHOOT, 0x18, -1, -1, -1, -1 },
    { "ANTICIPATE", "I", .constantValue.asInt = ADXViewTransition_ANTICIPATE, 0x18, -1, -1, -1, -1 },
    { "mContext_", "LADContext;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mSetsTag_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mClearsTag_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mIfTagSet_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mIfTagNotSet_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSharedValueTarget_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSharedValueID_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSharedValueCurrent_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setSharedValueCurrent", "I", "setStateTransition", "setSharedValue", "setSharedValueID", "toString", "getInterpolator", "LADContext;", "applyIndependentTransition", "LADXViewTransitionController;LADXMotionLayout;LADView;", "applyTransition", "LADXViewTransitionController;LADXMotionLayout;ILADXConstraintSet;[LADView;", "updateTransition", "LADXMotionScene_Transition;LADView;", "setId", "matchesView", "LADView;", "supports", "setEnabled", "Z", "checkTags", &ADXViewTransition_TAG, &ADXViewTransition_VIEW_TRANSITION_TAG, &ADXViewTransition_KEY_FRAME_SET_TAG, &ADXViewTransition_CONSTRAINT_OVERRIDE, &ADXViewTransition_CUSTOM_ATTRIBUTE, &ADXViewTransition_CUSTOM_METHOD, "LADXViewTransition_Animate;" };
  static const J2ObjcClassInfo _ADXViewTransition = { "ViewTransition", "androidx.constraintlayout.motion.widget", ptrTable, methods, fields, 7, 0x1, 21, 47, -1, 27, -1, -1, -1 };
  return &_ADXViewTransition;
}

@end

void ADXViewTransition_init(ADXViewTransition *self) {
  NSObject_init(self);
  self->mOnStateTransition_ = ADXViewTransition_UNSET;
  self->mDisabled_ = false;
  self->mPathMotionArc_ = 0;
  self->mDuration_ = ADXViewTransition_UNSET;
  self->mUpDuration_ = ADXViewTransition_UNSET;
  self->mDefaultInterpolator_ = 0;
  JreStrongAssign(&self->mDefaultInterpolatorString_, nil);
  self->mDefaultInterpolatorID_ = -1;
  self->mSetsTag_ = ADXViewTransition_UNSET;
  self->mClearsTag_ = ADXViewTransition_UNSET;
  self->mIfTagSet_ = ADXViewTransition_UNSET;
  self->mIfTagNotSet_ = ADXViewTransition_UNSET;
  self->mSharedValueTarget_ = ADXViewTransition_UNSET;
  self->mSharedValueID_ = ADXViewTransition_UNSET;
  self->mSharedValueCurrent_ = ADXViewTransition_UNSET;
}

ADXViewTransition *new_ADXViewTransition_init() {
  J2OBJC_NEW_IMPL(ADXViewTransition, init)
}

ADXViewTransition *create_ADXViewTransition_init() {
  J2OBJC_CREATE_IMPL(ADXViewTransition, init)
}

void ADXViewTransition_updateTransitionWithADXMotionScene_Transition_withADView_(ADXViewTransition *self, ADXMotionScene_Transition *transition, ADView *view) {
  if (self->mDuration_ != -1) {
    [((ADXMotionScene_Transition *) nil_chk(transition)) setDurationWithInt:self->mDuration_];
  }
  [((ADXMotionScene_Transition *) nil_chk(transition)) setPathMotionArcWithInt:self->mPathMotionArc_];
  [transition setInterpolatorInfoWithInt:self->mDefaultInterpolator_ withNSString:self->mDefaultInterpolatorString_ withInt:self->mDefaultInterpolatorID_];
  jint id_ = [((ADView *) nil_chk(view)) getId];
  if (self->mKeyFrames_ != nil) {
    JavaUtilArrayList *keys = JreRetainedLocalValue([self->mKeyFrames_ getKeyFramesForViewWithInt:ADXKeyFrames_UNSET]);
    ADXKeyFrames *keyFrames = create_ADXKeyFrames_init();
    for (ADXKey * __strong key in nil_chk(keys)) {
      [keyFrames addKeyWithADXKey:[((ADXKey *) nil_chk([((ADXKey *) nil_chk(key)) java_clone])) setViewIdWithInt:id_]];
    }
    [transition addKeyFrameWithADXKeyFrames:keyFrames];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewTransition)

@implementation ADXViewTransition_1

- (instancetype)initWithADXEasing:(ADXEasing *)capture$0 {
  ADXViewTransition_1_initWithADXEasing_(self, capture$0);
  return self;
}

- (jfloat)getInterpolationWithFloat:(jfloat)v {
  return (jfloat) [((ADXEasing *) nil_chk(val$easing_)) getWithDouble:v];
}

- (void)dealloc {
  RELEASE_(val$easing_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXEasing:);
  methods[1].selector = @selector(getInterpolationWithFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$easing_", "LADXEasing;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXEasing;", "getInterpolation", "F", "LADXViewTransition;", "getInterpolatorWithADContext:" };
  static const J2ObjcClassInfo _ADXViewTransition_1 = { "", "androidx.constraintlayout.motion.widget", ptrTable, methods, fields, 7, 0x8010, 2, 1, 3, -1, 4, -1, -1 };
  return &_ADXViewTransition_1;
}

@end

void ADXViewTransition_1_initWithADXEasing_(ADXViewTransition_1 *self, ADXEasing *capture$0) {
  JreStrongAssign(&self->val$easing_, capture$0);
  NSObject_init(self);
}

ADXViewTransition_1 *new_ADXViewTransition_1_initWithADXEasing_(ADXEasing *capture$0) {
  J2OBJC_NEW_IMPL(ADXViewTransition_1, initWithADXEasing_, capture$0)
}

ADXViewTransition_1 *create_ADXViewTransition_1_initWithADXEasing_(ADXEasing *capture$0) {
  J2OBJC_CREATE_IMPL(ADXViewTransition_1, initWithADXEasing_, capture$0)
}

@implementation ADXViewTransition_Animate

- (instancetype)initWithADXViewTransitionController:(ADXViewTransitionController *)controller
                            withADXMotionController:(ADXMotionController *)motionController
                                            withInt:(jint)duration
                                            withInt:(jint)upDuration
                                            withInt:(jint)mode
                                 withADInterpolator:(id<ADInterpolator>)interpolator
                                            withInt:(jint)setTag
                                            withInt:(jint)clearTag {
  ADXViewTransition_Animate_initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_(self, controller, motionController, duration, upDuration, mode, interpolator, setTag, clearTag);
  return self;
}

- (void)reverseWithBoolean:(jboolean)dir {
  reverse_ = dir;
  if (reverse_ && mUpDuration_ != ADXViewTransition_UNSET) {
    mDpositionDt_ = (mUpDuration_ == 0) ? JavaLangFloat_MAX_VALUE : 1.0f / mUpDuration_;
  }
  [((ADXViewTransitionController *) nil_chk(mVtController_)) invalidate];
  mLastRender_ = JavaLangSystem_nanoTime();
}

- (void)mutate {
  if (reverse_) {
    [self mutateReverse];
  }
  else {
    [self mutateForward];
  }
}

- (void)mutateReverse {
  jlong current = JavaLangSystem_nanoTime();
  jlong elapse = current - mLastRender_;
  mLastRender_ = current;
  JreMinusAssignFloatF(&mPosition_, ((jfloat) (elapse * 1E-6)) * mDpositionDt_);
  if (mPosition_ < 0.0f) {
    mPosition_ = 0.0f;
  }
  jfloat ipos = (mInterpolator_ == nil) ? mPosition_ : [((id<ADInterpolator>) nil_chk(mInterpolator_)) getInterpolationWithFloat:mPosition_];
  jboolean repaint = [((ADXMotionController *) nil_chk(mMC_)) interpolateWithADView:mMC_->mView_ withFloat:ipos withLong:current withADXKeyCache:mCache_];
  if (mPosition_ <= 0) {
    if (mSetsTag_ != ADXViewTransition_UNSET) {
      [((ADView *) nil_chk([((ADXMotionController *) nil_chk(mMC_)) getView])) setTagWithInt:mSetsTag_ withId:JavaLangLong_valueOfWithLong_(JavaLangSystem_nanoTime())];
    }
    if (mClearsTag_ != ADXViewTransition_UNSET) {
      [((ADView *) nil_chk([((ADXMotionController *) nil_chk(mMC_)) getView])) setTagWithInt:mClearsTag_ withId:nil];
    }
    [((ADXViewTransitionController *) nil_chk(mVtController_)) removeAnimationWithADXViewTransition_Animate:self];
  }
  if (mPosition_ > 0.0f || repaint) {
    [((ADXViewTransitionController *) nil_chk(mVtController_)) invalidate];
  }
}

- (void)mutateForward {
  jlong current = JavaLangSystem_nanoTime();
  jlong elapse = current - mLastRender_;
  mLastRender_ = current;
  JrePlusAssignFloatF(&mPosition_, ((jfloat) (elapse * 1E-6)) * mDpositionDt_);
  if (mPosition_ >= 1.0f) {
    mPosition_ = 1.0f;
  }
  jfloat ipos = (mInterpolator_ == nil) ? mPosition_ : [((id<ADInterpolator>) nil_chk(mInterpolator_)) getInterpolationWithFloat:mPosition_];
  jboolean repaint = [((ADXMotionController *) nil_chk(mMC_)) interpolateWithADView:mMC_->mView_ withFloat:ipos withLong:current withADXKeyCache:mCache_];
  if (mPosition_ >= 1) {
    if (mSetsTag_ != ADXViewTransition_UNSET) {
      [((ADView *) nil_chk([((ADXMotionController *) nil_chk(mMC_)) getView])) setTagWithInt:mSetsTag_ withId:JavaLangLong_valueOfWithLong_(JavaLangSystem_nanoTime())];
    }
    if (mClearsTag_ != ADXViewTransition_UNSET) {
      [((ADView *) nil_chk([((ADXMotionController *) nil_chk(mMC_)) getView])) setTagWithInt:mClearsTag_ withId:nil];
    }
    if (!hold_at_100_) {
      [((ADXViewTransitionController *) nil_chk(mVtController_)) removeAnimationWithADXViewTransition_Animate:self];
    }
  }
  if (mPosition_ < 1.0f || repaint) {
    [((ADXViewTransitionController *) nil_chk(mVtController_)) invalidate];
  }
}

- (void)reactToWithInt:(jint)action
             withFloat:(jfloat)x
             withFloat:(jfloat)y {
  {
    ADView *view;
    switch (action) {
      case ADMotionEvent_ACTION_UP:
      if (!reverse_) {
        [self reverseWithBoolean:true];
      }
      return;
      case ADMotionEvent_ACTION_MOVE:
      view = JreRetainedLocalValue([((ADXMotionController *) nil_chk(mMC_)) getView]);
      [((ADView *) nil_chk(view)) getHitRectWithADRect:mTempRec_];
      if (![((ADRect *) nil_chk(mTempRec_)) containsWithInt:JreFpToInt(x) withInt:JreFpToInt(y)]) {
        if (!reverse_) [self reverseWithBoolean:true];
      }
    }
  }
}

- (void)dealloc {
  RELEASE_(mMC_);
  RELEASE_(mCache_);
  RELEASE_(mVtController_);
  RELEASE_(mInterpolator_);
  RELEASE_(mTempRec_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXViewTransitionController:withADXMotionController:withInt:withInt:withInt:withADInterpolator:withInt:withInt:);
  methods[1].selector = @selector(reverseWithBoolean:);
  methods[2].selector = @selector(mutate);
  methods[3].selector = @selector(mutateReverse);
  methods[4].selector = @selector(mutateForward);
  methods[5].selector = @selector(reactToWithInt:withFloat:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mSetsTag_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mClearsTag_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mStart_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mMC_", "LADXMotionController;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mDuration_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mUpDuration_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mCache_", "LADXKeyCache;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mVtController_", "LADXViewTransitionController;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mInterpolator_", "LADInterpolator;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "reverse_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mPosition_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mDpositionDt_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mLastRender_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mTempRec_", "LADRect;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "hold_at_100_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXViewTransitionController;LADXMotionController;IIILADInterpolator;II", "reverse", "Z", "reactTo", "IFF", "LADXViewTransition;" };
  static const J2ObjcClassInfo _ADXViewTransition_Animate = { "Animate", "androidx.constraintlayout.motion.widget", ptrTable, methods, fields, 7, 0x8, 6, 15, 5, -1, -1, -1, -1 };
  return &_ADXViewTransition_Animate;
}

@end

void ADXViewTransition_Animate_initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_(ADXViewTransition_Animate *self, ADXViewTransitionController *controller, ADXMotionController *motionController, jint duration, jint upDuration, jint mode, id<ADInterpolator> interpolator, jint setTag, jint clearTag) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mCache_, new_ADXKeyCache_init());
  self->reverse_ = false;
  JreStrongAssignAndConsume(&self->mTempRec_, new_ADRect_init());
  self->hold_at_100_ = false;
  JreStrongAssign(&self->mVtController_, controller);
  JreStrongAssign(&self->mMC_, motionController);
  self->mDuration_ = duration;
  self->mUpDuration_ = upDuration;
  self->mStart_ = JavaLangSystem_nanoTime();
  self->mLastRender_ = self->mStart_;
  [((ADXViewTransitionController *) nil_chk(self->mVtController_)) addAnimationWithADXViewTransition_Animate:self];
  JreStrongAssign(&self->mInterpolator_, interpolator);
  self->mSetsTag_ = setTag;
  self->mClearsTag_ = clearTag;
  if (mode == ADXViewTransition_ONSTATE_ACTION_DOWN_UP) {
    self->hold_at_100_ = true;
  }
  self->mDpositionDt_ = (duration == 0) ? JavaLangFloat_MAX_VALUE : 1.0f / duration;
  [self mutate];
}

ADXViewTransition_Animate *new_ADXViewTransition_Animate_initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_(ADXViewTransitionController *controller, ADXMotionController *motionController, jint duration, jint upDuration, jint mode, id<ADInterpolator> interpolator, jint setTag, jint clearTag) {
  J2OBJC_NEW_IMPL(ADXViewTransition_Animate, initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_, controller, motionController, duration, upDuration, mode, interpolator, setTag, clearTag)
}

ADXViewTransition_Animate *create_ADXViewTransition_Animate_initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_(ADXViewTransitionController *controller, ADXMotionController *motionController, jint duration, jint upDuration, jint mode, id<ADInterpolator> interpolator, jint setTag, jint clearTag) {
  J2OBJC_CREATE_IMPL(ADXViewTransition_Animate, initWithADXViewTransitionController_withADXMotionController_withInt_withInt_withInt_withADInterpolator_withInt_withInt_, controller, motionController, duration, upDuration, mode, interpolator, setTag, clearTag)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewTransition_Animate)

@implementation ADXViewTransition_$Lambda$1

- (void)run {
  if (this$0_->mSetsTag_ != ADXViewTransition_UNSET) {
    {
      IOSObjectArray *a__ = val$views_;
      ADView * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      ADView * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        ADView *view = *b__++;
        [((ADView *) nil_chk(view)) setTagWithInt:this$0_->mSetsTag_ withId:JavaLangLong_valueOfWithLong_(JavaLangSystem_nanoTime())];
      }
    }
  }
  if (this$0_->mClearsTag_ != ADXViewTransition_UNSET) {
    {
      IOSObjectArray *a__ = val$views_;
      ADView * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      ADView * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        ADView *view = *b__++;
        [((ADView *) nil_chk(view)) setTagWithInt:this$0_->mClearsTag_ withId:nil];
      }
    }
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$views_);
  [super dealloc];
}

@end

void ADXViewTransition_$Lambda$1_initWithADXViewTransition_withADViewArray_(ADXViewTransition_$Lambda$1 *self, ADXViewTransition *outer$, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$views_, capture$0);
  NSObject_init(self);
}

ADXViewTransition_$Lambda$1 *new_ADXViewTransition_$Lambda$1_initWithADXViewTransition_withADViewArray_(ADXViewTransition *outer$, IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(ADXViewTransition_$Lambda$1, initWithADXViewTransition_withADViewArray_, outer$, capture$0)
}

ADXViewTransition_$Lambda$1 *create_ADXViewTransition_$Lambda$1_initWithADXViewTransition_withADViewArray_(ADXViewTransition *outer$, IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(ADXViewTransition_$Lambda$1, initWithADXViewTransition_withADViewArray_, outer$, capture$0)
}
