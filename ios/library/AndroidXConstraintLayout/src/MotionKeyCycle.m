//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\key\MotionKeyCycle.java
//

#include "CustomVariable.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "KeyCycleOscillator.h"
#include "MotionKey.h"
#include "MotionKeyCycle.h"
#include "TypedValues.h"
#include "Utils.h"
#include "java/io/PrintStream.h"
#include "java/lang/Float.h"
#include "java/lang/System.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"


@interface ADXMotionKeyCycle () {
 @public
  NSString *mTransitionEasing_;
  jint mCurveFit_;
  jint mWaveShape_;
  NSString *mCustomWaveShape_;
  jfloat mWavePeriod_;
  jfloat mWaveOffset_;
  jfloat mWavePhase_;
  jfloat mProgress_;
  jfloat mAlpha_;
  jfloat mElevation_;
  jfloat mRotation_;
  jfloat mTransitionPathRotate_;
  jfloat mRotationX_;
  jfloat mRotationY_;
  jfloat mScaleX_;
  jfloat mScaleY_;
  jfloat mTranslationX_;
  jfloat mTranslationY_;
  jfloat mTranslationZ_;
}

@end

J2OBJC_FIELD_SETTER(ADXMotionKeyCycle, mTransitionEasing_, NSString *)
J2OBJC_FIELD_SETTER(ADXMotionKeyCycle, mCustomWaveShape_, NSString *)

inline NSString *ADXMotionKeyCycle_get_TAG(void);
static NSString *ADXMotionKeyCycle_TAG = @"KeyCycle";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXMotionKeyCycle, TAG, NSString *)

NSString *ADXMotionKeyCycle_NAME = @"KeyCycle";
NSString *ADXMotionKeyCycle_WAVE_PERIOD = @"wavePeriod";
NSString *ADXMotionKeyCycle_WAVE_OFFSET = @"waveOffset";
NSString *ADXMotionKeyCycle_WAVE_PHASE = @"wavePhase";
NSString *ADXMotionKeyCycle_WAVE_SHAPE = @"waveShape";

@implementation ADXMotionKeyCycle

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXMotionKeyCycle_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)getAttributeNamesWithJavaUtilHashSet:(JavaUtilHashSet *)attributes {
  if (!JavaLangFloat_isNaNWithFloat_(mAlpha_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_ALPHA];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mElevation_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_ELEVATION];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotation_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_ROTATION_Z];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotationX_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_ROTATION_X];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotationY_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_ROTATION_Y];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mScaleX_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_SCALE_X];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mScaleY_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_SCALE_Y];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTransitionPathRotate_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_PATH_ROTATE];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationX_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_TRANSLATION_X];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationY_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_TRANSLATION_Y];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationZ_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXTypedValues_Cycle_S_TRANSLATION_Z];
  }
  if ([((JavaUtilHashMap *) nil_chk(mCustom_)) size] > 0) {
    for (NSString * __strong s in nil_chk([((JavaUtilHashMap *) nil_chk(mCustom_)) keySet])) {
      [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:JreStrcat("$C$", ADXTypedValues_S_CUSTOM, ',', s)];
    }
  }
}

- (void)addValuesWithJavaUtilHashMap:(JavaUtilHashMap *)splines {
}

- (jboolean)setValueWithInt:(jint)type
                    withInt:(jint)value {
  {
    jboolean ret;
    switch (type) {
      case ADXTypedValues_Cycle_TYPE_CURVE_FIT:
      mCurveFit_ = value;
      return true;
      case ADXTypedValues_Cycle_TYPE_WAVE_SHAPE:
      mWaveShape_ = value;
      return true;
      default:
      ret = [self setValueWithInt:type withFloat:(jfloat) value];
      if (ret) {
        return true;
      }
      return [super setValueWithInt:type withInt:value];
    }
  }
}

- (jboolean)setValueWithInt:(jint)type
               withNSString:(NSString *)value {
  switch (type) {
    case ADXTypedValues_Cycle_TYPE_EASING:
    JreStrongAssign(&mTransitionEasing_, value);
    return true;
    case ADXTypedValues_Cycle_TYPE_CUSTOM_WAVE_SHAPE:
    JreStrongAssign(&mCustomWaveShape_, value);
    return true;
    default:
    return [super setValueWithInt:type withNSString:value];
  }
}

- (jboolean)setValueWithInt:(jint)type
                  withFloat:(jfloat)value {
  switch (type) {
    case ADXTypedValues_Cycle_TYPE_ALPHA:
    mAlpha_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_TRANSLATION_X:
    mTranslationX_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_TRANSLATION_Y:
    mTranslationY_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_TRANSLATION_Z:
    mTranslationZ_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_ELEVATION:
    mElevation_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_ROTATION_X:
    mRotationX_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_ROTATION_Y:
    mRotationY_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_ROTATION_Z:
    mRotation_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_SCALE_X:
    mScaleX_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_SCALE_Y:
    mScaleY_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_PROGRESS:
    mProgress_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_PATH_ROTATE:
    mTransitionPathRotate_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_WAVE_PERIOD:
    mWavePeriod_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_WAVE_OFFSET:
    mWaveOffset_ = value;
    break;
    case ADXTypedValues_Cycle_TYPE_WAVE_PHASE:
    mWavePhase_ = value;
    break;
    default:
    return [super setValueWithInt:type withFloat:value];
  }
  return true;
}

- (jfloat)getValueWithNSString:(NSString *)key {
  switch (JreIndexOfStr(key, (id[]){ ADXTypedValues_Cycle_S_ALPHA, ADXTypedValues_Cycle_S_ELEVATION, ADXTypedValues_Cycle_S_ROTATION_Z, ADXTypedValues_Cycle_S_ROTATION_X, ADXTypedValues_Cycle_S_ROTATION_Y, ADXTypedValues_Cycle_S_PATH_ROTATE, ADXTypedValues_Cycle_S_SCALE_X, ADXTypedValues_Cycle_S_SCALE_Y, ADXTypedValues_Cycle_S_TRANSLATION_X, ADXTypedValues_Cycle_S_TRANSLATION_Y, ADXTypedValues_Cycle_S_TRANSLATION_Z, ADXTypedValues_Cycle_S_WAVE_OFFSET, ADXTypedValues_Cycle_S_WAVE_PHASE, ADXTypedValues_Cycle_S_PROGRESS }, 14)) {
    case 0:
    return mAlpha_;
    case 1:
    return mElevation_;
    case 2:
    return mRotation_;
    case 3:
    return mRotationX_;
    case 4:
    return mRotationY_;
    case 5:
    return mTransitionPathRotate_;
    case 6:
    return mScaleX_;
    case 7:
    return mScaleY_;
    case 8:
    return mTranslationX_;
    case 9:
    return mTranslationY_;
    case 10:
    return mTranslationZ_;
    case 11:
    return mWaveOffset_;
    case 12:
    return mWavePhase_;
    case 13:
    return mProgress_;
    default:
    return JavaLangFloat_NaN;
  }
}

- (ADXMotionKey *)java_clone {
  return nil;
}

- (jint)getIdWithNSString:(NSString *)name {
  switch (JreIndexOfStr(name, (id[]){ ADXTypedValues_Cycle_S_CURVE_FIT, ADXTypedValues_Cycle_S_VISIBILITY, ADXTypedValues_Cycle_S_ALPHA, ADXTypedValues_Cycle_S_TRANSLATION_X, ADXTypedValues_Cycle_S_TRANSLATION_Y, ADXTypedValues_Cycle_S_TRANSLATION_Z, ADXTypedValues_Cycle_S_ROTATION_X, ADXTypedValues_Cycle_S_ROTATION_Y, ADXTypedValues_Cycle_S_ROTATION_Z, ADXTypedValues_Cycle_S_SCALE_X, ADXTypedValues_Cycle_S_SCALE_Y, ADXTypedValues_Cycle_S_PIVOT_X, ADXTypedValues_Cycle_S_PIVOT_Y, ADXTypedValues_Cycle_S_PROGRESS, ADXTypedValues_Cycle_S_PATH_ROTATE, ADXTypedValues_Cycle_S_EASING, ADXTypedValues_Cycle_S_WAVE_PERIOD, ADXTypedValues_Cycle_S_WAVE_SHAPE, ADXTypedValues_Cycle_S_WAVE_PHASE, ADXTypedValues_Cycle_S_WAVE_OFFSET, ADXTypedValues_Cycle_S_CUSTOM_WAVE_SHAPE }, 21)) {
    case 0:
    return ADXTypedValues_Cycle_TYPE_CURVE_FIT;
    case 1:
    return ADXTypedValues_Cycle_TYPE_VISIBILITY;
    case 2:
    return ADXTypedValues_Cycle_TYPE_ALPHA;
    case 3:
    return ADXTypedValues_Cycle_TYPE_TRANSLATION_X;
    case 4:
    return ADXTypedValues_Cycle_TYPE_TRANSLATION_Y;
    case 5:
    return ADXTypedValues_Cycle_TYPE_TRANSLATION_Z;
    case 6:
    return ADXTypedValues_Cycle_TYPE_ROTATION_X;
    case 7:
    return ADXTypedValues_Cycle_TYPE_ROTATION_Y;
    case 8:
    return ADXTypedValues_Cycle_TYPE_ROTATION_Z;
    case 9:
    return ADXTypedValues_Cycle_TYPE_SCALE_X;
    case 10:
    return ADXTypedValues_Cycle_TYPE_SCALE_Y;
    case 11:
    return ADXTypedValues_Cycle_TYPE_PIVOT_X;
    case 12:
    return ADXTypedValues_Cycle_TYPE_PIVOT_Y;
    case 13:
    return ADXTypedValues_Cycle_TYPE_PROGRESS;
    case 14:
    return ADXTypedValues_Cycle_TYPE_PATH_ROTATE;
    case 15:
    return ADXTypedValues_Cycle_TYPE_EASING;
    case 16:
    return ADXTypedValues_Cycle_TYPE_WAVE_PERIOD;
    case 17:
    return ADXTypedValues_Cycle_TYPE_WAVE_SHAPE;
    case 18:
    return ADXTypedValues_Cycle_TYPE_WAVE_PHASE;
    case 19:
    return ADXTypedValues_Cycle_TYPE_WAVE_OFFSET;
    case 20:
    return ADXTypedValues_Cycle_TYPE_CUSTOM_WAVE_SHAPE;
  }
  return -1;
}

- (void)addCycleValuesWithJavaUtilHashMap:(JavaUtilHashMap *)oscSet {
  for (NSString * __strong key in nil_chk([((JavaUtilHashMap *) nil_chk(oscSet)) keySet])) {
    if ([((NSString *) nil_chk(key)) java_hasPrefix:ADXTypedValues_S_CUSTOM]) {
      NSString *customKey = [key java_substring:[((NSString *) nil_chk(ADXTypedValues_S_CUSTOM)) java_length] + 1];
      ADXCustomVariable *cValue = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCustom_)) getWithId:customKey]);
      if (cValue == nil || [cValue getType] != ADXTypedValues_Custom_TYPE_FLOAT) {
        continue;
      }
      ADXKeyCycleOscillator *osc = JreRetainedLocalValue([oscSet getWithId:key]);
      if (osc == nil) {
        continue;
      }
      [osc setPointWithInt:mFramePosition_ withInt:mWaveShape_ withNSString:mCustomWaveShape_ withInt:-1 withFloat:mWavePeriod_ withFloat:mWaveOffset_ withFloat:mWavePhase_ withFloat:[cValue getValueToInterpolate] withId:cValue];
      continue;
    }
    jfloat value = [self getValueWithNSString:key];
    if (JavaLangFloat_isNaNWithFloat_(value)) {
      continue;
    }
    ADXKeyCycleOscillator *osc = JreRetainedLocalValue([oscSet getWithId:key]);
    if (osc == nil) {
      continue;
    }
    [osc setPointWithInt:mFramePosition_ withInt:mWaveShape_ withNSString:mCustomWaveShape_ withInt:-1 withFloat:mWavePeriod_ withFloat:mWaveOffset_ withFloat:mWavePhase_ withFloat:value];
  }
}

- (void)dump {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I$F$F$F$FC", @"MotionKeyCycle{mWaveShape=", mWaveShape_, @", mWavePeriod=", mWavePeriod_, @", mWaveOffset=", mWaveOffset_, @", mWavePhase=", mWavePhase_, @", mRotation=", mRotation_, '}')];
}

- (void)printAttributes {
  JavaUtilHashSet *nameSet = create_JavaUtilHashSet_init();
  [self getAttributeNamesWithJavaUtilHashSet:nameSet];
  ADXUtils_logWithNSString_(JreStrcat("$I$", @" ------------- ", mFramePosition_, @" -------------"));
  ADXUtils_logWithNSString_(JreStrcat("$I$F$F$FC", @"MotionKeyCycle{Shape=", mWaveShape_, @", Period=", mWavePeriod_, @", Offset=", mWaveOffset_, @", Phase=", mWavePhase_, '}'));
  IOSObjectArray *names = [nameSet toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(names))->size_; i++) {
    jint id_ = ADXTypedValues_Attributes_getIdWithNSString_(IOSObjectArray_Get(names, i));
    ADXUtils_logWithNSString_(JreStrcat("$CF", IOSObjectArray_Get(names, i), ':', [self getValueWithNSString:IOSObjectArray_Get(names, i)]));
  }
}

- (void)dealloc {
  RELEASE_(mTransitionEasing_);
  RELEASE_(mCustomWaveShape_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, 5, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 9, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LADXMotionKey;", 0x1, 12, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 13, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 4, -1, 15, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getAttributeNamesWithJavaUtilHashSet:);
  methods[2].selector = @selector(addValuesWithJavaUtilHashMap:);
  methods[3].selector = @selector(setValueWithInt:withInt:);
  methods[4].selector = @selector(setValueWithInt:withNSString:);
  methods[5].selector = @selector(setValueWithInt:withFloat:);
  methods[6].selector = @selector(getValueWithNSString:);
  methods[7].selector = @selector(java_clone);
  methods[8].selector = @selector(getIdWithNSString:);
  methods[9].selector = @selector(addCycleValuesWithJavaUtilHashMap:);
  methods[10].selector = @selector(dump);
  methods[11].selector = @selector(printAttributes);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "NAME", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 17, -1, -1 },
    { "WAVE_PERIOD", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "WAVE_OFFSET", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "WAVE_PHASE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "WAVE_SHAPE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "SHAPE_SIN_WAVE", "I", .constantValue.asInt = ADXMotionKeyCycle_SHAPE_SIN_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_SQUARE_WAVE", "I", .constantValue.asInt = ADXMotionKeyCycle_SHAPE_SQUARE_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_TRIANGLE_WAVE", "I", .constantValue.asInt = ADXMotionKeyCycle_SHAPE_TRIANGLE_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_SAW_WAVE", "I", .constantValue.asInt = ADXMotionKeyCycle_SHAPE_SAW_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_REVERSE_SAW_WAVE", "I", .constantValue.asInt = ADXMotionKeyCycle_SHAPE_REVERSE_SAW_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_COS_WAVE", "I", .constantValue.asInt = ADXMotionKeyCycle_SHAPE_COS_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_BOUNCE", "I", .constantValue.asInt = ADXMotionKeyCycle_SHAPE_BOUNCE, 0x19, -1, -1, -1, -1 },
    { "mTransitionEasing_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCurveFit_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mWaveShape_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCustomWaveShape_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mWavePeriod_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mWaveOffset_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mWavePhase_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mProgress_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mAlpha_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mElevation_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRotation_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTransitionPathRotate_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRotationX_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRotationY_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mScaleX_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mScaleY_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTranslationX_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTranslationY_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTranslationZ_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "KEY_TYPE", "I", .constantValue.asInt = ADXMotionKeyCycle_KEY_TYPE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getAttributeNames", "LJavaUtilHashSet;", "(Ljava/util/HashSet<Ljava/lang/String;>;)V", "addValues", "LJavaUtilHashMap;", "(Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/SplineSet;>;)V", "setValue", "II", "ILNSString;", "IF", "getValue", "LNSString;", "clone", "getId", "addCycleValues", "(Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;>;)V", &ADXMotionKeyCycle_TAG, &ADXMotionKeyCycle_NAME, &ADXMotionKeyCycle_WAVE_PERIOD, &ADXMotionKeyCycle_WAVE_OFFSET, &ADXMotionKeyCycle_WAVE_PHASE, &ADXMotionKeyCycle_WAVE_SHAPE };
  static const J2ObjcClassInfo _ADXMotionKeyCycle = { "MotionKeyCycle", "androidx.constraintlayout.core.motion.key", ptrTable, methods, fields, 7, 0x1, 12, 33, -1, -1, -1, -1, -1 };
  return &_ADXMotionKeyCycle;
}

@end

void ADXMotionKeyCycle_init(ADXMotionKeyCycle *self) {
  ADXMotionKey_init(self);
  JreStrongAssign(&self->mTransitionEasing_, nil);
  self->mCurveFit_ = 0;
  self->mWaveShape_ = -1;
  JreStrongAssign(&self->mCustomWaveShape_, nil);
  self->mWavePeriod_ = JavaLangFloat_NaN;
  self->mWaveOffset_ = 0;
  self->mWavePhase_ = 0;
  self->mProgress_ = JavaLangFloat_NaN;
  self->mAlpha_ = JavaLangFloat_NaN;
  self->mElevation_ = JavaLangFloat_NaN;
  self->mRotation_ = JavaLangFloat_NaN;
  self->mTransitionPathRotate_ = JavaLangFloat_NaN;
  self->mRotationX_ = JavaLangFloat_NaN;
  self->mRotationY_ = JavaLangFloat_NaN;
  self->mScaleX_ = JavaLangFloat_NaN;
  self->mScaleY_ = JavaLangFloat_NaN;
  self->mTranslationX_ = JavaLangFloat_NaN;
  self->mTranslationY_ = JavaLangFloat_NaN;
  self->mTranslationZ_ = JavaLangFloat_NaN;
  {
    self->mType_ = ADXMotionKeyCycle_KEY_TYPE;
    JreStrongAssignAndConsume(&self->mCustom_, new_JavaUtilHashMap_init());
  }
}

ADXMotionKeyCycle *new_ADXMotionKeyCycle_init() {
  J2OBJC_NEW_IMPL(ADXMotionKeyCycle, init)
}

ADXMotionKeyCycle *create_ADXMotionKeyCycle_init() {
  J2OBJC_CREATE_IMPL(ADXMotionKeyCycle, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXMotionKeyCycle)