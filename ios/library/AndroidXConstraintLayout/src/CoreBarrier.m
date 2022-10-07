//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\CoreBarrier.java
//

#include "ArrayRow.h"
#include "ConstraintAnchor.h"
#include "ConstraintWidget.h"
#include "CoreBarrier.h"
#include "HelperWidget.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LinearSystem.h"
#include "SolverVariable.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Math.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/HashMap.h"


@interface ADXCoreBarrier () {
 @public
  jint mBarrierType_;
  jboolean mAllowsGoneWidget_;
  jint mMargin_;
}

@end

inline jboolean ADXCoreBarrier_get_USE_RESOLUTION(void);
#define ADXCoreBarrier_USE_RESOLUTION true
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreBarrier, USE_RESOLUTION, jboolean)

inline jboolean ADXCoreBarrier_get_USE_RELAX_GONE(void);
#define ADXCoreBarrier_USE_RELAX_GONE false
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreBarrier, USE_RELAX_GONE, jboolean)

__attribute__((unused)) static IOSObjectArray *ADXCoreBarrier__Annotations$0(void);

@implementation ADXCoreBarrier

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXCoreBarrier_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)debugName {
  ADXCoreBarrier_initWithNSString_(self, debugName);
  return self;
}

- (jboolean)allowedInBarrier {
  return true;
}

- (jint)getBarrierType {
  return mBarrierType_;
}

- (void)setBarrierTypeWithInt:(jint)barrierType {
  mBarrierType_ = barrierType;
}

- (void)setAllowsGoneWidgetWithBoolean:(jboolean)allowsGoneWidget {
  mAllowsGoneWidget_ = allowsGoneWidget;
}

- (jboolean)allowsGoneWidget {
  return mAllowsGoneWidget_;
}

- (jboolean)getAllowsGoneWidget {
  return mAllowsGoneWidget_;
}

- (jboolean)isResolvedHorizontally {
  return resolved_;
}

- (jboolean)isResolvedVertically {
  return resolved_;
}

- (void)copy__WithADXConstraintWidget:(ADXConstraintWidget *)src
                  withJavaUtilHashMap:(JavaUtilHashMap *)map {
  [super copy__WithADXConstraintWidget:src withJavaUtilHashMap:map];
  ADXCoreBarrier *srcBarrier = (ADXCoreBarrier *) cast_chk(src, [ADXCoreBarrier class]);
  mBarrierType_ = ((ADXCoreBarrier *) nil_chk(srcBarrier))->mBarrierType_;
  mAllowsGoneWidget_ = srcBarrier->mAllowsGoneWidget_;
  mMargin_ = srcBarrier->mMargin_;
}

- (NSString *)description {
  NSString *debug = JreStrcat("$$$", @"[Barrier] ", [self getDebugName], @" {");
  for (jint i = 0; i < mWidgetsCount_; i++) {
    ADXConstraintWidget *widget = IOSObjectArray_Get(nil_chk(mWidgets_), i);
    if (i > 0) {
      JreStrAppend(&debug, "$", @", ");
    }
    JreStrAppend(&debug, "$", [((ADXConstraintWidget *) nil_chk(widget)) getDebugName]);
  }
  JreStrAppend(&debug, "$", @"}");
  return debug;
}

- (void)markWidgets {
  for (jint i = 0; i < mWidgetsCount_; i++) {
    ADXConstraintWidget *widget = IOSObjectArray_Get(nil_chk(mWidgets_), i);
    if (!mAllowsGoneWidget_ && ![((ADXConstraintWidget *) nil_chk(widget)) allowedInBarrier]) {
      continue;
    }
    if (mBarrierType_ == ADXCoreBarrier_LEFT || mBarrierType_ == ADXCoreBarrier_RIGHT) {
      [((ADXConstraintWidget *) nil_chk(widget)) setInBarrierWithInt:ADXConstraintWidget_HORIZONTAL withBoolean:true];
    }
    else if (mBarrierType_ == ADXCoreBarrier_TOP || mBarrierType_ == ADXCoreBarrier_BOTTOM) {
      [((ADXConstraintWidget *) nil_chk(widget)) setInBarrierWithInt:ADXConstraintWidget_VERTICAL withBoolean:true];
    }
  }
}

- (void)addToSolverWithADXLinearSystem:(ADXLinearSystem *)system
                           withBoolean:(jboolean)optimize {
  ADXConstraintAnchor *position;
  IOSObjectArray_Set(nil_chk(mListAnchors_), ADXCoreBarrier_LEFT, mLeft_);
  IOSObjectArray_Set(mListAnchors_, ADXCoreBarrier_TOP, mTop_);
  IOSObjectArray_Set(mListAnchors_, ADXCoreBarrier_RIGHT, mRight_);
  IOSObjectArray_Set(mListAnchors_, ADXCoreBarrier_BOTTOM, mBottom_);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(mListAnchors_))->size_; i++) {
    JreStrongAssign(&((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(mListAnchors_, i)))->mSolverVariable_, [((ADXLinearSystem *) nil_chk(system)) createObjectVariableWithId:IOSObjectArray_Get(mListAnchors_, i)]);
  }
  if (mBarrierType_ >= 0 && mBarrierType_ < 4) {
    position = IOSObjectArray_Get(mListAnchors_, mBarrierType_);
  }
  else {
    return;
  }
  {
    if (!resolved_) {
      [self allSolved];
    }
    if (resolved_) {
      resolved_ = false;
      if (mBarrierType_ == ADXCoreBarrier_LEFT || mBarrierType_ == ADXCoreBarrier_RIGHT) {
        [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mLeft_))->mSolverVariable_ withInt:mX_];
        [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mRight_))->mSolverVariable_ withInt:mX_];
      }
      else if (mBarrierType_ == ADXCoreBarrier_TOP || mBarrierType_ == ADXCoreBarrier_BOTTOM) {
        [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mTop_))->mSolverVariable_ withInt:mY_];
        [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mBottom_))->mSolverVariable_ withInt:mY_];
      }
      return;
    }
  }
  jboolean hasMatchConstraintWidgets = false;
  for (jint i = 0; i < mWidgetsCount_; i++) {
    ADXConstraintWidget *widget = IOSObjectArray_Get(nil_chk(mWidgets_), i);
    if (!mAllowsGoneWidget_ && ![((ADXConstraintWidget *) nil_chk(widget)) allowedInBarrier]) {
      continue;
    }
    if ((mBarrierType_ == ADXCoreBarrier_LEFT || mBarrierType_ == ADXCoreBarrier_RIGHT) && ([((ADXConstraintWidget *) nil_chk(widget)) getHorizontalDimensionBehaviour] == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT)) && ((ADXConstraintAnchor *) nil_chk(widget->mLeft_))->mTarget_ != nil && ((ADXConstraintAnchor *) nil_chk(widget->mRight_))->mTarget_ != nil) {
      hasMatchConstraintWidgets = true;
      break;
    }
    else if ((mBarrierType_ == ADXCoreBarrier_TOP || mBarrierType_ == ADXCoreBarrier_BOTTOM) && ([((ADXConstraintWidget *) nil_chk(widget)) getVerticalDimensionBehaviour] == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT)) && ((ADXConstraintAnchor *) nil_chk(widget->mTop_))->mTarget_ != nil && ((ADXConstraintAnchor *) nil_chk(widget->mBottom_))->mTarget_ != nil) {
      hasMatchConstraintWidgets = true;
      break;
    }
  }
  jboolean mHasHorizontalCenteredDependents = [((ADXConstraintAnchor *) nil_chk(mLeft_)) hasCenteredDependents] || [((ADXConstraintAnchor *) nil_chk(mRight_)) hasCenteredDependents];
  jboolean mHasVerticalCenteredDependents = [((ADXConstraintAnchor *) nil_chk(mTop_)) hasCenteredDependents] || [((ADXConstraintAnchor *) nil_chk(mBottom_)) hasCenteredDependents];
  jboolean applyEqualityOnReferences = !hasMatchConstraintWidgets && ((mBarrierType_ == ADXCoreBarrier_LEFT && mHasHorizontalCenteredDependents) || (mBarrierType_ == ADXCoreBarrier_TOP && mHasVerticalCenteredDependents) || (mBarrierType_ == ADXCoreBarrier_RIGHT && mHasHorizontalCenteredDependents) || (mBarrierType_ == ADXCoreBarrier_BOTTOM && mHasVerticalCenteredDependents));
  jint equalityOnReferencesStrength = ADXSolverVariable_STRENGTH_EQUALITY;
  if (!applyEqualityOnReferences) {
    equalityOnReferencesStrength = ADXSolverVariable_STRENGTH_HIGHEST;
  }
  for (jint i = 0; i < mWidgetsCount_; i++) {
    ADXConstraintWidget *widget = IOSObjectArray_Get(nil_chk(mWidgets_), i);
    if (!mAllowsGoneWidget_ && ![((ADXConstraintWidget *) nil_chk(widget)) allowedInBarrier]) {
      continue;
    }
    ADXSolverVariable *target = JreRetainedLocalValue([((ADXLinearSystem *) nil_chk(system)) createObjectVariableWithId:IOSObjectArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(widget))->mListAnchors_), mBarrierType_)]);
    JreStrongAssign(&((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(widget->mListAnchors_), mBarrierType_)))->mSolverVariable_, target);
    jint margin = 0;
    if (((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(widget->mListAnchors_, mBarrierType_)))->mTarget_ != nil && ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(widget->mListAnchors_, mBarrierType_)))->mTarget_->mOwner_ == self) {
      margin += ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(widget->mListAnchors_, mBarrierType_)))->mMargin_;
    }
    if (mBarrierType_ == ADXCoreBarrier_LEFT || mBarrierType_ == ADXCoreBarrier_TOP) {
      [system addLowerBarrierWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(position))->mSolverVariable_ withADXSolverVariable:target withInt:mMargin_ - margin withBoolean:hasMatchConstraintWidgets];
    }
    else {
      [system addGreaterBarrierWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(position))->mSolverVariable_ withADXSolverVariable:target withInt:mMargin_ + margin withBoolean:hasMatchConstraintWidgets];
    }
    {
      [system addEqualityWithADXSolverVariable:position->mSolverVariable_ withADXSolverVariable:target withInt:mMargin_ + margin withInt:equalityOnReferencesStrength];
    }
  }
  jint barrierParentStrength = ADXSolverVariable_STRENGTH_HIGHEST;
  jint barrierParentStrengthOpposite = ADXSolverVariable_STRENGTH_NONE;
  if (mBarrierType_ == ADXCoreBarrier_LEFT) {
    [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mRight_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mLeft_))->mSolverVariable_ withInt:0 withInt:ADXSolverVariable_STRENGTH_FIXED];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mLeft_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(((ADXConstraintWidget *) nil_chk(mParent_))->mRight_))->mSolverVariable_ withInt:0 withInt:barrierParentStrength];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mLeft_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintWidget *) nil_chk(mParent_))->mLeft_->mSolverVariable_ withInt:0 withInt:barrierParentStrengthOpposite];
  }
  else if (mBarrierType_ == ADXCoreBarrier_RIGHT) {
    [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mLeft_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mRight_))->mSolverVariable_ withInt:0 withInt:ADXSolverVariable_STRENGTH_FIXED];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mLeft_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintWidget *) nil_chk(mParent_))->mLeft_->mSolverVariable_ withInt:0 withInt:barrierParentStrength];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mLeft_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(((ADXConstraintWidget *) nil_chk(mParent_))->mRight_))->mSolverVariable_ withInt:0 withInt:barrierParentStrengthOpposite];
  }
  else if (mBarrierType_ == ADXCoreBarrier_TOP) {
    [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mBottom_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mTop_))->mSolverVariable_ withInt:0 withInt:ADXSolverVariable_STRENGTH_FIXED];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mTop_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(((ADXConstraintWidget *) nil_chk(mParent_))->mBottom_))->mSolverVariable_ withInt:0 withInt:barrierParentStrength];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mTop_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintWidget *) nil_chk(mParent_))->mTop_->mSolverVariable_ withInt:0 withInt:barrierParentStrengthOpposite];
  }
  else if (mBarrierType_ == ADXCoreBarrier_BOTTOM) {
    [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mTop_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mBottom_))->mSolverVariable_ withInt:0 withInt:ADXSolverVariable_STRENGTH_FIXED];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mTop_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintWidget *) nil_chk(mParent_))->mTop_->mSolverVariable_ withInt:0 withInt:barrierParentStrength];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(mTop_))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(((ADXConstraintWidget *) nil_chk(mParent_))->mBottom_))->mSolverVariable_ withInt:0 withInt:barrierParentStrengthOpposite];
  }
}

