//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\utils\ViewOscillator.java
//

#include "ConstraintAttribute.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "Key.h"
#include "KeyCycleOscillator.h"
#include "Log.h"
#include "MotionLayout.h"
#include "View.h"
#include "ViewOscillator.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/Math.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "java/lang/reflect/Method.h"


inline NSString *ADXViewOscillator_get_TAG(void);
static NSString *ADXViewOscillator_TAG = @"ViewOscillator";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXViewOscillator, TAG, NSString *)

@implementation ADXViewOscillator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (ADXViewOscillator *)makeSplineWithNSString:(NSString *)str {
  return ADXViewOscillator_makeSplineWithNSString_(str);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LADXViewOscillator;", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPropertyWithADView:withFloat:);
  methods[2].selector = @selector(makeSplineWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "setProperty", "LADView;F", "makeSpline", "LNSString;", &ADXViewOscillator_TAG, "LADXViewOscillator_ElevationSet;LADXViewOscillator_AlphaSet;LADXViewOscillator_RotationSet;LADXViewOscillator_RotationXset;LADXViewOscillator_RotationYset;LADXViewOscillator_PathRotateSet;LADXViewOscillator_ScaleXset;LADXViewOscillator_ScaleYset;LADXViewOscillator_TranslationXset;LADXViewOscillator_TranslationYset;LADXViewOscillator_TranslationZset;LADXViewOscillator_CustomSet;LADXViewOscillator_ProgressSet;" };
  static const J2ObjcClassInfo _ADXViewOscillator = { "ViewOscillator", "androidx.constraintlayout.motion.utils", ptrTable, methods, fields, 7, 0x401, 3, 1, -1, 5, -1, -1, -1 };
  return &_ADXViewOscillator;
}

@end

void ADXViewOscillator_init(ADXViewOscillator *self) {
  ADXKeyCycleOscillator_init(self);
}

ADXViewOscillator *ADXViewOscillator_makeSplineWithNSString_(NSString *str) {
  ADXViewOscillator_initialize();
  if ([((NSString *) nil_chk(str)) java_hasPrefix:ADXKey_CUSTOM]) {
    return create_ADXViewOscillator_CustomSet_init();
  }
  switch (JreIndexOfStr(str, (id[]){ ADXKey_ALPHA, ADXKey_ELEVATION, ADXKey_ROTATION, ADXKey_ROTATION_X, ADXKey_ROTATION_Y, ADXKey_TRANSITION_PATH_ROTATE, ADXKey_SCALE_X, ADXKey_SCALE_Y, ADXKey_WAVE_OFFSET, ADXKey_WAVE_VARIES_BY, ADXKey_TRANSLATION_X, ADXKey_TRANSLATION_Y, ADXKey_TRANSLATION_Z, ADXKey_PROGRESS }, 14)) {
    case 0:
    return create_ADXViewOscillator_AlphaSet_init();
    case 1:
    return create_ADXViewOscillator_ElevationSet_init();
    case 2:
    return create_ADXViewOscillator_RotationSet_init();
    case 3:
    return create_ADXViewOscillator_RotationXset_init();
    case 4:
    return create_ADXViewOscillator_RotationYset_init();
    case 5:
    return create_ADXViewOscillator_PathRotateSet_init();
    case 6:
    return create_ADXViewOscillator_ScaleXset_init();
    case 7:
    return create_ADXViewOscillator_ScaleYset_init();
    case 8:
    return create_ADXViewOscillator_AlphaSet_init();
    case 9:
    return create_ADXViewOscillator_AlphaSet_init();
    case 10:
    return create_ADXViewOscillator_TranslationXset_init();
    case 11:
    return create_ADXViewOscillator_TranslationYset_init();
    case 12:
    return create_ADXViewOscillator_TranslationZset_init();
    case 13:
    return create_ADXViewOscillator_ProgressSet_init();
    default:
    return nil;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator)

@implementation ADXViewOscillator_ElevationSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_ElevationSet_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_ElevationSet = { "ElevationSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_ElevationSet;
}

@end

void ADXViewOscillator_ElevationSet_init(ADXViewOscillator_ElevationSet *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_ElevationSet *new_ADXViewOscillator_ElevationSet_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_ElevationSet, init)
}

ADXViewOscillator_ElevationSet *create_ADXViewOscillator_ElevationSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_ElevationSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_ElevationSet)

@implementation ADXViewOscillator_AlphaSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_AlphaSet_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_AlphaSet = { "AlphaSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_AlphaSet;
}

@end

void ADXViewOscillator_AlphaSet_init(ADXViewOscillator_AlphaSet *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_AlphaSet *new_ADXViewOscillator_AlphaSet_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_AlphaSet, init)
}

ADXViewOscillator_AlphaSet *create_ADXViewOscillator_AlphaSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_AlphaSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_AlphaSet)

@implementation ADXViewOscillator_RotationSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_RotationSet_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_RotationSet = { "RotationSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_RotationSet;
}

@end

void ADXViewOscillator_RotationSet_init(ADXViewOscillator_RotationSet *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_RotationSet *new_ADXViewOscillator_RotationSet_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_RotationSet, init)
}

ADXViewOscillator_RotationSet *create_ADXViewOscillator_RotationSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_RotationSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_RotationSet)

@implementation ADXViewOscillator_RotationXset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_RotationXset_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_RotationXset = { "RotationXset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_RotationXset;
}

@end

void ADXViewOscillator_RotationXset_init(ADXViewOscillator_RotationXset *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_RotationXset *new_ADXViewOscillator_RotationXset_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_RotationXset, init)
}

ADXViewOscillator_RotationXset *create_ADXViewOscillator_RotationXset_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_RotationXset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_RotationXset)

@implementation ADXViewOscillator_RotationYset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_RotationYset_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_RotationYset = { "RotationYset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_RotationYset;
}

@end

void ADXViewOscillator_RotationYset_init(ADXViewOscillator_RotationYset *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_RotationYset *new_ADXViewOscillator_RotationYset_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_RotationYset, init)
}

ADXViewOscillator_RotationYset *create_ADXViewOscillator_RotationYset_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_RotationYset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_RotationYset)

@implementation ADXViewOscillator_PathRotateSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_PathRotateSet_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "setPathRotate", "LADView;FDD", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_PathRotateSet = { "PathRotateSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x9, 3, 0, 4, -1, -1, -1, -1 };
  return &_ADXViewOscillator_PathRotateSet;
}

@end

void ADXViewOscillator_PathRotateSet_init(ADXViewOscillator_PathRotateSet *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_PathRotateSet *new_ADXViewOscillator_PathRotateSet_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_PathRotateSet, init)
}

ADXViewOscillator_PathRotateSet *create_ADXViewOscillator_PathRotateSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_PathRotateSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_PathRotateSet)

@implementation ADXViewOscillator_ScaleXset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_ScaleXset_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_ScaleXset = { "ScaleXset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_ScaleXset;
}

@end

void ADXViewOscillator_ScaleXset_init(ADXViewOscillator_ScaleXset *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_ScaleXset *new_ADXViewOscillator_ScaleXset_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_ScaleXset, init)
}

ADXViewOscillator_ScaleXset *create_ADXViewOscillator_ScaleXset_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_ScaleXset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_ScaleXset)

@implementation ADXViewOscillator_ScaleYset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_ScaleYset_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_ScaleYset = { "ScaleYset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_ScaleYset;
}

@end

void ADXViewOscillator_ScaleYset_init(ADXViewOscillator_ScaleYset *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_ScaleYset *new_ADXViewOscillator_ScaleYset_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_ScaleYset, init)
}

ADXViewOscillator_ScaleYset *create_ADXViewOscillator_ScaleYset_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_ScaleYset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_ScaleYset)

@implementation ADXViewOscillator_TranslationXset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_TranslationXset_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_TranslationXset = { "TranslationXset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_TranslationXset;
}

@end

void ADXViewOscillator_TranslationXset_init(ADXViewOscillator_TranslationXset *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_TranslationXset *new_ADXViewOscillator_TranslationXset_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_TranslationXset, init)
}

ADXViewOscillator_TranslationXset *create_ADXViewOscillator_TranslationXset_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_TranslationXset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_TranslationXset)

