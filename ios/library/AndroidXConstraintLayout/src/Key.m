//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\Key.java
//

#include "AttributeSet.h"
#include "Context.h"
#include "J2ObjC_source.h"
#include "Key.h"
#include "java/lang/Boolean.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"


jint ADXKey_UNSET = -1;
NSString *ADXKey_ALPHA = @"alpha";
NSString *ADXKey_ELEVATION = @"elevation";
NSString *ADXKey_ROTATION = @"rotation";
NSString *ADXKey_ROTATION_X = @"rotationX";
NSString *ADXKey_ROTATION_Y = @"rotationY";
NSString *ADXKey_PIVOT_X = @"transformPivotX";
NSString *ADXKey_PIVOT_Y = @"transformPivotY";
NSString *ADXKey_TRANSITION_PATH_ROTATE = @"transitionPathRotate";
NSString *ADXKey_SCALE_X = @"scaleX";
NSString *ADXKey_SCALE_Y = @"scaleY";
NSString *ADXKey_WAVE_PERIOD = @"wavePeriod";
NSString *ADXKey_WAVE_OFFSET = @"waveOffset";
NSString *ADXKey_WAVE_PHASE = @"wavePhase";
NSString *ADXKey_WAVE_VARIES_BY = @"waveVariesBy";
NSString *ADXKey_TRANSLATION_X = @"translationX";
NSString *ADXKey_TRANSLATION_Y = @"translationY";
NSString *ADXKey_TRANSLATION_Z = @"translationZ";
NSString *ADXKey_PROGRESS = @"progress";
NSString *ADXKey_CUSTOM = @"CUSTOM";
NSString *ADXKey_CURVEFIT = @"curveFit";
NSString *ADXKey_MOTIONPROGRESS = @"motionProgress";
NSString *ADXKey_TRANSITIONEASING = @"transitionEasing";
NSString *ADXKey_VISIBILITY = @"visibility";

@implementation ADXKey

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXKey_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)load__WithADContext:(ADContext *)context
         withADAttributeSet:(ADAttributeSet *)attrs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)getAttributeNamesWithJavaUtilHashSet:(JavaUtilHashSet *)attributes {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jboolean)matchesWithNSString:(NSString *)constraintTag {
  if (mTargetString_ == nil || constraintTag == nil) return false;
  return [constraintTag java_matches:mTargetString_];
}

- (void)addValuesWithJavaUtilHashMap:(JavaUtilHashMap *)splines {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setValueWithNSString:(NSString *)tag
                      withId:(id)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jfloat)toFloatWithId:(id)value {
  return ([value isKindOfClass:[JavaLangFloat class]]) ? [((JavaLangFloat *) nil_chk((JavaLangFloat *) cast_chk(value, [JavaLangFloat class]))) floatValue] : JavaLangFloat_parseFloatWithNSString_([nil_chk(value) description]);
}

- (jint)toIntWithId:(id)value {
  return ([value isKindOfClass:[JavaLangInteger class]]) ? [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(value, [JavaLangInteger class]))) intValue] : JavaLangInteger_parseIntWithNSString_([nil_chk(value) description]);
}

- (jboolean)toBooleanWithId:(id)value {
  return ([value isKindOfClass:[JavaLangBoolean class]]) ? [((JavaLangBoolean *) nil_chk((JavaLangBoolean *) cast_chk(value, [JavaLangBoolean class]))) booleanValue] : JavaLangBoolean_parseBooleanWithNSString_([nil_chk(value) description]);
}

- (void)setInterpolationWithJavaUtilHashMap:(JavaUtilHashMap *)interpolation {
}

- (ADXKey *)copy__WithADXKey:(ADXKey *)src {
  mFramePosition_ = ((ADXKey *) nil_chk(src))->mFramePosition_;
  mTargetId_ = src->mTargetId_;
  JreStrongAssign(&mTargetString_, src->mTargetString_);
  mType_ = src->mType_;
  JreStrongAssign(&mCustomConstraints_, src->mCustomConstraints_);
  return self;
}

- (ADXKey *)java_clone {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ADXKey *)setViewIdWithInt:(jint)id_ {
  mTargetId_ = id_;
  return self;
}

- (void)setFramePositionWithInt:(jint)pos {
  mFramePosition_ = pos;
}

- (jint)getFramePosition {
  return mFramePosition_;
}

- (void)dealloc {
  RELEASE_(mTargetString_);
  RELEASE_(mCustomConstraints_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 2, 3, -1, 4, -1, -1 },
    { NULL, "Z", 0x0, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 8, -1, 9, -1, -1 },
    { NULL, "V", 0x401, 10, 11, -1, -1, -1, -1 },
    { NULL, "F", 0x0, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 14, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 15, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 8, -1, 17, -1, -1 },
    { NULL, "LADXKey;", 0x1, 18, 19, -1, -1, -1, -1 },
    { NULL, "LADXKey;", 0x401, 20, -1, -1, -1, -1, -1 },
    { NULL, "LADXKey;", 0x1, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 22, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(load__WithADContext:withADAttributeSet:);
  methods[2].selector = @selector(getAttributeNamesWithJavaUtilHashSet:);
  methods[3].selector = @selector(matchesWithNSString:);
  methods[4].selector = @selector(addValuesWithJavaUtilHashMap:);
  methods[5].selector = @selector(setValueWithNSString:withId:);
  methods[6].selector = @selector(toFloatWithId:);
  methods[7].selector = @selector(toIntWithId:);
  methods[8].selector = @selector(toBooleanWithId:);
  methods[9].selector = @selector(setInterpolationWithJavaUtilHashMap:);
  methods[10].selector = @selector(copy__WithADXKey:);
  methods[11].selector = @selector(java_clone);
  methods[12].selector = @selector(setViewIdWithInt:);
  methods[13].selector = @selector(setFramePositionWithInt:);
  methods[14].selector = @selector(getFramePosition);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "UNSET", "I", .constantValue.asLong = 0, 0x9, -1, 24, -1, -1 },
    { "mFramePosition_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mTargetId_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mTargetString_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mType_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mCustomConstraints_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x1, -1, -1, 25, -1 },
    { "ALPHA", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "ELEVATION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 27, -1, -1 },
    { "ROTATION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 28, -1, -1 },
    { "ROTATION_X", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 29, -1, -1 },
    { "ROTATION_Y", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 30, -1, -1 },
    { "PIVOT_X", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 31, -1, -1 },
    { "PIVOT_Y", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 32, -1, -1 },
    { "TRANSITION_PATH_ROTATE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 33, -1, -1 },
    { "SCALE_X", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 34, -1, -1 },
    { "SCALE_Y", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 35, -1, -1 },
    { "WAVE_PERIOD", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 36, -1, -1 },
    { "WAVE_OFFSET", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 37, -1, -1 },
    { "WAVE_PHASE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 38, -1, -1 },
    { "WAVE_VARIES_BY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 39, -1, -1 },
    { "TRANSLATION_X", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 40, -1, -1 },
    { "TRANSLATION_Y", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 41, -1, -1 },
    { "TRANSLATION_Z", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 42, -1, -1 },
    { "PROGRESS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 43, -1, -1 },
    { "CUSTOM", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 44, -1, -1 },
    { "CURVEFIT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 45, -1, -1 },
    { "MOTIONPROGRESS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 46, -1, -1 },
    { "TRANSITIONEASING", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 47, -1, -1 },
    { "VISIBILITY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 48, -1, -1 },
  };
  static const void *ptrTable[] = { "load", "LADContext;LADAttributeSet;", "getAttributeNames", "LJavaUtilHashSet;", "(Ljava/util/HashSet<Ljava/lang/String;>;)V", "matches", "LNSString;", "addValues", "LJavaUtilHashMap;", "(Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/motion/utils/ViewSpline;>;)V", "setValue", "LNSString;LNSObject;", "toFloat", "LNSObject;", "toInt", "toBoolean", "setInterpolation", "(Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;)V", "copy", "LADXKey;", "clone", "setViewId", "I", "setFramePosition", &ADXKey_UNSET, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute;>;", &ADXKey_ALPHA, &ADXKey_ELEVATION, &ADXKey_ROTATION, &ADXKey_ROTATION_X, &ADXKey_ROTATION_Y, &ADXKey_PIVOT_X, &ADXKey_PIVOT_Y, &ADXKey_TRANSITION_PATH_ROTATE, &ADXKey_SCALE_X, &ADXKey_SCALE_Y, &ADXKey_WAVE_PERIOD, &ADXKey_WAVE_OFFSET, &ADXKey_WAVE_PHASE, &ADXKey_WAVE_VARIES_BY, &ADXKey_TRANSLATION_X, &ADXKey_TRANSLATION_Y, &ADXKey_TRANSLATION_Z, &ADXKey_PROGRESS, &ADXKey_CUSTOM, &ADXKey_CURVEFIT, &ADXKey_MOTIONPROGRESS, &ADXKey_TRANSITIONEASING, &ADXKey_VISIBILITY };
  static const J2ObjcClassInfo _ADXKey = { "Key", "androidx.constraintlayout.motion.widget", ptrTable, methods, fields, 7, 0x401, 15, 29, -1, -1, -1, -1, -1 };
  return &_ADXKey;
}

@end

void ADXKey_init(ADXKey *self) {
  NSObject_init(self);
  self->mFramePosition_ = ADXKey_UNSET;
  self->mTargetId_ = ADXKey_UNSET;
  JreStrongAssign(&self->mTargetString_, nil);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXKey)