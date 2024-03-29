//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\utils\ViewSpline.java
//

#include "ConstraintAttribute.h"
#include "CurveFit.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "Key.h"
#include "Log.h"
#include "MotionLayout.h"
#include "SparseArray.h"
#include "SplineSet.h"
#include "View.h"
#include "ViewSpline.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/Math.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "java/lang/reflect/Method.h"


inline NSString *ADXViewSpline_get_TAG(void);
static NSString *ADXViewSpline_TAG = @"ViewSpline";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXViewSpline, TAG, NSString *)

@implementation ADXViewSpline

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (ADXViewSpline *)makeCustomSplineWithNSString:(NSString *)str
                              withADSparseArray:(ADSparseArray *)attrList {
  return ADXViewSpline_makeCustomSplineWithNSString_withADSparseArray_(str, attrList);
}

+ (ADXViewSpline *)makeSplineWithNSString:(NSString *)str {
  return ADXViewSpline_makeSplineWithNSString_(str);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LADXViewSpline;", 0x9, 2, 3, -1, 4, -1, -1 },
    { NULL, "LADXViewSpline;", 0x9, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  methods[2].selector = @selector(makeCustomSplineWithNSString:withADSparseArray:);
  methods[3].selector = @selector(makeSplineWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "setProperty", "LADView;F", "makeCustomSpline", "LNSString;LADSparseArray;", "(Ljava/lang/String;Lr/android/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;)Landroidx/constraintlayout/motion/utils/ViewSpline;", "makeSpline", "LNSString;", &ADXViewSpline_TAG, "LADXViewSpline_ElevationSet;LADXViewSpline_AlphaSet;LADXViewSpline_RotationSet;LADXViewSpline_RotationXset;LADXViewSpline_RotationYset;LADXViewSpline_PivotXset;LADXViewSpline_PivotYset;LADXViewSpline_PathRotate;LADXViewSpline_ScaleXset;LADXViewSpline_ScaleYset;LADXViewSpline_TranslationXset;LADXViewSpline_TranslationYset;LADXViewSpline_TranslationZset;LADXViewSpline_CustomSet;LADXViewSpline_ProgressSet;" };
  static const J2ObjcClassInfo _ADXViewSpline = { "ViewSpline", "androidx.constraintlayout.motion.utils", ptrTable, methods, fields, 7, 0x401, 4, 1, -1, 8, -1, -1, -1 };
  return &_ADXViewSpline;
}

@end

void ADXViewSpline_init(ADXViewSpline *self) {
  ADXSplineSet_init(self);
}

ADXViewSpline *ADXViewSpline_makeCustomSplineWithNSString_withADSparseArray_(NSString *str, ADSparseArray *attrList) {
  ADXViewSpline_initialize();
  return create_ADXViewSpline_CustomSet_initWithNSString_withADSparseArray_(str, attrList);
}

ADXViewSpline *ADXViewSpline_makeSplineWithNSString_(NSString *str) {
  ADXViewSpline_initialize();
  switch (JreIndexOfStr(str, (id[]){ ADXKey_ALPHA, ADXKey_ELEVATION, ADXKey_ROTATION, ADXKey_ROTATION_X, ADXKey_ROTATION_Y, ADXKey_PIVOT_X, ADXKey_PIVOT_Y, ADXKey_TRANSITION_PATH_ROTATE, ADXKey_SCALE_X, ADXKey_SCALE_Y, ADXKey_WAVE_OFFSET, ADXKey_WAVE_VARIES_BY, ADXKey_TRANSLATION_X, ADXKey_TRANSLATION_Y, ADXKey_TRANSLATION_Z, ADXKey_PROGRESS }, 16)) {
    case 0:
    return create_ADXViewSpline_AlphaSet_init();
    case 1:
    return create_ADXViewSpline_ElevationSet_init();
    case 2:
    return create_ADXViewSpline_RotationSet_init();
    case 3:
    return create_ADXViewSpline_RotationXset_init();
    case 4:
    return create_ADXViewSpline_RotationYset_init();
    case 5:
    return create_ADXViewSpline_PivotXset_init();
    case 6:
    return create_ADXViewSpline_PivotYset_init();
    case 7:
    return create_ADXViewSpline_PathRotate_init();
    case 8:
    return create_ADXViewSpline_ScaleXset_init();
    case 9:
    return create_ADXViewSpline_ScaleYset_init();
    case 10:
    return create_ADXViewSpline_AlphaSet_init();
    case 11:
    return create_ADXViewSpline_AlphaSet_init();
    case 12:
    return create_ADXViewSpline_TranslationXset_init();
    case 13:
    return create_ADXViewSpline_TranslationYset_init();
    case 14:
    return create_ADXViewSpline_TranslationZset_init();
    case 15:
    return create_ADXViewSpline_ProgressSet_init();
    default:
    return nil;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline)

@implementation ADXViewSpline_ElevationSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_ElevationSet_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  {
    [((ADView *) nil_chk(view)) setElevationWithFloat:[self getWithFloat:t]];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_ElevationSet = { "ElevationSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_ElevationSet;
}

@end

void ADXViewSpline_ElevationSet_init(ADXViewSpline_ElevationSet *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_ElevationSet *new_ADXViewSpline_ElevationSet_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_ElevationSet, init)
}

ADXViewSpline_ElevationSet *create_ADXViewSpline_ElevationSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_ElevationSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_ElevationSet)

@implementation ADXViewSpline_AlphaSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_AlphaSet_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setAlphaWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_AlphaSet = { "AlphaSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_AlphaSet;
}

@end

void ADXViewSpline_AlphaSet_init(ADXViewSpline_AlphaSet *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_AlphaSet *new_ADXViewSpline_AlphaSet_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_AlphaSet, init)
}