- (void)setMarginWithInt:(jint)margin {
  mMargin_ = margin;
}

- (jint)getMargin {
  return mMargin_;
}

- (jint)getOrientation {
  switch (mBarrierType_) {
    case ADXCoreBarrier_LEFT:
    case ADXCoreBarrier_RIGHT:
    return ADXConstraintWidget_HORIZONTAL;
    case ADXCoreBarrier_TOP:
    case ADXCoreBarrier_BOTTOM:
    return ADXConstraintWidget_VERTICAL;
  }
  return ADXConstraintWidget_UNKNOWN;
}

- (jboolean)allSolved {
  jboolean hasAllWidgetsResolved = true;
  for (jint i = 0; i < mWidgetsCount_; i++) {
    ADXConstraintWidget *widget = IOSObjectArray_Get(nil_chk(mWidgets_), i);
    if (!mAllowsGoneWidget_ && ![((ADXConstraintWidget *) nil_chk(widget)) allowedInBarrier]) {
      continue;
    }
    if ((mBarrierType_ == ADXCoreBarrier_LEFT || mBarrierType_ == ADXCoreBarrier_RIGHT) && ![((ADXConstraintWidget *) nil_chk(widget)) isResolvedHorizontally]) {
      hasAllWidgetsResolved = false;
    }
    else if ((mBarrierType_ == ADXCoreBarrier_TOP || mBarrierType_ == ADXCoreBarrier_BOTTOM) && ![((ADXConstraintWidget *) nil_chk(widget)) isResolvedVertically]) {
      hasAllWidgetsResolved = false;
    }
  }
  if (hasAllWidgetsResolved && mWidgetsCount_ > 0) {
    jint barrierPosition = 0;
    jboolean initialized = false;
    for (jint i = 0; i < mWidgetsCount_; i++) {
      ADXConstraintWidget *widget = IOSObjectArray_Get(nil_chk(mWidgets_), i);
      if (!mAllowsGoneWidget_ && ![((ADXConstraintWidget *) nil_chk(widget)) allowedInBarrier]) {
        continue;
      }
      if (!initialized) {
        if (mBarrierType_ == ADXCoreBarrier_LEFT) {
          barrierPosition = [((ADXConstraintAnchor *) nil_chk([((ADXConstraintWidget *) nil_chk(widget)) getAnchorWithADXConstraintAnchor_Type:JreLoadEnum(ADXConstraintAnchor_Type, LEFT)])) getFinalValue];
        }
        else if (mBarrierType_ == ADXCoreBarrier_RIGHT) {
          barrierPosition = [((ADXConstraintAnchor *) nil_chk([((ADXConstraintWidget *) nil_chk(widget)) getAnchorWithADXConstraintAnchor_Type:JreLoadEnum(ADXConstraintAnchor_Type, RIGHT)])) getFinalValue];
        }
        else if (mBarrierType_ == ADXCoreBarrier_TOP) {
          barrierPosition = [((ADXConstraintAnchor *) nil_chk([((ADXConstraintWidget *) nil_chk(widget)) getAnchorWithADXConstraintAnchor_Type:JreLoadEnum(ADXConstraintAnchor_Type, TOP)])) getFinalValue];
        }
        else if (mBarrierType_ == ADXCoreBarrier_BOTTOM) {
          barrierPosition = [((ADXConstraintAnchor *) nil_chk([((ADXConstraintWidget *) nil_chk(widget)) getAnchorWithADXConstraintAnchor_Type:JreLoadEnum(ADXConstraintAnchor_Type, BOTTOM)])) getFinalValue];
        }
        initialized = true;
      }
      if (mBarrierType_ == ADXCoreBarrier_LEFT) {
        barrierPosition = JavaLangMath_minWithInt_withInt_(barrierPosition, [((ADXConstraintAnchor *) nil_chk([((ADXConstraintWidget *) nil_chk(widget)) getAnchorWithADXConstraintAnchor_Type:JreLoadEnum(ADXConstraintAnchor_Type, LEFT)])) getFinalValue]);
      }
      else if (mBarrierType_ == ADXCoreBarrier_RIGHT) {
        barrierPosition = JavaLangMath_maxWithInt_withInt_(barrierPosition, [((ADXConstraintAnchor *) nil_chk([((ADXConstraintWidget *) nil_chk(widget)) getAnchorWithADXConstraintAnchor_Type:JreLoadEnum(ADXConstraintAnchor_Type, RIGHT)])) getFinalValue]);
      }
      else if (mBarrierType_ == ADXCoreBarrier_TOP) {
        barrierPosition = JavaLangMath_minWithInt_withInt_(barrierPosition, [((ADXConstraintAnchor *) nil_chk([((ADXConstraintWidget *) nil_chk(widget)) getAnchorWithADXConstraintAnchor_Type:JreLoadEnum(ADXConstraintAnchor_Type, TOP)])) getFinalValue]);
      }
      else if (mBarrierType_ == ADXCoreBarrier_BOTTOM) {
        barrierPosition = JavaLangMath_maxWithInt_withInt_(barrierPosition, [((ADXConstraintAnchor *) nil_chk([((ADXConstraintWidget *) nil_chk(widget)) getAnchorWithADXConstraintAnchor_Type:JreLoadEnum(ADXConstraintAnchor_Type, BOTTOM)])) getFinalValue]);
      }
    }
    barrierPosition += mMargin_;
    if (mBarrierType_ == ADXCoreBarrier_LEFT || mBarrierType_ == ADXCoreBarrier_RIGHT) {
      [self setFinalHorizontalWithInt:barrierPosition withInt:barrierPosition];
    }
    else {
      [self setFinalVerticalWithInt:barrierPosition withInt:barrierPosition];
    }
    resolved_ = true;
    return true;
  }
  return false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, 5, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, 8, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(allowedInBarrier);
  methods[3].selector = @selector(getBarrierType);
  methods[4].selector = @selector(setBarrierTypeWithInt:);
  methods[5].selector = @selector(setAllowsGoneWidgetWithBoolean:);
  methods[6].selector = @selector(allowsGoneWidget);
  methods[7].selector = @selector(getAllowsGoneWidget);
  methods[8].selector = @selector(isResolvedHorizontally);
  methods[9].selector = @selector(isResolvedVertically);
  methods[10].selector = @selector(copy__WithADXConstraintWidget:withJavaUtilHashMap:);
  methods[11].selector = @selector(description);
  methods[12].selector = @selector(markWidgets);
  methods[13].selector = @selector(addToSolverWithADXLinearSystem:withBoolean:);
  methods[14].selector = @selector(setMarginWithInt:);
  methods[15].selector = @selector(getMargin);
  methods[16].selector = @selector(getOrientation);
  methods[17].selector = @selector(allSolved);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LEFT", "I", .constantValue.asInt = ADXCoreBarrier_LEFT, 0x19, -1, -1, -1, -1 },
    { "RIGHT", "I", .constantValue.asInt = ADXCoreBarrier_RIGHT, 0x19, -1, -1, -1, -1 },
    { "TOP", "I", .constantValue.asInt = ADXCoreBarrier_TOP, 0x19, -1, -1, -1, -1 },
    { "BOTTOM", "I", .constantValue.asInt = ADXCoreBarrier_BOTTOM, 0x19, -1, -1, -1, -1 },
    { "USE_RESOLUTION", "Z", .constantValue.asBOOL = ADXCoreBarrier_USE_RESOLUTION, 0x1a, -1, -1, -1, -1 },
    { "USE_RELAX_GONE", "Z", .constantValue.asBOOL = ADXCoreBarrier_USE_RELAX_GONE, 0x1a, -1, -1, -1, -1 },
    { "mBarrierType_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mAllowsGoneWidget_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMargin_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "resolved_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "setBarrierType", "I", "setAllowsGoneWidget", "Z", (void *)&ADXCoreBarrier__Annotations$0, "copy", "LADXConstraintWidget;LJavaUtilHashMap;", "(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap<Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;)V", "toString", "addToSolver", "LADXLinearSystem;Z", "setMargin" };
  static const J2ObjcClassInfo _ADXCoreBarrier = { "CoreBarrier", "androidx.constraintlayout.core.widgets", ptrTable, methods, fields, 7, 0x1, 18, 10, -1, -1, -1, -1, -1 };
  return &_ADXCoreBarrier;
}

