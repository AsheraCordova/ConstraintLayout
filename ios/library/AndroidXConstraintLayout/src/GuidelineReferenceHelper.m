//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\state\helpers\GuidelineReferenceHelper.java
//

#include "ConstraintWidget.h"
#include "CoreGuideline.h"
#include "Facade.h"
#include "GuidelineReferenceHelper.h"
#include "J2ObjC_source.h"
#include "State.h"


@interface ADXGuidelineReferenceHelper () {
 @public
  jint mOrientation_;
  ADXCoreGuideline *mGuidelineWidget_;
  jint mStart_;
  jint mEnd_;
  jfloat mPercent_;
  id key_;
}

@end

J2OBJC_FIELD_SETTER(ADXGuidelineReferenceHelper, mGuidelineWidget_, ADXCoreGuideline *)
J2OBJC_FIELD_SETTER(ADXGuidelineReferenceHelper, key_, id)

@implementation ADXGuidelineReferenceHelper

- (void)setKeyWithId:(id)key {
  JreStrongAssign(&self->key_, key);
}

- (id)getKey {
  return key_;
}

- (instancetype)initWithADXState:(ADXState *)state {
  ADXGuidelineReferenceHelper_initWithADXState_(self, state);
  return self;
}

- (ADXGuidelineReferenceHelper *)startWithId:(id)margin {
  mStart_ = [((ADXState *) nil_chk(mState_)) convertDimensionWithId:margin];
  mEnd_ = -1;
  mPercent_ = 0;
  return self;
}

- (ADXGuidelineReferenceHelper *)endWithId:(id)margin {
  mStart_ = -1;
  mEnd_ = [((ADXState *) nil_chk(mState_)) convertDimensionWithId:margin];
  mPercent_ = 0;
  return self;
}

- (ADXGuidelineReferenceHelper *)percentWithFloat:(jfloat)percent {
  mStart_ = -1;
  mEnd_ = -1;
  mPercent_ = percent;
  return self;
}

- (void)setOrientationWithInt:(jint)orientation {
  mOrientation_ = orientation;
}

- (jint)getOrientation {
  return mOrientation_;
}

- (void)apply {
  [((ADXCoreGuideline *) nil_chk(mGuidelineWidget_)) setOrientationWithInt:mOrientation_];
  if (mStart_ != -1) {
    [((ADXCoreGuideline *) nil_chk(mGuidelineWidget_)) setGuideBeginWithInt:mStart_];
  }
  else if (mEnd_ != -1) {
    [((ADXCoreGuideline *) nil_chk(mGuidelineWidget_)) setGuideEndWithInt:mEnd_];
  }
  else {
    [((ADXCoreGuideline *) nil_chk(mGuidelineWidget_)) setGuidePercentWithFloat:mPercent_];
  }
}

- (id<ADXFacade>)getFacade {
  return nil;
}

- (ADXConstraintWidget *)getConstraintWidget {
  if (mGuidelineWidget_ == nil) {
    JreStrongAssignAndConsume(&mGuidelineWidget_, new_ADXCoreGuideline_init());
  }
  return mGuidelineWidget_;
}

- (void)setConstraintWidgetWithADXConstraintWidget:(ADXConstraintWidget *)widget {
  if ([widget isKindOfClass:[ADXCoreGuideline class]]) {
    JreStrongAssign(&mGuidelineWidget_, (ADXCoreGuideline *) widget);
  }
  else {
    JreStrongAssign(&mGuidelineWidget_, nil);
  }
}

- (void)dealloc {
  RELEASE_(mState_);
  RELEASE_(mGuidelineWidget_);
  RELEASE_(key_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LADXGuidelineReferenceHelper;", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "LADXGuidelineReferenceHelper;", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "LADXGuidelineReferenceHelper;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXFacade;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXConstraintWidget;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(setKeyWithId:);
  methods[1].selector = @selector(getKey);
  methods[2].selector = @selector(initWithADXState:);
  methods[3].selector = @selector(startWithId:);
  methods[4].selector = @selector(endWithId:);
  methods[5].selector = @selector(percentWithFloat:);
  methods[6].selector = @selector(setOrientationWithInt:);
  methods[7].selector = @selector(getOrientation);
  methods[8].selector = @selector(apply);
  methods[9].selector = @selector(getFacade);
  methods[10].selector = @selector(getConstraintWidget);
  methods[11].selector = @selector(setConstraintWidgetWithADXConstraintWidget:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mState_", "LADXState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "mOrientation_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mGuidelineWidget_", "LADXCoreGuideline;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mStart_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mEnd_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mPercent_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "key_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setKey", "LNSObject;", "LADXState;", "start", "end", "percent", "F", "setOrientation", "I", "setConstraintWidget", "LADXConstraintWidget;" };
  static const J2ObjcClassInfo _ADXGuidelineReferenceHelper = { "GuidelineReferenceHelper", "androidx.constraintlayout.core.state.helpers", ptrTable, methods, fields, 7, 0x1, 12, 7, -1, -1, -1, -1, -1 };
  return &_ADXGuidelineReferenceHelper;
}

@end

void ADXGuidelineReferenceHelper_initWithADXState_(ADXGuidelineReferenceHelper *self, ADXState *state) {
  NSObject_init(self);
  self->mStart_ = -1;
  self->mEnd_ = -1;
  self->mPercent_ = 0;
  JreStrongAssign(&self->mState_, state);
}

ADXGuidelineReferenceHelper *new_ADXGuidelineReferenceHelper_initWithADXState_(ADXState *state) {
  J2OBJC_NEW_IMPL(ADXGuidelineReferenceHelper, initWithADXState_, state)
}

ADXGuidelineReferenceHelper *create_ADXGuidelineReferenceHelper_initWithADXState_(ADXState *state) {
  J2OBJC_CREATE_IMPL(ADXGuidelineReferenceHelper, initWithADXState_, state)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXGuidelineReferenceHelper)