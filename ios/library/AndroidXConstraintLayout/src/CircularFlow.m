//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\helper\widget\CircularFlow.java
//

#include "CircularFlow.h"
#include "ConstraintLayout.h"
#include "ConstraintSet.h"
#include "Context.h"
#include "DisplayMetrics.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "Log.h"
#include "Resources.h"
#include "View.h"
#include "ViewGroup.h"
#include "ViewParent.h"
#include "VirtualLayout.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/util/Arrays.h"
#include "java/util/HashMap.h"

@class JavaLangFloat;
@class JavaLangInteger;


@interface ADXCircularFlow () {
 @public
  IOSFloatArray *mAngles_;
  IOSIntArray *mRadius_;
  jint mCountRadius_;
  jint mCountAngle_;
  NSString *mReferenceAngles_;
  NSString *mReferenceRadius_;
  JavaLangFloat *mReferenceDefaultAngle_;
  JavaLangInteger *mReferenceDefaultRadius_;
}

- (void)anchorReferences;

- (IOSFloatArray *)removeAngleWithFloatArray:(IOSFloatArray *)angles
                                     withInt:(jint)index;

- (IOSIntArray *)removeRadiusWithIntArray:(IOSIntArray *)radius
                                  withInt:(jint)index;

- (void)setAnglesWithNSString:(NSString *)idList;

- (void)setRadiusWithNSString:(NSString *)idList;

- (void)addAngleWithNSString:(NSString *)angleString;

- (void)addRadiusWithNSString:(NSString *)radiusString;

@end

J2OBJC_FIELD_SETTER(ADXCircularFlow, mAngles_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(ADXCircularFlow, mRadius_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXCircularFlow, mReferenceAngles_, NSString *)
J2OBJC_FIELD_SETTER(ADXCircularFlow, mReferenceRadius_, NSString *)
J2OBJC_FIELD_SETTER(ADXCircularFlow, mReferenceDefaultAngle_, JavaLangFloat *)
J2OBJC_FIELD_SETTER(ADXCircularFlow, mReferenceDefaultRadius_, JavaLangInteger *)

inline NSString *ADXCircularFlow_get_TAG(void);
static NSString *ADXCircularFlow_TAG = @"CircularFlow";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXCircularFlow, TAG, NSString *)

inline jint ADXCircularFlow_get_DEFAULT_RADIUS(void);
inline jint ADXCircularFlow_set_DEFAULT_RADIUS(jint value);
inline jint *ADXCircularFlow_getRef_DEFAULT_RADIUS(void);
static jint ADXCircularFlow_DEFAULT_RADIUS = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(ADXCircularFlow, DEFAULT_RADIUS, jint)

inline jfloat ADXCircularFlow_get_DEFAULT_ANGLE(void);
inline jfloat ADXCircularFlow_set_DEFAULT_ANGLE(jfloat value);
inline jfloat *ADXCircularFlow_getRef_DEFAULT_ANGLE(void);
static jfloat ADXCircularFlow_DEFAULT_ANGLE = 0.0f;
J2OBJC_STATIC_FIELD_PRIMITIVE(ADXCircularFlow, DEFAULT_ANGLE, jfloat)

__attribute__((unused)) static void ADXCircularFlow_anchorReferences(ADXCircularFlow *self);

__attribute__((unused)) static IOSFloatArray *ADXCircularFlow_removeAngleWithFloatArray_withInt_(ADXCircularFlow *self, IOSFloatArray *angles, jint index);

__attribute__((unused)) static IOSIntArray *ADXCircularFlow_removeRadiusWithIntArray_withInt_(ADXCircularFlow *self, IOSIntArray *radius, jint index);

__attribute__((unused)) static void ADXCircularFlow_setAnglesWithNSString_(ADXCircularFlow *self, NSString *idList);

__attribute__((unused)) static void ADXCircularFlow_setRadiusWithNSString_(ADXCircularFlow *self, NSString *idList);

__attribute__((unused)) static void ADXCircularFlow_addAngleWithNSString_(ADXCircularFlow *self, NSString *angleString);

__attribute__((unused)) static void ADXCircularFlow_addRadiusWithNSString_(ADXCircularFlow *self, NSString *radiusString);

@implementation ADXCircularFlow

- (IOSIntArray *)getRadius {
  return JavaUtilArrays_copyOfWithIntArray_withInt_(mRadius_, mCountRadius_);
}

- (IOSFloatArray *)getAngles {
  return JavaUtilArrays_copyOfWithFloatArray_withInt_(mAngles_, mCountAngle_);
}