@implementation ADXViewOscillator_TranslationYset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_TranslationYset_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_TranslationYset = { "TranslationYset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_TranslationYset;
}

@end

void ADXViewOscillator_TranslationYset_init(ADXViewOscillator_TranslationYset *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_TranslationYset *new_ADXViewOscillator_TranslationYset_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_TranslationYset, init)
}

ADXViewOscillator_TranslationYset *create_ADXViewOscillator_TranslationYset_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_TranslationYset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_TranslationYset)

@implementation ADXViewOscillator_TranslationZset

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_TranslationZset_init(self);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_TranslationZset = { "TranslationZset", "androidx.constraintlayout.motion.utils", ptrTable, methods, NULL, 7, 0x8, 2, 0, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_TranslationZset;
}

@end

void ADXViewOscillator_TranslationZset_init(ADXViewOscillator_TranslationZset *self) {
  ADXViewOscillator_init(self);
}

ADXViewOscillator_TranslationZset *new_ADXViewOscillator_TranslationZset_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_TranslationZset, init)
}

ADXViewOscillator_TranslationZset *create_ADXViewOscillator_TranslationZset_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_TranslationZset, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_TranslationZset)

@implementation ADXViewOscillator_CustomSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_CustomSet_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setCustomWithId:(id)custom {
  JreStrongAssign(&mCustom_, (ADXConstraintAttribute *) cast_chk(custom, [ADXConstraintAttribute class]));
}

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t {
  *IOSFloatArray_GetRef(nil_chk(value_), 0) = [self getWithFloat:t];
  [((ADXConstraintAttribute *) nil_chk(mCustom_)) setInterpolatedValueWithADView:view withFloatArray:value_];
}

- (void)dealloc {
  RELEASE_(value_);
  RELEASE_(mCustom_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setCustomWithId:);
  methods[2].selector = @selector(setPropertyWithADView:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "[F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mCustom_", "LADXConstraintAttribute;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setCustom", "LNSObject;", "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_CustomSet = { "CustomSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, fields, 7, 0x8, 3, 2, 4, -1, -1, -1, -1 };
  return &_ADXViewOscillator_CustomSet;
}

@end

void ADXViewOscillator_CustomSet_init(ADXViewOscillator_CustomSet *self) {
  ADXViewOscillator_init(self);
  JreStrongAssignAndConsume(&self->value_, [IOSFloatArray newArrayWithLength:1]);
}

ADXViewOscillator_CustomSet *new_ADXViewOscillator_CustomSet_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_CustomSet, init)
}

ADXViewOscillator_CustomSet *create_ADXViewOscillator_CustomSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_CustomSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_CustomSet)

@implementation ADXViewOscillator_ProgressSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewOscillator_ProgressSet_init(self);
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
        ADLog_eWithNSString_withNSString_withJavaLangThrowable_(ADXViewOscillator_TAG, @"unable to setProgress", e);
      }
      @catch (JavaLangReflectInvocationTargetException *e) {
        ADLog_eWithNSString_withNSString_withJavaLangThrowable_(ADXViewOscillator_TAG, @"unable to setProgress", e);
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
  static const void *ptrTable[] = { "setProperty", "LADView;F", "LADXViewOscillator;" };
  static const J2ObjcClassInfo _ADXViewOscillator_ProgressSet = { "ProgressSet", "androidx.constraintlayout.motion.utils", ptrTable, methods, fields, 7, 0x8, 2, 1, 2, -1, -1, -1, -1 };
  return &_ADXViewOscillator_ProgressSet;
}

@end

void ADXViewOscillator_ProgressSet_init(ADXViewOscillator_ProgressSet *self) {
  ADXViewOscillator_init(self);
  self->mNoMethod_ = false;
}

ADXViewOscillator_ProgressSet *new_ADXViewOscillator_ProgressSet_init() {
  J2OBJC_NEW_IMPL(ADXViewOscillator_ProgressSet, init)
}

ADXViewOscillator_ProgressSet *create_ADXViewOscillator_ProgressSet_init() {
  J2OBJC_CREATE_IMPL(ADXViewOscillator_ProgressSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewOscillator_ProgressSet)