ADXViewSpline_AlphaSet *create_ADXViewSpline_AlphaSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_AlphaSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_AlphaSet)

@implementation ADXViewSpline_RotationSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_RotationSet_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setRotationWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_RotationSet = { "RotationSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_RotationSet;
}

@end

void ADXViewSpline_RotationSet_init(ADXViewSpline_RotationSet *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_RotationSet *new_ADXViewSpline_RotationSet_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_RotationSet, init)
}

ADXViewSpline_RotationSet *create_ADXViewSpline_RotationSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_RotationSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_RotationSet)

@implementation ADXViewSpline_RotationXset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_RotationXset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setRotationXWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_RotationXset = { "RotationXset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_RotationXset;
}

@end

void ADXViewSpline_RotationXset_init(ADXViewSpline_RotationXset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_RotationXset *new_ADXViewSpline_RotationXset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_RotationXset, init)
}

ADXViewSpline_RotationXset *create_ADXViewSpline_RotationXset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_RotationXset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_RotationXset)

@implementation ADXViewSpline_RotationYset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_RotationYset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setRotationYWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_RotationYset = { "RotationYset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_RotationYset;
}

@end

void ADXViewSpline_RotationYset_init(ADXViewSpline_RotationYset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_RotationYset *new_ADXViewSpline_RotationYset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_RotationYset, init)
}

ADXViewSpline_RotationYset *create_ADXViewSpline_RotationYset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_RotationYset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_RotationYset)

@implementation ADXViewSpline_PivotXset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_PivotXset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setPivotXWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_PivotXset = { "PivotXset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_PivotXset;
}

@end

void ADXViewSpline_PivotXset_init(ADXViewSpline_PivotXset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_PivotXset *new_ADXViewSpline_PivotXset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_PivotXset, init)
}

ADXViewSpline_PivotXset *create_ADXViewSpline_PivotXset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_PivotXset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_PivotXset)

@implementation ADXViewSpline_PivotYset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_PivotYset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setPivotYWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_PivotYset = { "PivotYset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_PivotYset;
}

@end

void ADXViewSpline_PivotYset_init(ADXViewSpline_PivotYset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_PivotYset *new_ADXViewSpline_PivotYset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_PivotYset, init)
}

ADXViewSpline_PivotYset *create_ADXViewSpline_PivotYset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_PivotYset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_PivotYset)

@implementation ADXViewSpline_PathRotate

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_PathRotate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
}

- (void)setPathRotateWithADView:(ADView *)view
                      withFloat:(jfloat)t
                     withDouble:(jdouble)dx
                     withDouble:(jdouble)dy {
  [((ADView *) nil_chk(view)) setRotationWithFloat:[self getWithFloat:t] + (jfloat) JavaLangMath_toDegreesWithDouble_(JavaLangMath_atan2WithDouble_withDouble_(dy, dx))];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  methods[2].selector = @selector(setPathRotateWithADView:withFloat:withDouble:withDouble:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "setPathRotate", "LADView;FDD", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_PathRotate = { "PathRotate", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x9, 3, 0, 4, -1, -1, -1, -1 };
  return &_ADXViewSpline_PathRotate;
}

@end

void ADXViewSpline_PathRotate_init(ADXViewSpline_PathRotate *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_PathRotate *new_ADXViewSpline_PathRotate_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_PathRotate, init)
}

ADXViewSpline_PathRotate *create_ADXViewSpline_PathRotate_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_PathRotate, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_PathRotate)

@implementation ADXViewSpline_ScaleXset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_ScaleXset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setScaleXWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_ScaleXset = { "ScaleXset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_ScaleXset;
}

@end

