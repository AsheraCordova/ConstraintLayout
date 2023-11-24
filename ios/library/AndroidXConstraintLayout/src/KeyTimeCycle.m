//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\KeyTimeCycle.java
//

#include "AttributeSet.h"
#include "ConstraintAttribute.h"
#include "Context.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "Key.h"
#include "KeyTimeCycle.h"
#include "Log.h"
#include "Oscillator.h"
#include "ViewTimeCycle.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"


@interface ADXKeyTimeCycle () {
 @public
  NSString *mTransitionEasing_;
  jint mCurveFit_;
  jfloat mAlpha_;
  jfloat mElevation_;
  jfloat mRotation_;
  jfloat mRotationX_;
  jfloat mRotationY_;
  jfloat mTransitionPathRotate_;
  jfloat mScaleX_;
  jfloat mScaleY_;
  jfloat mTranslationX_;
  jfloat mTranslationY_;
  jfloat mTranslationZ_;
  jfloat mProgress_;
  jint mWaveShape_;
  NSString *mCustomWaveShape_;
  jfloat mWavePeriod_;
  jfloat mWaveOffset_;
}

@end

J2OBJC_FIELD_SETTER(ADXKeyTimeCycle, mTransitionEasing_, NSString *)
J2OBJC_FIELD_SETTER(ADXKeyTimeCycle, mCustomWaveShape_, NSString *)

inline NSString *ADXKeyTimeCycle_get_TAG(void);
static NSString *ADXKeyTimeCycle_TAG = @"KeyTimeCycle";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTimeCycle, TAG, NSString *)

@interface ADXKeyTimeCycle_Loader : NSObject

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXKeyTimeCycle_Loader)

__attribute__((unused)) static void ADXKeyTimeCycle_Loader_init(ADXKeyTimeCycle_Loader *self);

__attribute__((unused)) static ADXKeyTimeCycle_Loader *new_ADXKeyTimeCycle_Loader_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADXKeyTimeCycle_Loader *create_ADXKeyTimeCycle_Loader_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXKeyTimeCycle_Loader)

NSString *ADXKeyTimeCycle_NAME = @"KeyTimeCycle";
NSString *ADXKeyTimeCycle_WAVE_PERIOD = @"wavePeriod";
NSString *ADXKeyTimeCycle_WAVE_OFFSET = @"waveOffset";
NSString *ADXKeyTimeCycle_WAVE_SHAPE = @"waveShape";

@implementation ADXKeyTimeCycle

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXKeyTimeCycle_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)load__WithADContext:(ADContext *)context
         withADAttributeSet:(ADAttributeSet *)attrs {
}

- (void)getAttributeNamesWithJavaUtilHashSet:(JavaUtilHashSet *)attributes {
  if (!JavaLangFloat_isNaNWithFloat_(mAlpha_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_ALPHA];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mElevation_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_ELEVATION];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotation_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_ROTATION];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotationX_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_ROTATION_X];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotationY_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_ROTATION_Y];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationX_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_TRANSLATION_X];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationY_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_TRANSLATION_Y];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationZ_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_TRANSLATION_Z];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTransitionPathRotate_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_TRANSITION_PATH_ROTATE];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mScaleX_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_SCALE_X];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mScaleY_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_SCALE_Y];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mProgress_)) {
    [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:ADXKey_PROGRESS];
  }
  if ([((JavaUtilHashMap *) nil_chk(mCustomConstraints_)) size] > 0) {
    for (NSString * __strong s in nil_chk([((JavaUtilHashMap *) nil_chk(mCustomConstraints_)) keySet])) {
      [((JavaUtilHashSet *) nil_chk(attributes)) addWithId:JreStrcat("$C$", ADXKey_CUSTOM, ',', s)];
    }
  }
}

- (void)setInterpolationWithJavaUtilHashMap:(JavaUtilHashMap *)interpolation {
  if (mCurveFit_ == -1) {
    return;
  }
  if (!JavaLangFloat_isNaNWithFloat_(mAlpha_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_ALPHA withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mElevation_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_ELEVATION withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotation_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_ROTATION withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotationX_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_ROTATION_X withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mRotationY_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_ROTATION_Y withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationX_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_TRANSLATION_X withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationY_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_TRANSLATION_Y withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTranslationZ_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_TRANSLATION_Z withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mTransitionPathRotate_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_TRANSITION_PATH_ROTATE withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mScaleX_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_SCALE_X withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mScaleX_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_SCALE_Y withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if (!JavaLangFloat_isNaNWithFloat_(mProgress_)) {
    [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:ADXKey_PROGRESS withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
  }
  if ([((JavaUtilHashMap *) nil_chk(mCustomConstraints_)) size] > 0) {
    for (NSString * __strong s in nil_chk([((JavaUtilHashMap *) nil_chk(mCustomConstraints_)) keySet])) {
      [((JavaUtilHashMap *) nil_chk(interpolation)) putWithId:JreStrcat("$C$", ADXKey_CUSTOM, ',', s) withId:JavaLangInteger_valueOfWithInt_(mCurveFit_)];
    }
  }
}

- (void)addValuesWithJavaUtilHashMap:(JavaUtilHashMap *)splines {
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(@" KeyTimeCycles do not support SplineSet");
}

- (void)addTimeValuesWithJavaUtilHashMap:(JavaUtilHashMap *)splines {
  for (NSString * __strong s in nil_chk([((JavaUtilHashMap *) nil_chk(splines)) keySet])) {
    ADXViewTimeCycle *splineSet = JreRetainedLocalValue([splines getWithId:s]);
    if (splineSet == nil) {
      continue;
    }
    if ([((NSString *) nil_chk(s)) java_hasPrefix:ADXKey_CUSTOM]) {
      NSString *cKey = [s java_substring:[((NSString *) nil_chk(ADXKey_CUSTOM)) java_length] + 1];
      ADXConstraintAttribute *cValue = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCustomConstraints_)) getWithId:cKey]);
      if (cValue != nil) {
        [((ADXViewTimeCycle_CustomSet *) cast_chk(splineSet, [ADXViewTimeCycle_CustomSet class])) setPointWithInt:mFramePosition_ withADXConstraintAttribute:cValue withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      continue;
    }
    switch (JreIndexOfStr(s, (id[]){ ADXKey_ALPHA, ADXKey_ELEVATION, ADXKey_ROTATION, ADXKey_ROTATION_X, ADXKey_ROTATION_Y, ADXKey_TRANSITION_PATH_ROTATE, ADXKey_SCALE_X, ADXKey_SCALE_Y, ADXKey_TRANSLATION_X, ADXKey_TRANSLATION_Y, ADXKey_TRANSLATION_Z, ADXKey_PROGRESS }, 12)) {
      case 0:
      if (!JavaLangFloat_isNaNWithFloat_(mAlpha_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mAlpha_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 1:
      if (!JavaLangFloat_isNaNWithFloat_(mElevation_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mElevation_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 2:
      if (!JavaLangFloat_isNaNWithFloat_(mRotation_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mRotation_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 3:
      if (!JavaLangFloat_isNaNWithFloat_(mRotationX_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mRotationX_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 4:
      if (!JavaLangFloat_isNaNWithFloat_(mRotationY_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mRotationY_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 5:
      if (!JavaLangFloat_isNaNWithFloat_(mTransitionPathRotate_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mTransitionPathRotate_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 6:
      if (!JavaLangFloat_isNaNWithFloat_(mScaleX_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mScaleX_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 7:
      if (!JavaLangFloat_isNaNWithFloat_(mScaleY_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mScaleY_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 8:
      if (!JavaLangFloat_isNaNWithFloat_(mTranslationX_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mTranslationX_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 9:
      if (!JavaLangFloat_isNaNWithFloat_(mTranslationY_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mTranslationY_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 10:
      if (!JavaLangFloat_isNaNWithFloat_(mTranslationZ_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mTranslationZ_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      case 11:
      if (!JavaLangFloat_isNaNWithFloat_(mProgress_)) {
        [splineSet setPointWithInt:mFramePosition_ withFloat:mProgress_ withFloat:mWavePeriod_ withInt:mWaveShape_ withFloat:mWaveOffset_];
      }
      break;
      default:
      ADLog_eWithNSString_withNSString_(@"KeyTimeCycles", JreStrcat("$$C", @"UNKNOWN addValues \"", s, '"'));
    }
  }
}

- (void)setValueWithNSString:(NSString *)tag
                      withId:(id)value {
  switch (JreIndexOfStr(tag, (id[]){ ADXKey_ALPHA, ADXKey_CURVEFIT, ADXKey_ELEVATION, ADXKey_MOTIONPROGRESS, ADXKey_ROTATION, ADXKey_ROTATION_X, ADXKey_ROTATION_Y, ADXKey_SCALE_X, ADXKey_SCALE_Y, ADXKey_TRANSITIONEASING, ADXKey_TRANSITION_PATH_ROTATE, ADXKey_TRANSLATION_X, ADXKey_TRANSLATION_Y, ADXKey_TRANSLATION_Z, ADXKeyTimeCycle_WAVE_PERIOD, ADXKeyTimeCycle_WAVE_OFFSET, ADXKeyTimeCycle_WAVE_SHAPE }, 17)) {
    case 0:
    mAlpha_ = [self toFloatWithId:value];
    break;
    case 1:
    mCurveFit_ = [self toIntWithId:value];
    break;
    case 2:
    mElevation_ = [self toFloatWithId:value];
    break;
    case 3:
    mProgress_ = [self toFloatWithId:value];
    break;
    case 4:
    mRotation_ = [self toFloatWithId:value];
    break;
    case 5:
    mRotationX_ = [self toFloatWithId:value];
    break;
    case 6:
    mRotationY_ = [self toFloatWithId:value];
    break;
    case 7:
    mScaleX_ = [self toFloatWithId:value];
    break;
    case 8:
    mScaleY_ = [self toFloatWithId:value];
    break;
    case 9:
    JreStrongAssign(&mTransitionEasing_, [nil_chk(value) description]);
    break;
    case 10:
    mTransitionPathRotate_ = [self toFloatWithId:value];
    break;
    case 11:
    mTranslationX_ = [self toFloatWithId:value];
    break;
    case 12:
    mTranslationY_ = [self toFloatWithId:value];
    break;
    case 13:
    mTranslationZ_ = [self toFloatWithId:value];
    break;
    case 14:
    mWavePeriod_ = [self toFloatWithId:value];
    break;
    case 15:
    mWaveOffset_ = [self toFloatWithId:value];
    break;
    case 16:
    if ([value isKindOfClass:[JavaLangInteger class]]) {
      mWaveShape_ = [self toIntWithId:value];
    }
    else {
      mWaveShape_ = ADXOscillator_CUSTOM;
      JreStrongAssign(&mCustomWaveShape_, [nil_chk(value) description]);
    }
    break;
  }
}

- (ADXKey *)copy__WithADXKey:(ADXKey *)src {
  [super copy__WithADXKey:src];
  ADXKeyTimeCycle *k = (ADXKeyTimeCycle *) cast_chk(src, [ADXKeyTimeCycle class]);
  JreStrongAssign(&mTransitionEasing_, ((ADXKeyTimeCycle *) nil_chk(k))->mTransitionEasing_);
  mCurveFit_ = k->mCurveFit_;
  mWaveShape_ = k->mWaveShape_;
  mWavePeriod_ = k->mWavePeriod_;
  mWaveOffset_ = k->mWaveOffset_;
  mProgress_ = k->mProgress_;
  mAlpha_ = k->mAlpha_;
  mElevation_ = k->mElevation_;
  mRotation_ = k->mRotation_;
  mTransitionPathRotate_ = k->mTransitionPathRotate_;
  mRotationX_ = k->mRotationX_;
  mRotationY_ = k->mRotationY_;
  mScaleX_ = k->mScaleX_;
  mScaleY_ = k->mScaleY_;
  mTranslationX_ = k->mTranslationX_;
  mTranslationY_ = k->mTranslationY_;
  mTranslationZ_ = k->mTranslationZ_;
  return self;
}

- (ADXKey *)java_clone {
  return [create_ADXKeyTimeCycle_init() copy__WithADXKey:self];
}

- (void)dealloc {
  RELEASE_(mTransitionEasing_);
  RELEASE_(mCustomWaveShape_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, 7, -1, -1 },
    { NULL, "V", 0x1, 8, 6, -1, 9, -1, -1 },
    { NULL, "V", 0x1, 10, 6, -1, 11, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LADXKey;", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LADXKey;", 0x1, 16, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(load__WithADContext:withADAttributeSet:);
  methods[2].selector = @selector(getAttributeNamesWithJavaUtilHashSet:);
  methods[3].selector = @selector(setInterpolationWithJavaUtilHashMap:);
  methods[4].selector = @selector(addValuesWithJavaUtilHashMap:);
  methods[5].selector = @selector(addTimeValuesWithJavaUtilHashMap:);
  methods[6].selector = @selector(setValueWithNSString:withId:);
  methods[7].selector = @selector(copy__WithADXKey:);
  methods[8].selector = @selector(java_clone);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NAME", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 17, -1, -1 },
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "WAVE_PERIOD", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "WAVE_OFFSET", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "WAVE_SHAPE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "SHAPE_SIN_WAVE", "I", .constantValue.asInt = ADXKeyTimeCycle_SHAPE_SIN_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_SQUARE_WAVE", "I", .constantValue.asInt = ADXKeyTimeCycle_SHAPE_SQUARE_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_TRIANGLE_WAVE", "I", .constantValue.asInt = ADXKeyTimeCycle_SHAPE_TRIANGLE_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_SAW_WAVE", "I", .constantValue.asInt = ADXKeyTimeCycle_SHAPE_SAW_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_REVERSE_SAW_WAVE", "I", .constantValue.asInt = ADXKeyTimeCycle_SHAPE_REVERSE_SAW_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_COS_WAVE", "I", .constantValue.asInt = ADXKeyTimeCycle_SHAPE_COS_WAVE, 0x19, -1, -1, -1, -1 },
    { "SHAPE_BOUNCE", "I", .constantValue.asInt = ADXKeyTimeCycle_SHAPE_BOUNCE, 0x19, -1, -1, -1, -1 },
    { "mTransitionEasing_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCurveFit_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mAlpha_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mElevation_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRotation_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRotationX_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRotationY_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTransitionPathRotate_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mScaleX_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mScaleY_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTranslationX_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTranslationY_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTranslationZ_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mProgress_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mWaveShape_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCustomWaveShape_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mWavePeriod_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mWaveOffset_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "KEY_TYPE", "I", .constantValue.asInt = ADXKeyTimeCycle_KEY_TYPE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "load", "LADContext;LADAttributeSet;", "getAttributeNames", "LJavaUtilHashSet;", "(Ljava/util/HashSet<Ljava/lang/String;>;)V", "setInterpolation", "LJavaUtilHashMap;", "(Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;)V", "addValues", "(Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/motion/utils/ViewSpline;>;)V", "addTimeValues", "(Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/motion/utils/ViewTimeCycle;>;)V", "setValue", "LNSString;LNSObject;", "copy", "LADXKey;", "clone", &ADXKeyTimeCycle_NAME, &ADXKeyTimeCycle_TAG, &ADXKeyTimeCycle_WAVE_PERIOD, &ADXKeyTimeCycle_WAVE_OFFSET, &ADXKeyTimeCycle_WAVE_SHAPE, "LADXKeyTimeCycle_Loader;" };
  static const J2ObjcClassInfo _ADXKeyTimeCycle = { "KeyTimeCycle", "androidx.constraintlayout.motion.widget", ptrTable, methods, fields, 7, 0x1, 9, 31, -1, 22, -1, -1, -1 };
  return &_ADXKeyTimeCycle;
}

@end

void ADXKeyTimeCycle_init(ADXKeyTimeCycle *self) {
  ADXKey_init(self);
  self->mCurveFit_ = -1;
  self->mAlpha_ = JavaLangFloat_NaN;
  self->mElevation_ = JavaLangFloat_NaN;
  self->mRotation_ = JavaLangFloat_NaN;
  self->mRotationX_ = JavaLangFloat_NaN;
  self->mRotationY_ = JavaLangFloat_NaN;
  self->mTransitionPathRotate_ = JavaLangFloat_NaN;
  self->mScaleX_ = JavaLangFloat_NaN;
  self->mScaleY_ = JavaLangFloat_NaN;
  self->mTranslationX_ = JavaLangFloat_NaN;
  self->mTranslationY_ = JavaLangFloat_NaN;
  self->mTranslationZ_ = JavaLangFloat_NaN;
  self->mProgress_ = JavaLangFloat_NaN;
  self->mWaveShape_ = 0;
  JreStrongAssign(&self->mCustomWaveShape_, nil);
  self->mWavePeriod_ = JavaLangFloat_NaN;
  self->mWaveOffset_ = 0;
  {
    self->mType_ = ADXKeyTimeCycle_KEY_TYPE;
    JreStrongAssignAndConsume(&self->mCustomConstraints_, new_JavaUtilHashMap_init());
  }
}

ADXKeyTimeCycle *new_ADXKeyTimeCycle_init() {
  J2OBJC_NEW_IMPL(ADXKeyTimeCycle, init)
}

ADXKeyTimeCycle *create_ADXKeyTimeCycle_init() {
  J2OBJC_CREATE_IMPL(ADXKeyTimeCycle, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXKeyTimeCycle)

@implementation ADXKeyTimeCycle_Loader

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXKeyTimeCycle_Loader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADXKeyTimeCycle;" };
  static const J2ObjcClassInfo _ADXKeyTimeCycle_Loader = { "Loader", "androidx.constraintlayout.motion.widget", ptrTable, methods, NULL, 7, 0xa, 1, 0, 0, -1, -1, -1, -1 };
  return &_ADXKeyTimeCycle_Loader;
}

@end

void ADXKeyTimeCycle_Loader_init(ADXKeyTimeCycle_Loader *self) {
  NSObject_init(self);
}

ADXKeyTimeCycle_Loader *new_ADXKeyTimeCycle_Loader_init() {
  J2OBJC_NEW_IMPL(ADXKeyTimeCycle_Loader, init)
}

ADXKeyTimeCycle_Loader *create_ADXKeyTimeCycle_Loader_init() {
  J2OBJC_CREATE_IMPL(ADXKeyTimeCycle_Loader, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXKeyTimeCycle_Loader)
