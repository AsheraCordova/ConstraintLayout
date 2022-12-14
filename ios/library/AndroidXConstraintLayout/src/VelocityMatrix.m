//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\VelocityMatrix.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "KeyCycleOscillator.h"
#include "SplineSet.h"
#include "VelocityMatrix.h"
#include "java/lang/Math.h"


inline NSString *ADXVelocityMatrix_get_TAG(void);
inline NSString *ADXVelocityMatrix_set_TAG(NSString *value);
static NSString *ADXVelocityMatrix_TAG = @"VelocityMatrix";
J2OBJC_STATIC_FIELD_OBJ(ADXVelocityMatrix, TAG, NSString *)

@implementation ADXVelocityMatrix

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXVelocityMatrix_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)clear {
  mDScaleX_ = mDScaleY_ = mDTranslateX_ = mDTranslateY_ = mDRotate_ = 0;
}

- (void)setRotationVelocityWithADXSplineSet:(ADXSplineSet *)rot
                                  withFloat:(jfloat)position {
  if (rot != nil) {
    mDRotate_ = [rot getSlopeWithFloat:position];
    mRotate_ = [rot getWithFloat:position];
  }
}

- (void)setTranslationVelocityWithADXSplineSet:(ADXSplineSet *)trans_x
                              withADXSplineSet:(ADXSplineSet *)trans_y
                                     withFloat:(jfloat)position {
  if (trans_x != nil) {
    mDTranslateX_ = [trans_x getSlopeWithFloat:position];
  }
  if (trans_y != nil) {
    mDTranslateY_ = [trans_y getSlopeWithFloat:position];
  }
}

- (void)setScaleVelocityWithADXSplineSet:(ADXSplineSet *)scale_x
                        withADXSplineSet:(ADXSplineSet *)scale_y
                               withFloat:(jfloat)position {
  if (scale_x != nil) {
    mDScaleX_ = [scale_x getSlopeWithFloat:position];
  }
  if (scale_y != nil) {
    mDScaleY_ = [scale_y getSlopeWithFloat:position];
  }
}

- (void)setRotationVelocityWithADXKeyCycleOscillator:(ADXKeyCycleOscillator *)osc_r
                                           withFloat:(jfloat)position {
  if (osc_r != nil) {
    mDRotate_ = [osc_r getSlopeWithFloat:position];
  }
}

- (void)setTranslationVelocityWithADXKeyCycleOscillator:(ADXKeyCycleOscillator *)osc_x
                              withADXKeyCycleOscillator:(ADXKeyCycleOscillator *)osc_y
                                              withFloat:(jfloat)position {
  if (osc_x != nil) {
    mDTranslateX_ = [osc_x getSlopeWithFloat:position];
  }
  if (osc_y != nil) {
    mDTranslateY_ = [osc_y getSlopeWithFloat:position];
  }
}

- (void)setScaleVelocityWithADXKeyCycleOscillator:(ADXKeyCycleOscillator *)osc_sx
                        withADXKeyCycleOscillator:(ADXKeyCycleOscillator *)osc_sy
                                        withFloat:(jfloat)position {
  if (osc_sx != nil) {
    mDScaleX_ = [osc_sx getSlopeWithFloat:position];
  }
  if (osc_sy != nil) {
    mDScaleY_ = [osc_sy getSlopeWithFloat:position];
  }
}

- (void)applyTransformWithFloat:(jfloat)locationX
                      withFloat:(jfloat)locationY
                        withInt:(jint)width
                        withInt:(jint)height
                 withFloatArray:(IOSFloatArray *)mAnchorDpDt {
  jfloat dx = IOSFloatArray_Get(nil_chk(mAnchorDpDt), 0);
  jfloat dy = IOSFloatArray_Get(mAnchorDpDt, 1);
  jfloat offx = 2 * (locationX - 0.5f);
  jfloat offy = 2 * (locationY - 0.5f);
  JrePlusAssignFloatF(&dx, mDTranslateX_);
  JrePlusAssignFloatF(&dy, mDTranslateY_);
  JrePlusAssignFloatF(&dx, offx * mDScaleX_);
  JrePlusAssignFloatF(&dy, offy * mDScaleY_);
  jfloat r = (jfloat) JavaLangMath_toRadiansWithDouble_(mRotate_);
  jfloat dr = (jfloat) JavaLangMath_toRadiansWithDouble_(mDRotate_);
  JrePlusAssignFloatF(&dx, dr * (jfloat) (-width * offx * JavaLangMath_sinWithDouble_(r) - height * offy * JavaLangMath_cosWithDouble_(r)));
  JrePlusAssignFloatF(&dy, dr * (jfloat) (width * offx * JavaLangMath_cosWithDouble_(r) - height * offy * JavaLangMath_sinWithDouble_(r)));
  *IOSFloatArray_GetRef(mAnchorDpDt, 0) = dx;
  *IOSFloatArray_GetRef(mAnchorDpDt, 1) = dy;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(clear);
  methods[2].selector = @selector(setRotationVelocityWithADXSplineSet:withFloat:);
  methods[3].selector = @selector(setTranslationVelocityWithADXSplineSet:withADXSplineSet:withFloat:);
  methods[4].selector = @selector(setScaleVelocityWithADXSplineSet:withADXSplineSet:withFloat:);
  methods[5].selector = @selector(setRotationVelocityWithADXKeyCycleOscillator:withFloat:);
  methods[6].selector = @selector(setTranslationVelocityWithADXKeyCycleOscillator:withADXKeyCycleOscillator:withFloat:);
  methods[7].selector = @selector(setScaleVelocityWithADXKeyCycleOscillator:withADXKeyCycleOscillator:withFloat:);
  methods[8].selector = @selector(applyTransformWithFloat:withFloat:withInt:withInt:withFloatArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mDScaleX_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mDScaleY_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mDTranslateX_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mDTranslateY_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mDRotate_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mRotate_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0xa, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "setRotationVelocity", "LADXSplineSet;F", "setTranslationVelocity", "LADXSplineSet;LADXSplineSet;F", "setScaleVelocity", "LADXKeyCycleOscillator;F", "LADXKeyCycleOscillator;LADXKeyCycleOscillator;F", "applyTransform", "FFII[F", &ADXVelocityMatrix_TAG };
  static const J2ObjcClassInfo _ADXVelocityMatrix = { "VelocityMatrix", "androidx.constraintlayout.core.motion.utils", ptrTable, methods, fields, 7, 0x1, 9, 7, -1, -1, -1, -1, -1 };
  return &_ADXVelocityMatrix;
}

@end

void ADXVelocityMatrix_init(ADXVelocityMatrix *self) {
  NSObject_init(self);
}

ADXVelocityMatrix *new_ADXVelocityMatrix_init() {
  J2OBJC_NEW_IMPL(ADXVelocityMatrix, init)
}

ADXVelocityMatrix *create_ADXVelocityMatrix_init() {
  J2OBJC_CREATE_IMPL(ADXVelocityMatrix, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXVelocityMatrix)