void ADXViewSpline_ScaleXset_init(ADXViewSpline_ScaleXset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_ScaleXset *new_ADXViewSpline_ScaleXset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_ScaleXset, init)
}

ADXViewSpline_ScaleXset *create_ADXViewSpline_ScaleXset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_ScaleXset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_ScaleXset)

@implementation ADXViewSpline_ScaleYset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_ScaleYset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setScaleYWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_ScaleYset = { "ScaleYset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_ScaleYset;
}

@end

void ADXViewSpline_ScaleYset_init(ADXViewSpline_ScaleYset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_ScaleYset *new_ADXViewSpline_ScaleYset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_ScaleYset, init)
}

ADXViewSpline_ScaleYset *create_ADXViewSpline_ScaleYset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_ScaleYset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_ScaleYset)

@implementation ADXViewSpline_TranslationXset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_TranslationXset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setTranslationXWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_TranslationXset = { "TranslationXset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_TranslationXset;
}

@end

void ADXViewSpline_TranslationXset_init(ADXViewSpline_TranslationXset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_TranslationXset *new_ADXViewSpline_TranslationXset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_TranslationXset, init)
}

ADXViewSpline_TranslationXset *create_ADXViewSpline_TranslationXset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_TranslationXset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_TranslationXset)

@implementation ADXViewSpline_TranslationYset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_TranslationYset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADView *) nil_chk(view)) setTranslationYWithFloat:[self getWithFloat:t]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_TranslationYset = { "TranslationYset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_TranslationYset;
}

@end

void ADXViewSpline_TranslationYset_init(ADXViewSpline_TranslationYset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_TranslationYset *new_ADXViewSpline_TranslationYset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_TranslationYset, init)
}

ADXViewSpline_TranslationYset *create_ADXViewSpline_TranslationYset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_TranslationYset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_TranslationYset)

@implementation ADXViewSpline_TranslationZset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_TranslationZset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  {
    [((ADView *) nil_chk(view)) setTranslationZWithFloat:[self getWithFloat:t]];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_TranslationZset = { "TranslationZset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_TranslationZset;
}

@end

void ADXViewSpline_TranslationZset_init(ADXViewSpline_TranslationZset *self) {
  ADXViewSpline_init(self);
}

ADXViewSpline_TranslationZset *new_ADXViewSpline_TranslationZset_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_TranslationZset, init)
}

ADXViewSpline_TranslationZset *create_ADXViewSpline_TranslationZset_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_TranslationZset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_TranslationZset)

@implementation ADXViewSpline_CustomSet

- (instancetype)initWithNSString:(NSString *)attribute
               withADSparseArray:(ADSparseArray *)attrList {
  ADXViewSpline_CustomSet_initWithNSString_withADSparseArray_(self, attribute, attrList);
  return self;
}

- (void)setupWithInt:(jint)curveType {
  jint size = [((ADSparseArray *) nil_chk(mConstraintAttributeList_)) size];
  jint dimensionality = [((ADXConstraintAttribute *) nil_chk([((ADSparseArray *) nil_chk(mConstraintAttributeList_)) valueAtWithInt:0])) numberOfInterpolatedValues];
  IOSDoubleArray *time = [IOSDoubleArray arrayWithLength:size];
  JreStrongAssignAndConsume(&mTempValues_, [IOSFloatArray newArrayWithLength:dimensionality]);
  IOSObjectArray *values = [IOSDoubleArray arrayWithDimensions:2 lengths:(jint[]){ size, dimensionality }];
  for (jint i = 0; i < size; i++) {
    jint key = [((ADSparseArray *) nil_chk(mConstraintAttributeList_)) keyAtWithInt:i];
    ADXConstraintAttribute *ca = JreRetainedLocalValue([((ADSparseArray *) nil_chk(mConstraintAttributeList_)) valueAtWithInt:i]);
    *IOSDoubleArray_GetRef(time, i) = key * 1E-2;
    [((ADXConstraintAttribute *) nil_chk(ca)) getValuesToInterpolateWithFloatArray:mTempValues_];
    for (jint k = 0; k < ((IOSFloatArray *) nil_chk(mTempValues_))->size_; k++) {
      *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(values, i)), k) = IOSFloatArray_Get(mTempValues_, k);
    }
  }
  JreStrongAssign(&mCurveFit_, ADXCurveFit_getWithInt_withDoubleArray_withDoubleArray2_(curveType, time, values));
}

- (void)setPointWithInt:(jint)position
              withFloat:(jfloat)value {
  @throw create_JavaLangRuntimeException_initWithNSString_(@"don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
}

- (void)setPointWithInt:(jint)position
withADXConstraintAttribute:(ADXConstraintAttribute *)value {
  [((ADSparseArray *) nil_chk(mConstraintAttributeList_)) appendWithInt:position withId:value];
}

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  [((ADXCurveFit *) nil_chk(mCurveFit_)) getPosWithDouble:t withFloatArray:mTempValues_];
  [((ADXConstraintAttribute *) nil_chk([((ADSparseArray *) nil_chk(mConstraintAttributeList_)) valueAtWithInt:0])) setInterpolatedValueWithADView:view withFloatArray:mTempValues_];
}

- (void)dealloc {
  RELEASE_(mAttributeName_);
  RELEASE_(mConstraintAttributeList_);
  RELEASE_(mTempValues_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withADSparseArray:);
  methods[1].selector = @selector(setupWithInt:);
  methods[2].selector = @selector(setPointWithInt:withFloat:);
  methods[3].selector = @selector(setPointWithInt:withADXConstraintAttribute:);
  methods[4].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mAttributeName_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mConstraintAttributeList_", "LADSparseArray;", .constantValue.asLong = 0, 0x0, -1, -1, 9, -1 },
    { "mTempValues_", "[F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LADSparseArray;", "(Ljava/lang/String;Lr/android/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;)V", "setup", "I", "setPoint", "IF", "ILADXConstraintAttribute;", "setProperty", "LADView;F", "Lr/android/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_CustomSet = { "CustomSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, fields, 7, 0x9, 5, 3, 10, -1, -1, -1, -1 };
  return &_ADXViewSpline_CustomSet;
}

@end

void ADXViewSpline_CustomSet_initWithNSString_withADSparseArray_(ADXViewSpline_CustomSet *self, NSString *attribute, ADSparseArray *attrList) {
  ADXViewSpline_init(self);
  JreStrongAssign(&self->mAttributeName_, IOSObjectArray_Get(nil_chk([((NSString *) nil_chk(attribute)) java_split:@","]), 1));
  JreStrongAssign(&self->mConstraintAttributeList_, attrList);
}

ADXViewSpline_CustomSet *new_ADXViewSpline_CustomSet_initWithNSString_withADSparseArray_(NSString *attribute, ADSparseArray *attrList) {
  J2OBJC_NEW_IMPL(ADXViewSpline_CustomSet, initWithNSString_withADSparseArray_, attribute, attrList)
}

ADXViewSpline_CustomSet *create_ADXViewSpline_CustomSet_initWithNSString_withADSparseArray_(NSString *attribute, ADSparseArray *attrList) {
  J2OBJC_CREATE_IMPL(ADXViewSpline_CustomSet, initWithNSString_withADSparseArray_, attribute, attrList)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_CustomSet)

@implementation ADXViewSpline_ProgressSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewSpline_ProgressSet_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  if ([view isKindOfClass:[ADXMotionLayout class]]) {
    [((ADXMotionLayout *) nil_chk(((ADXMotionLayout *) view))) setProgressWithFloat:[self getWithFloat:t]];
  }
  else {
    if (mNoMethod_) {
      return;
    }
    JavaLangReflectMethod *method = nil;
    @try {
      method = [[((ADView *) nil_chk(view)) java_getClass] getMethod:@"setProgress" parameterTypes:[IOSObjectArray arrayWithObjects:(id[]){ JreLoadStatic(JavaLangFloat, TYPE) } count:1 type:IOSClass_class_()]];
    }
    @catch (JavaLangNoSuchMethodException *e) {
      mNoMethod_ = true;
    }
    if (method != nil) {
      @try {
        [method invokeWithId:view withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangFloat_valueOfWithFloat_([self getWithFloat:t]) } count:1 type:NSObject_class_()]];
      }
      @catch (JavaLangIllegalAccessException *e) {
        ADLog_eWithNSString_withNSString_withJavaLangThrowable_(ADXViewSpline_TAG, @"unable to setProgress", e);
      }
      @catch (JavaLangReflectInvocationTargetException *e) {
        ADLog_eWithNSString_withNSString_withJavaLangThrowable_(ADXViewSpline_TAG, @"unable to setProgress", e);
      }
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mNoMethod_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewSpline;" };
  static const J2ObjcClassInfo _ADXViewSpline_ProgressSet = { "ProgressSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, fields, 7, 0x8, 2, 1, 2, -1, -1, -1, -1 };
  return &_ADXViewSpline_ProgressSet;
}

@end

void ADXViewSpline_ProgressSet_init(ADXViewSpline_ProgressSet *self) {
  ADXViewSpline_init(self);
  self->mNoMethod_ = false;
}

ADXViewSpline_ProgressSet *new_ADXViewSpline_ProgressSet_init() {
  J2OBJC_NEW_IMPL(ADXViewSpline_ProgressSet, init)
}

ADXViewSpline_ProgressSet *create_ADXViewSpline_ProgressSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewSpline_ProgressSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewSpline_ProgressSet)
