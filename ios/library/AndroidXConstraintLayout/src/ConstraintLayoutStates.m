//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\ConstraintLayoutStates.java
//

#include "ConstraintLayout.h"
#include "ConstraintLayoutStates.h"
#include "ConstraintSet.h"
#include "ConstraintsChangedListener.h"
#include "Context.h"
#include "J2ObjC_source.h"
#include "Log.h"
#include "SparseArray.h"
#include "java/lang/Float.h"
#include "java/util/ArrayList.h"


@interface ADXConstraintLayoutStates () {
 @public
  ADXConstraintLayout *mConstraintLayout_;
  ADSparseArray *mStateList_;
  ADSparseArray *mConstraintSetMap_;
  ADXConstraintsChangedListener *mConstraintsChangedListener_;
}

@end

J2OBJC_FIELD_SETTER(ADXConstraintLayoutStates, mConstraintLayout_, ADXConstraintLayout *)
J2OBJC_FIELD_SETTER(ADXConstraintLayoutStates, mStateList_, ADSparseArray *)
J2OBJC_FIELD_SETTER(ADXConstraintLayoutStates, mConstraintSetMap_, ADSparseArray *)
J2OBJC_FIELD_SETTER(ADXConstraintLayoutStates, mConstraintsChangedListener_, ADXConstraintsChangedListener *)

inline jboolean ADXConstraintLayoutStates_get_DEBUG(void);
#define ADXConstraintLayoutStates_DEBUG false
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayoutStates, DEBUG, jboolean)

NSString *ADXConstraintLayoutStates_TAG = @"ConstraintLayoutStates";

@implementation ADXConstraintLayoutStates

- (instancetype)initWithADContext:(ADContext *)context
          withADXConstraintLayout:(ADXConstraintLayout *)layout
                          withInt:(jint)resourceID {
  ADXConstraintLayoutStates_initWithADContext_withADXConstraintLayout_withInt_(self, context, layout, resourceID);
  return self;
}

- (jboolean)needsToChangeWithInt:(jint)id_
                       withFloat:(jfloat)width
                       withFloat:(jfloat)height {
  if (mCurrentStateId_ != id_) {
    return true;
  }
  ADXConstraintLayoutStates_State *state = (id_ == -1) ? [((ADSparseArray *) nil_chk(mStateList_)) valueAtWithInt:0] : [((ADSparseArray *) nil_chk(mStateList_)) getWithInt:mCurrentStateId_];
  if (mCurrentConstraintNumber_ != -1) {
    if ([((ADXConstraintLayoutStates_Variant *) nil_chk([((JavaUtilArrayList *) nil_chk(state->mVariants_)) getWithInt:mCurrentConstraintNumber_])) matchWithFloat:width withFloat:height]) {
      return false;
    }
  }
  if (mCurrentConstraintNumber_ == [state findMatchWithFloat:width withFloat:height]) {
    return false;
  }
  return true;
}

- (void)updateConstraintsWithInt:(jint)id_
                       withFloat:(jfloat)width
                       withFloat:(jfloat)height {
  if (mCurrentStateId_ == id_) {
    ADXConstraintLayoutStates_State *state;
    if (id_ == -1) {
      state = [((ADSparseArray *) nil_chk(mStateList_)) valueAtWithInt:0];
    }
    else {
      state = [((ADSparseArray *) nil_chk(mStateList_)) getWithInt:mCurrentStateId_];
    }
    if (mCurrentConstraintNumber_ != -1) {
      if ([((ADXConstraintLayoutStates_Variant *) nil_chk([((JavaUtilArrayList *) nil_chk(((ADXConstraintLayoutStates_State *) nil_chk(state))->mVariants_)) getWithInt:mCurrentConstraintNumber_])) matchWithFloat:width withFloat:height]) {
        return;
      }
    }
    jint match = [((ADXConstraintLayoutStates_State *) nil_chk(state)) findMatchWithFloat:width withFloat:height];
    if (mCurrentConstraintNumber_ == match) {
      return;
    }
    ADXConstraintSet *constraintSet = (match == -1) ? mDefaultConstraintSet_ : ((ADXConstraintLayoutStates_Variant *) nil_chk([((JavaUtilArrayList *) nil_chk(state->mVariants_)) getWithInt:match]))->mConstraintSet_;
    jint cid = (match == -1) ? state->mConstraintID_ : ((ADXConstraintLayoutStates_Variant *) nil_chk([((JavaUtilArrayList *) nil_chk(state->mVariants_)) getWithInt:match]))->mConstraintID_;
    if (constraintSet == nil) {
      return;
    }
    mCurrentConstraintNumber_ = match;
    if (mConstraintsChangedListener_ != nil) {
      [mConstraintsChangedListener_ preLayoutChangeWithInt:-1 withInt:cid];
    }
    [constraintSet applyToWithADXConstraintLayout:mConstraintLayout_];
    if (mConstraintsChangedListener_ != nil) {
      [mConstraintsChangedListener_ postLayoutChangeWithInt:-1 withInt:cid];
    }
  }
  else {
    mCurrentStateId_ = id_;
    ADXConstraintLayoutStates_State *state = JreRetainedLocalValue([((ADSparseArray *) nil_chk(mStateList_)) getWithInt:mCurrentStateId_]);
    jint match = [((ADXConstraintLayoutStates_State *) nil_chk(state)) findMatchWithFloat:width withFloat:height];
    ADXConstraintSet *constraintSet = (match == -1) ? state->mConstraintSet_ : ((ADXConstraintLayoutStates_Variant *) nil_chk([((JavaUtilArrayList *) nil_chk(state->mVariants_)) getWithInt:match]))->mConstraintSet_;
    jint cid = (match == -1) ? state->mConstraintID_ : ((ADXConstraintLayoutStates_Variant *) nil_chk([((JavaUtilArrayList *) nil_chk(state->mVariants_)) getWithInt:match]))->mConstraintID_;
    if (constraintSet == nil) {
      ADLog_vWithNSString_withNSString_(ADXConstraintLayoutStates_TAG, JreStrcat("$I$F$F", @"NO Constraint set found ! id=", id_, @", dim =", width, @", ", height));
      return;
    }
    mCurrentConstraintNumber_ = match;
    if (mConstraintsChangedListener_ != nil) {
      [mConstraintsChangedListener_ preLayoutChangeWithInt:id_ withInt:cid];
    }
    [constraintSet applyToWithADXConstraintLayout:mConstraintLayout_];
    if (mConstraintsChangedListener_ != nil) {
      [mConstraintsChangedListener_ postLayoutChangeWithInt:id_ withInt:cid];
    }
  }
}

