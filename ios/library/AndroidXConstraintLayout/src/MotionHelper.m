//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\MotionHelper.java
//

#include "Canvas.h"
#include "ConstraintHelper.h"
#include "ConstraintLayout.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "MotionHelper.h"
#include "MotionLayout.h"
#include "View.h"
#include "ViewGroup.h"
#include "ViewParent.h"
#include "java/util/HashMap.h"


@interface ADXMotionHelper () {
 @public
  jboolean mUseOnShow_;
  jboolean mUseOnHide_;
  jfloat mProgress_;
}

@end

@implementation ADXMotionHelper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXMotionHelper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)isUsedOnShow {
  return mUseOnShow_;
}

- (jboolean)isUseOnHide {
  return mUseOnHide_;
}

- (jfloat)getProgress {
  return mProgress_;
}

- (void)setProgressWithFloat:(jfloat)progress {
  mProgress_ = progress;
  if (self->mCount_ > 0) {
    JreStrongAssign(&self->views_, [self getViewsWithADXConstraintLayout:(ADXConstraintLayout *) cast_chk([self getParent], [ADXConstraintLayout class])]);
    for (jint i = 0; i < self->mCount_; ++i) {
      ADView *view = IOSObjectArray_Get(nil_chk(self->views_), i);
      [self setProgressWithADView:view withFloat:progress];
    }
  }
  else {
    ADViewGroup *group = (ADViewGroup *) cast_chk([self getParent], [ADViewGroup class]);
    jint count = [((ADViewGroup *) nil_chk(group)) getChildCount];
    for (jint i = 0; i < count; ++i) {
      ADView *view = JreRetainedLocalValue([group getChildAtWithInt:i]);
      if ([view isKindOfClass:[ADXMotionHelper class]]) {
        continue;
      }
      [self setProgressWithADView:view withFloat:progress];
    }
  }
}

- (void)setProgressWithADView:(ADView *)view
                    withFloat:(jfloat)progress {
}

- (void)onTransitionStartedWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                                       withInt:(jint)startId
                                       withInt:(jint)endId {
}

- (void)onTransitionChangeWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                                      withInt:(jint)startId
                                      withInt:(jint)endId
                                    withFloat:(jfloat)progress {
}

- (void)onTransitionCompletedWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                                         withInt:(jint)currentId {
}

- (void)onTransitionTriggerWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                                       withInt:(jint)triggerId
                                   withBoolean:(jboolean)positive
                                     withFloat:(jfloat)progress {
}

- (jboolean)isDecorator {
  return false;
}

- (void)onPreDrawWithADCanvas:(id<ADCanvas>)canvas {
}

- (void)onFinishedMotionSceneWithADXMotionLayout:(ADXMotionLayout *)motionLayout {
}

- (void)onPostDrawWithADCanvas:(id<ADCanvas>)canvas {
}

- (void)onPreSetupWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                  withJavaUtilHashMap:(JavaUtilHashMap *)controllerMap {
}

- (void)dealloc {
  RELEASE_(views_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, -1, 18, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isUsedOnShow);
  methods[2].selector = @selector(isUseOnHide);
  methods[3].selector = @selector(getProgress);
  methods[4].selector = @selector(setProgressWithFloat:);
  methods[5].selector = @selector(setProgressWithADView:withFloat:);
  methods[6].selector = @selector(onTransitionStartedWithADXMotionLayout:withInt:withInt:);
  methods[7].selector = @selector(onTransitionChangeWithADXMotionLayout:withInt:withInt:withFloat:);
  methods[8].selector = @selector(onTransitionCompletedWithADXMotionLayout:withInt:);
  methods[9].selector = @selector(onTransitionTriggerWithADXMotionLayout:withInt:withBoolean:withFloat:);
  methods[10].selector = @selector(isDecorator);
  methods[11].selector = @selector(onPreDrawWithADCanvas:);
  methods[12].selector = @selector(onFinishedMotionSceneWithADXMotionLayout:);
  methods[13].selector = @selector(onPostDrawWithADCanvas:);
  methods[14].selector = @selector(onPreSetupWithADXMotionLayout:withJavaUtilHashMap:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mUseOnShow_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mUseOnHide_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mProgress_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "views_", "[LADView;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setProgress", "F", "LADView;F", "onTransitionStarted", "LADXMotionLayout;II", "onTransitionChange", "LADXMotionLayout;IIF", "onTransitionCompleted", "LADXMotionLayout;I", "onTransitionTrigger", "LADXMotionLayout;IZF", "onPreDraw", "LADCanvas;", "onFinishedMotionScene", "LADXMotionLayout;", "onPostDraw", "onPreSetup", "LADXMotionLayout;LJavaUtilHashMap;", "(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap<Lr/android/view/View;Landroidx/constraintlayout/motion/widget/MotionController;>;)V" };
  static const J2ObjcClassInfo _ADXMotionHelper = { "MotionHelper", "androidx.constraintlayout.motion.widget", ptrTable, methods, fields, 7, 0x1, 15, 4, -1, -1, -1, -1, -1 };
  return &_ADXMotionHelper;
}

@end

void ADXMotionHelper_init(ADXMotionHelper *self) {
  ADXConstraintHelper_init(self);
  self->mUseOnShow_ = false;
  self->mUseOnHide_ = false;
}

ADXMotionHelper *new_ADXMotionHelper_init() {
  J2OBJC_NEW_IMPL(ADXMotionHelper, init)
}

ADXMotionHelper *create_ADXMotionHelper_init() {
  J2OBJC_CREATE_IMPL(ADXMotionHelper, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXMotionHelper)