- (void)onAttachedToWindow {
  [super onAttachedToWindow];
  if (mReferenceAngles_ != nil) {
    JreStrongAssignAndConsume(&mAngles_, [IOSFloatArray newArrayWithLength:1]);
    ADXCircularFlow_setAnglesWithNSString_(self, mReferenceAngles_);
  }
  if (mReferenceRadius_ != nil) {
    JreStrongAssignAndConsume(&mRadius_, [IOSIntArray newArrayWithLength:1]);
    ADXCircularFlow_setRadiusWithNSString_(self, mReferenceRadius_);
  }
  if (mReferenceDefaultAngle_ != nil) {
    [self setDefaultAngleWithFloat:[mReferenceDefaultAngle_ floatValue]];
  }
  if (mReferenceDefaultRadius_ != nil) {
    [self setDefaultRadiusWithInt:[mReferenceDefaultRadius_ intValue]];
  }
  ADXCircularFlow_anchorReferences(self);
}

- (void)anchorReferences {
  ADXCircularFlow_anchorReferences(self);
}

- (void)addViewToCircularFlowWithADView:(ADView *)view
                                withInt:(jint)radius
                              withFloat:(jfloat)angle {
  if ([self containsIdWithInt:[((ADView *) nil_chk(view)) getId]]) {
    return;
  }
  [self addViewWithADView:view];
  mCountAngle_++;
  JreStrongAssign(&mAngles_, [self getAngles]);
  *IOSFloatArray_GetRef(nil_chk(mAngles_), mCountAngle_ - 1) = angle;
  mCountRadius_++;
  JreStrongAssign(&mRadius_, [self getRadius]);
  *IOSIntArray_GetRef(nil_chk(mRadius_), mCountRadius_ - 1) = JreFpToInt((radius * ((ADDisplayMetrics *) nil_chk([((ADResources *) nil_chk([((ADContext *) nil_chk(myContext_)) getResources])) getDisplayMetrics]))->density_));
  ADXCircularFlow_anchorReferences(self);
}

- (void)updateRadiusWithADView:(ADView *)view
                       withInt:(jint)radius {
  if (![self isUpdatableWithADView:view]) {
    ADLog_eWithNSString_withNSString_(@"CircularFlow", JreStrcat("$I", @"It was not possible to update radius to view with id: ", [((ADView *) nil_chk(view)) getId]));
    return;
  }
  jint indexView = [self indexFromIdWithInt:[((ADView *) nil_chk(view)) getId]];
  if (indexView > ((IOSIntArray *) nil_chk(mRadius_))->size_) {
    return;
  }
  JreStrongAssign(&mRadius_, [self getRadius]);
  *IOSIntArray_GetRef(nil_chk(mRadius_), indexView) = JreFpToInt((radius * ((ADDisplayMetrics *) nil_chk([((ADResources *) nil_chk([((ADContext *) nil_chk(myContext_)) getResources])) getDisplayMetrics]))->density_));
  ADXCircularFlow_anchorReferences(self);
}

- (void)updateAngleWithADView:(ADView *)view
                    withFloat:(jfloat)angle {
  if (![self isUpdatableWithADView:view]) {
    ADLog_eWithNSString_withNSString_(@"CircularFlow", JreStrcat("$I", @"It was not possible to update angle to view with id: ", [((ADView *) nil_chk(view)) getId]));
    return;
  }
  jint indexView = [self indexFromIdWithInt:[((ADView *) nil_chk(view)) getId]];
  if (indexView > ((IOSFloatArray *) nil_chk(mAngles_))->size_) {
    return;
  }
  JreStrongAssign(&mAngles_, [self getAngles]);
  *IOSFloatArray_GetRef(nil_chk(mAngles_), indexView) = angle;
  ADXCircularFlow_anchorReferences(self);
}

- (void)updateReferenceWithADView:(ADView *)view
                          withInt:(jint)radius
                        withFloat:(jfloat)angle {
  if (![self isUpdatableWithADView:view]) {
    ADLog_eWithNSString_withNSString_(@"CircularFlow", JreStrcat("$I", @"It was not possible to update radius and angle to view with id: ", [((ADView *) nil_chk(view)) getId]));
    return;
  }
  jint indexView = [self indexFromIdWithInt:[((ADView *) nil_chk(view)) getId]];
  if (((IOSFloatArray *) nil_chk([self getAngles]))->size_ > indexView) {
    JreStrongAssign(&mAngles_, [self getAngles]);
    *IOSFloatArray_GetRef(nil_chk(mAngles_), indexView) = angle;
  }
  if (((IOSIntArray *) nil_chk([self getRadius]))->size_ > indexView) {
    JreStrongAssign(&mRadius_, [self getRadius]);
    *IOSIntArray_GetRef(nil_chk(mRadius_), indexView) = JreFpToInt((radius * ((ADDisplayMetrics *) nil_chk([((ADResources *) nil_chk([((ADContext *) nil_chk(myContext_)) getResources])) getDisplayMetrics]))->density_));
  }
  ADXCircularFlow_anchorReferences(self);
}

- (void)setDefaultAngleWithFloat:(jfloat)angle {
  ADXCircularFlow_DEFAULT_ANGLE = angle;
}

- (void)setDefaultRadiusWithInt:(jint)radius {
  ADXCircularFlow_DEFAULT_RADIUS = radius;
}

- (jint)removeViewWithADView:(ADView *)view {
  jint index = [super removeViewWithADView:view];
  if (index == -1) {
    return index;
  }
  ADXConstraintSet *c = create_ADXConstraintSet_init();
  [c cloneWithADXConstraintLayout:mContainer_];
  [c clearWithInt:[((ADView *) nil_chk(view)) getId] withInt:ADXConstraintSet_CIRCLE_REFERENCE];
  [c applyToWithADXConstraintLayout:mContainer_];
  if (index < ((IOSFloatArray *) nil_chk(mAngles_))->size_) {
    JreStrongAssign(&mAngles_, ADXCircularFlow_removeAngleWithFloatArray_withInt_(self, mAngles_, index));
    mCountAngle_--;
  }
  if (index < ((IOSIntArray *) nil_chk(mRadius_))->size_) {
    JreStrongAssign(&mRadius_, ADXCircularFlow_removeRadiusWithIntArray_withInt_(self, mRadius_, index));
    mCountRadius_--;
  }
  ADXCircularFlow_anchorReferences(self);
  return index;
}

- (IOSFloatArray *)removeAngleWithFloatArray:(IOSFloatArray *)angles
                                     withInt:(jint)index {
  return ADXCircularFlow_removeAngleWithFloatArray_withInt_(self, angles, index);
}

- (IOSIntArray *)removeRadiusWithIntArray:(IOSIntArray *)radius
                                  withInt:(jint)index {
  return ADXCircularFlow_removeRadiusWithIntArray_withInt_(self, radius, index);
}

- (void)setAnglesWithNSString:(NSString *)idList {
  ADXCircularFlow_setAnglesWithNSString_(self, idList);
}

- (void)setRadiusWithNSString:(NSString *)idList {
  ADXCircularFlow_setRadiusWithNSString_(self, idList);
}

- (void)addAngleWithNSString:(NSString *)angleString {
  ADXCircularFlow_addAngleWithNSString_(self, angleString);
}

- (void)addRadiusWithNSString:(NSString *)radiusString {
  ADXCircularFlow_addRadiusWithNSString_(self, radiusString);
}

+ (IOSIntArray *)removeElementFromArrayWithIntArray:(IOSIntArray *)array
                                            withInt:(jint)index {
  return ADXCircularFlow_removeElementFromArrayWithIntArray_withInt_(array, index);
}

+ (IOSFloatArray *)removeElementFromArrayWithFloatArray:(IOSFloatArray *)array
                                                withInt:(jint)index {
  return ADXCircularFlow_removeElementFromArrayWithFloatArray_withInt_(array, index);
}

- (jboolean)isUpdatableWithADView:(ADView *)view {
  if (![self containsIdWithInt:[((ADView *) nil_chk(view)) getId]]) {
    return false;
  }
  jint indexView = [self indexFromIdWithInt:[view getId]];
  return indexView != -1;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXCircularFlow_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setViewCenterWithInt:(jint)mViewCenter {
  self->mViewCenter_ = mViewCenter;
}

- (void)setMyRadiusWithNSString:(NSString *)idList {
  if (mRadius_ == nil) {
    JreStrongAssignAndConsume(&mRadius_, [IOSIntArray newArrayWithLength:1]);
  }
  ADXCircularFlow_setRadiusWithNSString_(self, idList);
}

- (void)setMyAnglesWithNSString:(NSString *)idList {
  if (mAngles_ == nil) {
    JreStrongAssignAndConsume(&mAngles_, [IOSFloatArray newArrayWithLength:1]);
  }
  ADXCircularFlow_setAnglesWithNSString_(self, idList);
}

- (void)setReferenceDefaultAngleWithJavaLangFloat:(JavaLangFloat *)mReferenceDefaultAngle {
  JreStrongAssign(&self->mReferenceDefaultAngle_, mReferenceDefaultAngle);
}

- (void)setReferenceDefaultRadiusWithJavaLangInteger:(JavaLangInteger *)mReferenceDefaultRadius {
  JreStrongAssign(&self->mReferenceDefaultRadius_, mReferenceDefaultRadius);
}

- (void)__javaClone:(ADXCircularFlow *)original {
  [super __javaClone:original];
  [mContainer_ release];
}

- (void)dealloc {
  RELEASE_(mAngles_);
  RELEASE_(mRadius_);
  RELEASE_(mReferenceAngles_);
  RELEASE_(mReferenceRadius_);
  RELEASE_(mReferenceDefaultAngle_);
  RELEASE_(mReferenceDefaultRadius_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "[F", 0x2, 13, 14, -1, -1, -1, -1 },
    { NULL, "[I", 0x2, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 17, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 19, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 20, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 21, 18, -1, -1, -1, -1 },
    { NULL, "[I", 0x9, 22, 16, -1, -1, -1, -1 },
    { NULL, "[F", 0x9, 22, 14, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 23, 12, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 24, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 25, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 26, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 27, 28, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 29, 30, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getRadius);
  methods[1].selector = @selector(getAngles);
  methods[2].selector = @selector(onAttachedToWindow);
  methods[3].selector = @selector(anchorReferences);
  methods[4].selector = @selector(addViewToCircularFlowWithADView:withInt:withFloat:);
  methods[5].selector = @selector(updateRadiusWithADView:withInt:);
  methods[6].selector = @selector(updateAngleWithADView:withFloat:);
  methods[7].selector = @selector(updateReferenceWithADView:withInt:withFloat:);
  methods[8].selector = @selector(setDefaultAngleWithFloat:);
  methods[9].selector = @selector(setDefaultRadiusWithInt:);
  methods[10].selector = @selector(removeViewWithADView:);
  methods[11].selector = @selector(removeAngleWithFloatArray:withInt:);
  methods[12].selector = @selector(removeRadiusWithIntArray:withInt:);
  methods[13].selector = @selector(setAnglesWithNSString:);
  methods[14].selector = @selector(setRadiusWithNSString:);
  methods[15].selector = @selector(addAngleWithNSString:);
  methods[16].selector = @selector(addRadiusWithNSString:);
  methods[17].selector = @selector(removeElementFromArrayWithIntArray:withInt:);
  methods[18].selector = @selector(removeElementFromArrayWithFloatArray:withInt:);
  methods[19].selector = @selector(isUpdatableWithADView:);
  methods[20].selector = @selector(init);
  methods[21].selector = @selector(setViewCenterWithInt:);
  methods[22].selector = @selector(setMyRadiusWithNSString:);
  methods[23].selector = @selector(setMyAnglesWithNSString:);
  methods[24].selector = @selector(setReferenceDefaultAngleWithJavaLangFloat:);
  methods[25].selector = @selector(setReferenceDefaultRadiusWithJavaLangInteger:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 31, -1, -1 },
    { "mContainer_", "LADXConstraintLayout;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mViewCenter_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "DEFAULT_RADIUS", "I", .constantValue.asLong = 0, 0xa, -1, 32, -1, -1 },
    { "DEFAULT_ANGLE", "F", .constantValue.asLong = 0, 0xa, -1, 33, -1, -1 },
    { "mAngles_", "[F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRadius_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCountRadius_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCountAngle_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mReferenceAngles_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mReferenceRadius_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mReferenceDefaultAngle_", "LJavaLangFloat;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mReferenceDefaultRadius_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addViewToCircularFlow", "LADView;IF", "updateRadius", "LADView;I", "updateAngle", "LADView;F", "updateReference", "setDefaultAngle", "F", "setDefaultRadius", "I", "removeView", "LADView;", "removeAngle", "[FI", "removeRadius", "[II", "setAngles", "LNSString;", "setRadius", "addAngle", "addRadius", "removeElementFromArray", "isUpdatable", "setViewCenter", "setMyRadius", "setMyAngles", "setReferenceDefaultAngle", "LJavaLangFloat;", "setReferenceDefaultRadius", "LJavaLangInteger;", &ADXCircularFlow_TAG, &ADXCircularFlow_DEFAULT_RADIUS, &ADXCircularFlow_DEFAULT_ANGLE };
  static const J2ObjcClassInfo _ADXCircularFlow = { "CircularFlow", "androidx.constraintlayout.helper.widget", ptrTable, methods, fields, 7, 0x1, 26, 13, -1, -1, -1, -1, -1 };
  return &_ADXCircularFlow;
}

@end

void ADXCircularFlow_anchorReferences(ADXCircularFlow *self) {
  self->mContainer_ = (ADXConstraintLayout *) cast_chk([self getParent], [ADXConstraintLayout class]);
  for (jint i = 0; i < self->mCount_; i++) {
    ADView *view = JreRetainedLocalValue([((ADXConstraintLayout *) nil_chk(self->mContainer_)) getViewByIdWithInt:IOSIntArray_Get(nil_chk(self->mIds_), i)]);
    if (view == nil) {
      continue;
    }
    jint radius = ADXCircularFlow_DEFAULT_RADIUS;
    jfloat angle = ADXCircularFlow_DEFAULT_ANGLE;
    if (self->mRadius_ != nil && i < self->mRadius_->size_) {
      radius = IOSIntArray_Get(self->mRadius_, i);
    }
    else if (self->mReferenceDefaultRadius_ != nil && [self->mReferenceDefaultRadius_ intValue] != -1) {
      self->mCountRadius_++;
      if (self->mRadius_ == nil) {
        JreStrongAssignAndConsume(&self->mRadius_, [IOSIntArray newArrayWithLength:1]);
      }
      JreStrongAssign(&self->mRadius_, [self getRadius]);
      *IOSIntArray_GetRef(nil_chk(self->mRadius_), self->mCountRadius_ - 1) = radius;
    }
    else {
      ADLog_eWithNSString_withNSString_(@"CircularFlow", JreStrcat("$$", @"Added radius to view with id: ", [((JavaUtilHashMap *) nil_chk(self->mMap_)) getWithId:JavaLangInteger_valueOfWithInt_([view getId])]));
    }
    if (self->mAngles_ != nil && i < self->mAngles_->size_) {
      angle = IOSFloatArray_Get(self->mAngles_, i);
    }
    else if (self->mReferenceDefaultAngle_ != nil && [self->mReferenceDefaultAngle_ floatValue] != -1) {
      self->mCountAngle_++;
      if (self->mAngles_ == nil) {
        JreStrongAssignAndConsume(&self->mAngles_, [IOSFloatArray newArrayWithLength:1]);
      }
      JreStrongAssign(&self->mAngles_, [self getAngles]);
      *IOSFloatArray_GetRef(nil_chk(self->mAngles_), self->mCountAngle_ - 1) = angle;
    }
    else {
      ADLog_eWithNSString_withNSString_(@"CircularFlow", JreStrcat("$$", @"Added angle to view with id: ", [((JavaUtilHashMap *) nil_chk(self->mMap_)) getWithId:JavaLangInteger_valueOfWithInt_([view getId])]));
    }
    ADXConstraintLayout_LayoutParams *params = (ADXConstraintLayout_LayoutParams *) cast_chk([view getLayoutParams], [ADXConstraintLayout_LayoutParams class]);
    ((ADXConstraintLayout_LayoutParams *) nil_chk(params))->circleAngle_ = angle;
    params->circleConstraint_ = self->mViewCenter_;
    params->circleRadius_ = radius;
    [view setLayoutParamsWithADViewGroup_LayoutParams:params];
  }
  [self applyLayoutFeatures];
}

IOSFloatArray *ADXCircularFlow_removeAngleWithFloatArray_withInt_(ADXCircularFlow *self, IOSFloatArray *angles, jint index) {
  if (angles == nil || index < 0 || index >= self->mCountAngle_) {
    return angles;
  }
  return ADXCircularFlow_removeElementFromArrayWithFloatArray_withInt_(angles, index);
}

IOSIntArray *ADXCircularFlow_removeRadiusWithIntArray_withInt_(ADXCircularFlow *self, IOSIntArray *radius, jint index) {
  if (radius == nil || index < 0 || index >= self->mCountRadius_) {
    return radius;
  }
  return ADXCircularFlow_removeElementFromArrayWithIntArray_withInt_(radius, index);
}

void ADXCircularFlow_setAnglesWithNSString_(ADXCircularFlow *self, NSString *idList) {
  if (idList == nil) {
    return;
  }
  jint begin = 0;
  self->mCountAngle_ = 0;
  while (true) {
    jint end = [idList java_indexOf:',' fromIndex:begin];
    if (end == -1) {
      ADXCircularFlow_addAngleWithNSString_(self, [((NSString *) nil_chk([idList java_substring:begin])) java_trim]);
      break;
    }
    ADXCircularFlow_addAngleWithNSString_(self, [((NSString *) nil_chk([idList java_substring:begin endIndex:end])) java_trim]);
    begin = end + 1;
  }
}

void ADXCircularFlow_setRadiusWithNSString_(ADXCircularFlow *self, NSString *idList) {
  if (idList == nil) {
    return;
  }
  jint begin = 0;
  self->mCountRadius_ = 0;
  while (true) {
    jint end = [idList java_indexOf:',' fromIndex:begin];
    if (end == -1) {
      ADXCircularFlow_addRadiusWithNSString_(self, [((NSString *) nil_chk([idList java_substring:begin])) java_trim]);
      break;
    }
    ADXCircularFlow_addRadiusWithNSString_(self, [((NSString *) nil_chk([idList java_substring:begin endIndex:end])) java_trim]);
    begin = end + 1;
  }
}

void ADXCircularFlow_addAngleWithNSString_(ADXCircularFlow *self, NSString *angleString) {
  if (angleString == nil || [angleString java_length] == 0) {
    return;
  }
  if (self->myContext_ == nil) {
    return;
  }
  if (self->mAngles_ == nil) {
    return;
  }
  if (self->mCountAngle_ + 1 > self->mAngles_->size_) {
    JreStrongAssign(&self->mAngles_, JavaUtilArrays_copyOfWithFloatArray_withInt_(self->mAngles_, self->mAngles_->size_ + 1));
  }
  *IOSFloatArray_GetRef(nil_chk(self->mAngles_), self->mCountAngle_) = JavaLangInteger_parseIntWithNSString_(angleString);
  self->mCountAngle_++;
}

void ADXCircularFlow_addRadiusWithNSString_(ADXCircularFlow *self, NSString *radiusString) {
  if (radiusString == nil || [radiusString java_length] == 0) {
    return;
  }
  if (self->myContext_ == nil) {
    return;
  }
  if (self->mRadius_ == nil) {
    return;
  }
  if (self->mCountRadius_ + 1 > self->mRadius_->size_) {
    JreStrongAssign(&self->mRadius_, JavaUtilArrays_copyOfWithIntArray_withInt_(self->mRadius_, self->mRadius_->size_ + 1));
  }
  *IOSIntArray_GetRef(nil_chk(self->mRadius_), self->mCountRadius_) = JreFpToInt((JavaLangInteger_parseIntWithNSString_(radiusString) * ((ADDisplayMetrics *) nil_chk([((ADResources *) nil_chk([((ADContext *) nil_chk(self->myContext_)) getResources])) getDisplayMetrics]))->density_));
  self->mCountRadius_++;
}

IOSIntArray *ADXCircularFlow_removeElementFromArrayWithIntArray_withInt_(IOSIntArray *array, jint index) {
  ADXCircularFlow_initialize();
  IOSIntArray *newArray = [IOSIntArray arrayWithLength:((IOSIntArray *) nil_chk(array))->size_ - 1];
  for (jint i = 0, k = 0; i < array->size_; i++) {
    if (i == index) {
      continue;
    }
    *IOSIntArray_GetRef(newArray, k++) = IOSIntArray_Get(array, i);
  }
  return newArray;
}

IOSFloatArray *ADXCircularFlow_removeElementFromArrayWithFloatArray_withInt_(IOSFloatArray *array, jint index) {
  ADXCircularFlow_initialize();
  IOSFloatArray *newArray = [IOSFloatArray arrayWithLength:((IOSFloatArray *) nil_chk(array))->size_ - 1];
  for (jint i = 0, k = 0; i < array->size_; i++) {
    if (i == index) {
      continue;
    }
    *IOSFloatArray_GetRef(newArray, k++) = IOSFloatArray_Get(array, i);
  }
  return newArray;
}

void ADXCircularFlow_init(ADXCircularFlow *self) {
  ADXVirtualLayout_init(self);
  JreStrongAssignAndConsume(&self->myContext_, new_ADContext_init());
}

ADXCircularFlow *new_ADXCircularFlow_init() {
  J2OBJC_NEW_IMPL(ADXCircularFlow, init)
}

ADXCircularFlow *create_ADXCircularFlow_init() {
  J2OBJC_CREATE_IMPL(ADXCircularFlow, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXCircularFlow)