- (void)setOnConstraintsChangedWithADXConstraintsChangedListener:(ADXConstraintsChangedListener *)constraintsChangedListener {
  JreStrongAssign(&self->mConstraintsChangedListener_, constraintsChangedListener);
}

- (void)dealloc {
  RELEASE_(mConstraintLayout_);
  RELEASE_(mDefaultConstraintSet_);
  RELEASE_(mStateList_);
  RELEASE_(mConstraintSetMap_);
  RELEASE_(mConstraintsChangedListener_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADContext:withADXConstraintLayout:withInt:);
  methods[1].selector = @selector(needsToChangeWithInt:withFloat:withFloat:);
  methods[2].selector = @selector(updateConstraintsWithInt:withFloat:withFloat:);
  methods[3].selector = @selector(setOnConstraintsChangedWithADXConstraintsChangedListener:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "DEBUG", "Z", .constantValue.asBOOL = ADXConstraintLayoutStates_DEBUG, 0x1a, -1, -1, -1, -1 },
    { "mConstraintLayout_", "LADXConstraintLayout;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mDefaultConstraintSet_", "LADXConstraintSet;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mCurrentStateId_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mCurrentConstraintNumber_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mStateList_", "LADSparseArray;", .constantValue.asLong = 0, 0x2, -1, -1, 7, -1 },
    { "mConstraintSetMap_", "LADSparseArray;", .constantValue.asLong = 0, 0x2, -1, -1, 8, -1 },
    { "mConstraintsChangedListener_", "LADXConstraintsChangedListener;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADContext;LADXConstraintLayout;I", "needsToChange", "IFF", "updateConstraints", "setOnConstraintsChanged", "LADXConstraintsChangedListener;", &ADXConstraintLayoutStates_TAG, "Lr/android/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;>;", "Lr/android/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintSet;>;", "LADXConstraintLayoutStates_State;LADXConstraintLayoutStates_Variant;" };
  static const J2ObjcClassInfo _ADXConstraintLayoutStates = { "ConstraintLayoutStates", "androidx.constraintlayout.widget", ptrTable, methods, fields, 7, 0x1, 4, 9, -1, 9, -1, -1, -1 };
  return &_ADXConstraintLayoutStates;
}

@end

void ADXConstraintLayoutStates_initWithADContext_withADXConstraintLayout_withInt_(ADXConstraintLayoutStates *self, ADContext *context, ADXConstraintLayout *layout, jint resourceID) {
  NSObject_init(self);
  self->mCurrentStateId_ = -1;
  self->mCurrentConstraintNumber_ = -1;
  JreStrongAssignAndConsume(&self->mStateList_, new_ADSparseArray_init());
  JreStrongAssignAndConsume(&self->mConstraintSetMap_, new_ADSparseArray_init());
  JreStrongAssign(&self->mConstraintsChangedListener_, nil);
  JreStrongAssign(&self->mConstraintLayout_, layout);
}

ADXConstraintLayoutStates *new_ADXConstraintLayoutStates_initWithADContext_withADXConstraintLayout_withInt_(ADContext *context, ADXConstraintLayout *layout, jint resourceID) {
  J2OBJC_NEW_IMPL(ADXConstraintLayoutStates, initWithADContext_withADXConstraintLayout_withInt_, context, layout, resourceID)
}

ADXConstraintLayoutStates *create_ADXConstraintLayoutStates_initWithADContext_withADXConstraintLayout_withInt_(ADContext *context, ADXConstraintLayout *layout, jint resourceID) {
  J2OBJC_CREATE_IMPL(ADXConstraintLayoutStates, initWithADContext_withADXConstraintLayout_withInt_, context, layout, resourceID)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXConstraintLayoutStates)

@implementation ADXConstraintLayoutStates_State

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXConstraintLayoutStates_State_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addWithADXConstraintLayoutStates_Variant:(ADXConstraintLayoutStates_Variant *)size {
  [((JavaUtilArrayList *) nil_chk(mVariants_)) addWithId:size];
}

- (jint)findMatchWithFloat:(jfloat)width
                 withFloat:(jfloat)height {
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(mVariants_)) size]; i++) {
    if ([((ADXConstraintLayoutStates_Variant *) nil_chk([((JavaUtilArrayList *) nil_chk(mVariants_)) getWithInt:i])) matchWithFloat:width withFloat:height]) {
      return i;
    }
  }
  return -1;
}

- (void)dealloc {
  RELEASE_(mVariants_);
  RELEASE_(mConstraintSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithADXConstraintLayoutStates_Variant:);
  methods[2].selector = @selector(findMatchWithFloat:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mId_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mVariants_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 4, -1 },
    { "mConstraintID_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mConstraintSet_", "LADXConstraintSet;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "LADXConstraintLayoutStates_Variant;", "findMatch", "FF", "Ljava/util/ArrayList<Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;>;", "LADXConstraintLayoutStates;" };
  static const J2ObjcClassInfo _ADXConstraintLayoutStates_State = { "State", "androidx.constraintlayout.widget", ptrTable, methods, fields, 7, 0x8, 3, 4, 5, -1, -1, -1, -1 };
  return &_ADXConstraintLayoutStates_State;
}

@end

void ADXConstraintLayoutStates_State_init(ADXConstraintLayoutStates_State *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mVariants_, new_JavaUtilArrayList_init());
  self->mConstraintID_ = -1;
}

ADXConstraintLayoutStates_State *new_ADXConstraintLayoutStates_State_init() {
  J2OBJC_NEW_IMPL(ADXConstraintLayoutStates_State, init)
}

ADXConstraintLayoutStates_State *create_ADXConstraintLayoutStates_State_init() {
  J2OBJC_CREATE_IMPL(ADXConstraintLayoutStates_State, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXConstraintLayoutStates_State)

@implementation ADXConstraintLayoutStates_Variant

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXConstraintLayoutStates_Variant_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)matchWithFloat:(jfloat)widthDp
                 withFloat:(jfloat)heightDp {
  if (!JavaLangFloat_isNaNWithFloat_(mMinWidth_)) {
    if (widthDp < mMinWidth_) return false;
  }
  if (!JavaLangFloat_isNaNWithFloat_(mMinHeight_)) {
    if (heightDp < mMinHeight_) return false;
  }
  if (!JavaLangFloat_isNaNWithFloat_(mMaxWidth_)) {
    if (widthDp > mMaxWidth_) return false;
  }
  if (!JavaLangFloat_isNaNWithFloat_(mMaxHeight_)) {
    if (heightDp > mMaxHeight_) return false;
  }
  return true;
}

- (void)dealloc {
  RELEASE_(mConstraintSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(matchWithFloat:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mId_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mMinWidth_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mMinHeight_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mMaxWidth_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mMaxHeight_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mConstraintID_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mConstraintSet_", "LADXConstraintSet;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "match", "FF", "LADXConstraintLayoutStates;" };
  static const J2ObjcClassInfo _ADXConstraintLayoutStates_Variant = { "Variant", "androidx.constraintlayout.widget", ptrTable, methods, fields, 7, 0x8, 2, 7, 2, -1, -1, -1, -1 };
  return &_ADXConstraintLayoutStates_Variant;
}

@end

void ADXConstraintLayoutStates_Variant_init(ADXConstraintLayoutStates_Variant *self) {
  NSObject_init(self);
  self->mMinWidth_ = JavaLangFloat_NaN;
  self->mMinHeight_ = JavaLangFloat_NaN;
  self->mMaxWidth_ = JavaLangFloat_NaN;
  self->mMaxHeight_ = JavaLangFloat_NaN;
  self->mConstraintID_ = -1;
}

ADXConstraintLayoutStates_Variant *new_ADXConstraintLayoutStates_Variant_init() {
  J2OBJC_NEW_IMPL(ADXConstraintLayoutStates_Variant, init)
}

ADXConstraintLayoutStates_Variant *create_ADXConstraintLayoutStates_Variant_init() {
  J2OBJC_CREATE_IMPL(ADXConstraintLayoutStates_Variant, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXConstraintLayoutStates_Variant)