@end

void ADXCoreBarrier_init(ADXCoreBarrier *self) {
  ADXHelperWidget_init(self);
  self->mBarrierType_ = ADXCoreBarrier_LEFT;
  self->mAllowsGoneWidget_ = true;
  self->mMargin_ = 0;
  self->resolved_ = false;
}

ADXCoreBarrier *new_ADXCoreBarrier_init() {
  J2OBJC_NEW_IMPL(ADXCoreBarrier, init)
}

ADXCoreBarrier *create_ADXCoreBarrier_init() {
  J2OBJC_CREATE_IMPL(ADXCoreBarrier, init)
}

void ADXCoreBarrier_initWithNSString_(ADXCoreBarrier *self, NSString *debugName) {
  ADXHelperWidget_init(self);
  self->mBarrierType_ = ADXCoreBarrier_LEFT;
  self->mAllowsGoneWidget_ = true;
  self->mMargin_ = 0;
  self->resolved_ = false;
  [self setDebugNameWithNSString:debugName];
}

ADXCoreBarrier *new_ADXCoreBarrier_initWithNSString_(NSString *debugName) {
  J2OBJC_NEW_IMPL(ADXCoreBarrier, initWithNSString_, debugName)
}

ADXCoreBarrier *create_ADXCoreBarrier_initWithNSString_(NSString *debugName) {
  J2OBJC_CREATE_IMPL(ADXCoreBarrier, initWithNSString_, debugName)
}

IOSObjectArray *ADXCoreBarrier__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXCoreBarrier)