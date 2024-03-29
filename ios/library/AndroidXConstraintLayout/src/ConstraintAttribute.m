//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\ConstraintAttribute.java
//

#include "Color.h"
#include "ColorDrawable.h"
#include "ConstraintAttribute.h"
#include "Drawable.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "PluginInvoker.h"
#include "View.h"
#include "java/lang/Boolean.h"
#include "java/lang/Enum.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "java/lang/reflect/Method.h"
#include "java/util/HashMap.h"
#include "java/util/Set.h"


@interface ADXConstraintAttribute () {
 @public
  jboolean mMethod_;
  ADXConstraintAttribute_AttributeType *mType_;
  jint mIntegerValue_;
  jfloat mFloatValue_;
  NSString *mStringValue_;
  jint mColorValue_;
}

+ (jint)clampWithInt:(jint)c;

@end

J2OBJC_FIELD_SETTER(ADXConstraintAttribute, mType_, ADXConstraintAttribute_AttributeType *)
J2OBJC_FIELD_SETTER(ADXConstraintAttribute, mStringValue_, NSString *)

inline NSString *ADXConstraintAttribute_get_TAG(void);
static NSString *ADXConstraintAttribute_TAG = @"TransitionLayout";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXConstraintAttribute, TAG, NSString *)

__attribute__((unused)) static jint ADXConstraintAttribute_clampWithInt_(jint c);

__attribute__((unused)) static void ADXConstraintAttribute_AttributeType_initWithNSString_withInt_(ADXConstraintAttribute_AttributeType *self, NSString *__name, jint __ordinal);

@implementation ADXConstraintAttribute

- (ADXConstraintAttribute_AttributeType *)getType {
  return mType_;
}

- (jboolean)isContinuous {
  switch ([mType_ ordinal]) {
    case ADXConstraintAttribute_AttributeType_Enum_REFERENCE_TYPE:
    case ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE:
    case ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE:
    return false;
    default:
    return true;
  }
}

- (jint)numberOfInterpolatedValues {
  switch ([mType_ ordinal]) {
    case ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE:
    case ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE:
    return 4;
    default:
    return 1;
  }
}

- (jfloat)getValueToInterpolate {
  switch ([mType_ ordinal]) {
    case ADXConstraintAttribute_AttributeType_Enum_INT_TYPE:
    return mIntegerValue_;
    case ADXConstraintAttribute_AttributeType_Enum_FLOAT_TYPE:
    return mFloatValue_;
    case ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE:
    case ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE:
    @throw create_JavaLangRuntimeException_initWithNSString_(@"Color does not have a single color to interpolate");
    case ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE:
    @throw create_JavaLangRuntimeException_initWithNSString_(@"Cannot interpolate String");
    case ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE:
    return mBooleanValue_ ? 1 : 0;
    case ADXConstraintAttribute_AttributeType_Enum_DIMENSION_TYPE:
    return mFloatValue_;
  }
  return JavaLangFloat_NaN;
}

- (void)getValuesToInterpolateWithFloatArray:(IOSFloatArray *)ret {
  {
    jint a;
    jint r;
    jint g;
    jint b;
    jfloat f_r;
    jfloat f_g;
    jfloat f_b;
    switch ([mType_ ordinal]) {
      case ADXConstraintAttribute_AttributeType_Enum_INT_TYPE:
      *IOSFloatArray_GetRef(nil_chk(ret), 0) = mIntegerValue_;
      break;
      case ADXConstraintAttribute_AttributeType_Enum_FLOAT_TYPE:
      *IOSFloatArray_GetRef(nil_chk(ret), 0) = mFloatValue_;
      break;
      case ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE:
      case ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE:
      a = (jint) 0xFF & (JreRShift32(mColorValue_, 24));
      r = (jint) 0xFF & (JreRShift32(mColorValue_, 16));
      g = (jint) 0xFF & (JreRShift32(mColorValue_, 8));
      b = (jint) 0xFF & (mColorValue_);
      f_r = (jfloat) JavaLangMath_powWithDouble_withDouble_(r / 255.0f, 2.2);
      f_g = (jfloat) JavaLangMath_powWithDouble_withDouble_(g / 255.0f, 2.2);
      f_b = (jfloat) JavaLangMath_powWithDouble_withDouble_(b / 255.0f, 2.2);
      *IOSFloatArray_GetRef(nil_chk(ret), 0) = f_r;
      *IOSFloatArray_GetRef(ret, 1) = f_g;
      *IOSFloatArray_GetRef(ret, 2) = f_b;
      *IOSFloatArray_GetRef(ret, 3) = a / 255.0f;
      break;
      case ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE:
      @throw create_JavaLangRuntimeException_initWithNSString_(@"Color does not have a single color to interpolate");
      case ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE:
      *IOSFloatArray_GetRef(nil_chk(ret), 0) = mBooleanValue_ ? 1 : 0;
      break;
      case ADXConstraintAttribute_AttributeType_Enum_DIMENSION_TYPE:
      *IOSFloatArray_GetRef(nil_chk(ret), 0) = mFloatValue_;
      break;
    }
  }
}

- (void)setValueWithFloatArray:(IOSFloatArray *)value {
  switch ([mType_ ordinal]) {
    case ADXConstraintAttribute_AttributeType_Enum_REFERENCE_TYPE:
    case ADXConstraintAttribute_AttributeType_Enum_INT_TYPE:
    mIntegerValue_ = JreFpToInt(IOSFloatArray_Get(nil_chk(value), 0));
    break;
    case ADXConstraintAttribute_AttributeType_Enum_FLOAT_TYPE:
    mFloatValue_ = IOSFloatArray_Get(nil_chk(value), 0);
    break;
    case ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE:
    case ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE:
    mColorValue_ = ADColor_HSVToColorWithFloatArray_(value);
    mColorValue_ = (mColorValue_ & (jint) 0xFFFFFF) | (JreLShift32(ADXConstraintAttribute_clampWithInt_(JreFpToInt(((jint) 0xFF * IOSFloatArray_Get(nil_chk(value), 3)))), 24));
    break;
    case ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE:
    @throw create_JavaLangRuntimeException_initWithNSString_(@"Color does not have a single color to interpolate");
    case ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE:
    mBooleanValue_ = (IOSFloatArray_Get(nil_chk(value), 0) > 0.5);
    break;
    case ADXConstraintAttribute_AttributeType_Enum_DIMENSION_TYPE:
    mFloatValue_ = IOSFloatArray_Get(nil_chk(value), 0);
  }
}

- (instancetype)initWithNSString:(NSString *)name
withADXConstraintAttribute_AttributeType:(ADXConstraintAttribute_AttributeType *)attributeType
                          withId:(id)value
                     withBoolean:(jboolean)method {
  ADXConstraintAttribute_initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_(self, name, attributeType, value, method);
  return self;
}

- (instancetype)initWithADXConstraintAttribute:(ADXConstraintAttribute *)source
                                        withId:(id)value {
  ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(self, source, value);
  return self;
}

- (void)setValueWithId:(id)value {
  switch ([mType_ ordinal]) {
    case ADXConstraintAttribute_AttributeType_Enum_REFERENCE_TYPE:
    case ADXConstraintAttribute_AttributeType_Enum_INT_TYPE:
    mIntegerValue_ = [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(value, [JavaLangInteger class]))) intValue];
    break;
    case ADXConstraintAttribute_AttributeType_Enum_FLOAT_TYPE:
    mFloatValue_ = [((JavaLangFloat *) nil_chk((JavaLangFloat *) cast_chk(value, [JavaLangFloat class]))) floatValue];
    break;
    case ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE:
    case ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE:
    mColorValue_ = [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(value, [JavaLangInteger class]))) intValue];
    break;
    case ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE:
    JreStrongAssign(&mStringValue_, (NSString *) cast_chk(value, [NSString class]));
    break;
    case ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE:
    mBooleanValue_ = [((JavaLangBoolean *) nil_chk((JavaLangBoolean *) cast_chk(value, [JavaLangBoolean class]))) booleanValue];
    break;
    case ADXConstraintAttribute_AttributeType_Enum_DIMENSION_TYPE:
    mFloatValue_ = [((JavaLangFloat *) nil_chk((JavaLangFloat *) cast_chk(value, [JavaLangFloat class]))) floatValue];
    break;
  }
}

+ (JavaUtilHashMap *)extractAttributesWithJavaUtilHashMap:(JavaUtilHashMap *)base
                                               withADView:(ADView *)view {
  return ADXConstraintAttribute_extractAttributesWithJavaUtilHashMap_withADView_(base, view);
}

+ (jint)clampWithInt:(jint)c {
  return ADXConstraintAttribute_clampWithInt_(c);
}

+ (void)setAttributesWithADView:(ADView *)view
            withJavaUtilHashMap:(JavaUtilHashMap *)map {
  ADXConstraintAttribute_setAttributesWithADView_withJavaUtilHashMap_(view, map);
}

- (void)setInterpolatedValueWithADView:(ADView *)view
                        withFloatArray:(IOSFloatArray *)value {
  {
    jint r;
    jint g;
    jint b;
    jint a;
    jint color;
    switch ([mType_ ordinal]) {
      case ADXConstraintAttribute_AttributeType_Enum_INT_TYPE:
      case ADXConstraintAttribute_AttributeType_Enum_FLOAT_TYPE:
      case ADXConstraintAttribute_AttributeType_Enum_DIMENSION_TYPE:
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:mName_ withId:JavaLangFloat_valueOfWithFloat_(IOSFloatArray_Get(nil_chk(value), 0))];
      break;
      case ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE:
      {
        jint r = ADXConstraintAttribute_clampWithInt_(JreFpToInt(((jfloat) JavaLangMath_powWithDouble_withDouble_(IOSFloatArray_Get(nil_chk(value), 0), 1.0 / 2.2) * 255.0f)));
        jint g = ADXConstraintAttribute_clampWithInt_(JreFpToInt(((jfloat) JavaLangMath_powWithDouble_withDouble_(IOSFloatArray_Get(value, 1), 1.0 / 2.2) * 255.0f)));
        jint b = ADXConstraintAttribute_clampWithInt_(JreFpToInt(((jfloat) JavaLangMath_powWithDouble_withDouble_(IOSFloatArray_Get(value, 2), 1.0 / 2.2) * 255.0f)));
        jint a = ADXConstraintAttribute_clampWithInt_(JreFpToInt((IOSFloatArray_Get(value, 3) * 255.0f)));
        jint color = (JreLShift32(a, 24)) | (JreLShift32(r, 16)) | (JreLShift32(g, 8)) | b;
        ADColorDrawable *drawable = create_ADColorDrawable_init();
        [drawable setColorWithInt:color];
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:mName_ withId:drawable];
      }
      break;
      case ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE:
      r = ADXConstraintAttribute_clampWithInt_(JreFpToInt(((jfloat) JavaLangMath_powWithDouble_withDouble_(IOSFloatArray_Get(nil_chk(value), 0), 1.0 / 2.2) * 255.0f)));
      g = ADXConstraintAttribute_clampWithInt_(JreFpToInt(((jfloat) JavaLangMath_powWithDouble_withDouble_(IOSFloatArray_Get(value, 1), 1.0 / 2.2) * 255.0f)));
      b = ADXConstraintAttribute_clampWithInt_(JreFpToInt(((jfloat) JavaLangMath_powWithDouble_withDouble_(IOSFloatArray_Get(value, 2), 1.0 / 2.2) * 255.0f)));
      a = ADXConstraintAttribute_clampWithInt_(JreFpToInt((IOSFloatArray_Get(value, 3) * 255.0f)));
      color = (JreLShift32(a, 24)) | (JreLShift32(r, 16)) | (JreLShift32(g, 8)) | b;
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:mName_ withId:ASPluginInvoker_getColorWithNSString_(ADColor_formatColorWithInt_(color))];
      break;
      case ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE:
      @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$$", @"unable to interpolate strings ", mName_));
      case ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE:
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:mName_ withId:JavaLangBoolean_valueOfWithBoolean_(IOSFloatArray_Get(nil_chk(value), 0) > 0.5f)];
      break;
    }
  }
}

- (void)applyCustomWithADView:(ADView *)view {
  NSString *name = JreRetainedLocalValue(self->mName_);
  {
    ADColorDrawable *drawable;
    switch ([self->mType_ ordinal]) {
      case ADXConstraintAttribute_AttributeType_Enum_INT_TYPE:
      case ADXConstraintAttribute_AttributeType_Enum_REFERENCE_TYPE:
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangInteger_valueOfWithInt_(self->mIntegerValue_)];
      break;
      case ADXConstraintAttribute_AttributeType_Enum_FLOAT_TYPE:
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangFloat_valueOfWithFloat_(self->mFloatValue_)];
      break;
      case ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE:
      drawable = create_ADColorDrawable_init();
      [drawable setColorWithInt:self->mColorValue_];
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:drawable];
      break;
      case ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE:
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:ASPluginInvoker_getColorWithNSString_(ADColor_formatColorWithInt_(mColorValue_))];
      break;
      case ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE:
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:mStringValue_];
      break;
      case ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE:
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangBoolean_valueOfWithBoolean_(mBooleanValue_)];
      break;
      case ADXConstraintAttribute_AttributeType_Enum_DIMENSION_TYPE:
      [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangFloat_valueOfWithFloat_(mFloatValue_)];
      break;
    }
  }
}

- (void)dealloc {
  RELEASE_(mName_);
  RELEASE_(mType_);
  RELEASE_(mStringValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LADXConstraintAttribute_AttributeType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilHashMap;", 0x9, 6, 7, -1, 8, -1, -1 },
    { NULL, "I", 0xa, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 11, 12, -1, 13, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getType);
  methods[1].selector = @selector(isContinuous);
  methods[2].selector = @selector(numberOfInterpolatedValues);
  methods[3].selector = @selector(getValueToInterpolate);
  methods[4].selector = @selector(getValuesToInterpolateWithFloatArray:);
  methods[5].selector = @selector(setValueWithFloatArray:);
  methods[6].selector = @selector(initWithNSString:withADXConstraintAttribute_AttributeType:withId:withBoolean:);
  methods[7].selector = @selector(initWithADXConstraintAttribute:withId:);
  methods[8].selector = @selector(setValueWithId:);
  methods[9].selector = @selector(extractAttributesWithJavaUtilHashMap:withADView:);
  methods[10].selector = @selector(clampWithInt:);
  methods[11].selector = @selector(setAttributesWithADView:withJavaUtilHashMap:);
  methods[12].selector = @selector(setInterpolatedValueWithADView:withFloatArray:);
  methods[13].selector = @selector(applyCustomWithADView:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "mMethod_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mName_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mType_", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mIntegerValue_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mFloatValue_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mStringValue_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBooleanValue_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mColorValue_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getValuesToInterpolate", "[F", "setValue", "LNSString;LADXConstraintAttribute_AttributeType;LNSObject;Z", "LADXConstraintAttribute;LNSObject;", "LNSObject;", "extractAttributes", "LJavaUtilHashMap;LADView;", "(Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute;>;Lr/android/view/View;)Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute;>;", "clamp", "I", "setAttributes", "LADView;LJavaUtilHashMap;", "(Lr/android/view/View;Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute;>;)V", "setInterpolatedValue", "LADView;[F", "applyCustom", "LADView;", &ADXConstraintAttribute_TAG, "LADXConstraintAttribute_AttributeType;" };
  static const J2ObjcClassInfo _ADXConstraintAttribute = { "ConstraintAttribute", "androidx.constraintlayout.widget", ptrTable, methods, fields, 7, 0x1, 14, 9, -1, 19, -1, -1, -1 };
  return &_ADXConstraintAttribute;
}

@end

void ADXConstraintAttribute_initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_(ADXConstraintAttribute *self, NSString *name, ADXConstraintAttribute_AttributeType *attributeType, id value, jboolean method) {
  NSObject_init(self);
  self->mMethod_ = false;
  JreStrongAssign(&self->mName_, name);
  JreStrongAssign(&self->mType_, attributeType);
  self->mMethod_ = method;
  [self setValueWithId:value];
}

ADXConstraintAttribute *new_ADXConstraintAttribute_initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_(NSString *name, ADXConstraintAttribute_AttributeType *attributeType, id value, jboolean method) {
  J2OBJC_NEW_IMPL(ADXConstraintAttribute, initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_, name, attributeType, value, method)
}

ADXConstraintAttribute *create_ADXConstraintAttribute_initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_(NSString *name, ADXConstraintAttribute_AttributeType *attributeType, id value, jboolean method) {
  J2OBJC_CREATE_IMPL(ADXConstraintAttribute, initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_, name, attributeType, value, method)
}

void ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(ADXConstraintAttribute *self, ADXConstraintAttribute *source, id value) {
  NSObject_init(self);
  self->mMethod_ = false;
  JreStrongAssign(&self->mName_, ((ADXConstraintAttribute *) nil_chk(source))->mName_);
  JreStrongAssign(&self->mType_, source->mType_);
  [self setValueWithId:value];
}

ADXConstraintAttribute *new_ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(ADXConstraintAttribute *source, id value) {
  J2OBJC_NEW_IMPL(ADXConstraintAttribute, initWithADXConstraintAttribute_withId_, source, value)
}

ADXConstraintAttribute *create_ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(ADXConstraintAttribute *source, id value) {
  J2OBJC_CREATE_IMPL(ADXConstraintAttribute, initWithADXConstraintAttribute_withId_, source, value)
}

JavaUtilHashMap *ADXConstraintAttribute_extractAttributesWithJavaUtilHashMap_withADView_(JavaUtilHashMap *base, ADView *view) {
  ADXConstraintAttribute_initialize();
  JavaUtilHashMap *ret = create_JavaUtilHashMap_init();
  IOSClass *viewClass = [((ADView *) nil_chk(view)) java_getClass];
  for (NSString * __strong name in nil_chk([((JavaUtilHashMap *) nil_chk(base)) keySet])) {
    ADXConstraintAttribute *constraintAttribute = JreRetainedLocalValue([base getWithId:name]);
    @try {
      if ([((NSString *) nil_chk(name)) isEqual:@"BackgroundColor"]) {
        ADColorDrawable *viewColor = (ADColorDrawable *) cast_chk([view getBackground], [ADColorDrawable class]);
        id val = JreRetainedLocalValue([((ADColorDrawable *) nil_chk(viewColor)) getColor]);
        [ret putWithId:name withId:create_ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(constraintAttribute, val)];
      }
      else {
        JavaLangReflectMethod *method = [viewClass getMethod:JreStrcat("$$", @"getMap", name) parameterTypes:[IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]];
        id val = JreRetainedLocalValue([((JavaLangReflectMethod *) nil_chk(method)) invokeWithId:view withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSObject_class_()]]);
        [ret putWithId:name withId:create_ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(constraintAttribute, val)];
      }
    }
    @catch (JavaLangNoSuchMethodException *e) {
      [e printStackTrace];
    }
    @catch (JavaLangIllegalAccessException *e) {
      [e printStackTrace];
    }
    @catch (JavaLangReflectInvocationTargetException *e) {
      [e printStackTrace];
    }
  }
  return ret;
}

jint ADXConstraintAttribute_clampWithInt_(jint c) {
  ADXConstraintAttribute_initialize();
  jint N = 255;
  c &= ~(JreRShift32(c, 31));
  c -= N;
  c &= (JreRShift32(c, 31));
  c += N;
  return c;
}

void ADXConstraintAttribute_setAttributesWithADView_withJavaUtilHashMap_(ADView *view, JavaUtilHashMap *map) {
  ADXConstraintAttribute_initialize();
  for (NSString * __strong name in nil_chk([((JavaUtilHashMap *) nil_chk(map)) keySet])) {
    ADXConstraintAttribute *constraintAttribute = JreRetainedLocalValue([map getWithId:name]);
    {
      ADColorDrawable *drawable;
      switch ([((ADXConstraintAttribute *) nil_chk(constraintAttribute))->mType_ ordinal]) {
        case ADXConstraintAttribute_AttributeType_Enum_INT_TYPE:
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangInteger_valueOfWithInt_(constraintAttribute->mIntegerValue_)];
        break;
        case ADXConstraintAttribute_AttributeType_Enum_FLOAT_TYPE:
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangFloat_valueOfWithFloat_(constraintAttribute->mFloatValue_)];
        break;
        case ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE:
        drawable = create_ADColorDrawable_init();
        [drawable setColorWithInt:constraintAttribute->mColorValue_];
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:drawable];
        break;
        case ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE:
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:ASPluginInvoker_getColorWithNSString_(ADColor_formatColorWithInt_(constraintAttribute->mColorValue_))];
        break;
        case ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE:
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:constraintAttribute->mStringValue_];
        break;
        case ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE:
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangBoolean_valueOfWithBoolean_(constraintAttribute->mBooleanValue_)];
        break;
        case ADXConstraintAttribute_AttributeType_Enum_DIMENSION_TYPE:
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangFloat_valueOfWithFloat_(constraintAttribute->mFloatValue_)];
        break;
        case ADXConstraintAttribute_AttributeType_Enum_REFERENCE_TYPE:
        [((ADView *) nil_chk(view)) setMyAttributeWithNSString:name withId:JavaLangInteger_valueOfWithInt_(constraintAttribute->mIntegerValue_)];
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXConstraintAttribute)

J2OBJC_INITIALIZED_DEFN(ADXConstraintAttribute_AttributeType)

ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_values_[8];

@implementation ADXConstraintAttribute_AttributeType

+ (IOSObjectArray *)values {
  return ADXConstraintAttribute_AttributeType_values();
}

+ (ADXConstraintAttribute_AttributeType *)valueOfWithNSString:(NSString *)name {
  return ADXConstraintAttribute_AttributeType_valueOfWithNSString_(name);
}

- (ADXConstraintAttribute_AttributeType_Enum)toNSEnum {
  return (ADXConstraintAttribute_AttributeType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LADXConstraintAttribute_AttributeType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXConstraintAttribute_AttributeType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INT_TYPE", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "FLOAT_TYPE", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "COLOR_TYPE", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "COLOR_DRAWABLE_TYPE", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "STRING_TYPE", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "BOOLEAN_TYPE", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "DIMENSION_TYPE", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "REFERENCE_TYPE", "LADXConstraintAttribute_AttributeType;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ADXConstraintAttribute_AttributeType, INT_TYPE), &JreEnum(ADXConstraintAttribute_AttributeType, FLOAT_TYPE), &JreEnum(ADXConstraintAttribute_AttributeType, COLOR_TYPE), &JreEnum(ADXConstraintAttribute_AttributeType, COLOR_DRAWABLE_TYPE), &JreEnum(ADXConstraintAttribute_AttributeType, STRING_TYPE), &JreEnum(ADXConstraintAttribute_AttributeType, BOOLEAN_TYPE), &JreEnum(ADXConstraintAttribute_AttributeType, DIMENSION_TYPE), &JreEnum(ADXConstraintAttribute_AttributeType, REFERENCE_TYPE), "LADXConstraintAttribute;", "Ljava/lang/Enum<Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;>;" };
  static const J2ObjcClassInfo _ADXConstraintAttribute_AttributeType = { "AttributeType", "androidx.constraintlayout.widget", ptrTable, methods, fields, 7, 0x4019, 2, 8, 10, -1, -1, 11, -1 };
  return &_ADXConstraintAttribute_AttributeType;
}

+ (void)initialize {
  if (self == [ADXConstraintAttribute_AttributeType class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 8 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 8; i++) {
      ((void)(ADXConstraintAttribute_AttributeType_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      ADXConstraintAttribute_AttributeType_initWithNSString_withInt_(e, JreEnumConstantName(ADXConstraintAttribute_AttributeType_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(ADXConstraintAttribute_AttributeType)
  }
}

@end

void ADXConstraintAttribute_AttributeType_initWithNSString_withInt_(ADXConstraintAttribute_AttributeType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *ADXConstraintAttribute_AttributeType_values() {
  ADXConstraintAttribute_AttributeType_initialize();
  return [IOSObjectArray arrayWithObjects:ADXConstraintAttribute_AttributeType_values_ count:8 type:ADXConstraintAttribute_AttributeType_class_()];
}

ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_valueOfWithNSString_(NSString *name) {
  ADXConstraintAttribute_AttributeType_initialize();
  for (int i = 0; i < 8; i++) {
    ADXConstraintAttribute_AttributeType *e = ADXConstraintAttribute_AttributeType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_fromOrdinal(NSUInteger ordinal) {
  ADXConstraintAttribute_AttributeType_initialize();
  if (ordinal >= 8) {
    return nil;
  }
  return ADXConstraintAttribute_AttributeType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXConstraintAttribute_AttributeType)
