//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\CustomVariable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CustomVariable")
#ifdef RESTRICT_CustomVariable
#define INCLUDE_ALL_CustomVariable 0
#else
#define INCLUDE_ALL_CustomVariable 1
#endif
#undef RESTRICT_CustomVariable

#if !defined (ADXCustomVariable_) && (INCLUDE_ALL_CustomVariable || defined(INCLUDE_ADXCustomVariable))
#define ADXCustomVariable_

@class ADXMotionWidget;
@class IOSFloatArray;

/*!
 @brief Defines non standard Attributes
 */
@interface ADXCustomVariable : NSObject {
 @public
  NSString *mName_;
  jboolean mBooleanValue_;
}

#pragma mark Public

- (instancetype)initWithADXCustomVariable:(ADXCustomVariable *)c;

- (instancetype)initWithADXCustomVariable:(ADXCustomVariable *)source
                                   withId:(id)value;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)attributeType;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)type
                     withBoolean:(jboolean)value;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)type
                       withFloat:(jfloat)value;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)type
                         withInt:(jint)value;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)attributeType
                          withId:(id)value;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)type
                    withNSString:(NSString *)value;

- (void)applyToWidgetWithADXMotionWidget:(ADXMotionWidget *)view;

+ (NSString *)colorStringWithInt:(jint)v;

- (ADXCustomVariable *)copy__ OBJC_METHOD_FAMILY_NONE;

/*!
 @brief test if the two attributes are different
 @param CustomAttribute
 */
- (jboolean)diffWithADXCustomVariable:(ADXCustomVariable *)CustomAttribute;

- (jboolean)getBooleanValue;

- (jint)getColorValue;

- (jfloat)getFloatValue;

- (jint)getIntegerValue;

- (jint)getInterpolatedColorWithFloatArray:(IOSFloatArray *)value;

- (NSString *)getName;

- (NSString *)getStringValue;

- (jint)getType;

- (void)getValuesToInterpolateWithFloatArray:(IOSFloatArray *)ret;

/*!
 @brief Transforms value to a float for the purpose of interpolation
 @return interpolation value
 */
- (jfloat)getValueToInterpolate;

+ (jint)hsvToRgbWithFloat:(jfloat)hue
                withFloat:(jfloat)saturation
                withFloat:(jfloat)value;

/*!
 @brief Continuous types are interpolated they are fired only at
 */
- (jboolean)isContinuous;

/*!
 @brief The number of interpolation values that need to be interpolated
  Typically 1 but 3 for colors.
 @return Typically 1 but 3 for colors.
 */
- (jint)numberOfInterpolatedValues;

+ (jint)rgbaTocColorWithFloat:(jfloat)r
                    withFloat:(jfloat)g
                    withFloat:(jfloat)b
                    withFloat:(jfloat)a;

- (void)setBooleanValueWithBoolean:(jboolean)value;

- (void)setFloatValueWithFloat:(jfloat)value;

- (void)setInterpolatedValueWithADXMotionWidget:(ADXMotionWidget *)view
                                 withFloatArray:(IOSFloatArray *)value;

- (void)setIntValueWithInt:(jint)value;

- (void)setStringValueWithNSString:(NSString *)value;

- (void)setValueWithFloatArray:(IOSFloatArray *)value;

- (void)setValueWithId:(id)value;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXCustomVariable)

J2OBJC_FIELD_SETTER(ADXCustomVariable, mName_, NSString *)

FOUNDATION_EXPORT void ADXCustomVariable_initWithADXCustomVariable_(ADXCustomVariable *self, ADXCustomVariable *c);

FOUNDATION_EXPORT ADXCustomVariable *new_ADXCustomVariable_initWithADXCustomVariable_(ADXCustomVariable *c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCustomVariable *create_ADXCustomVariable_initWithADXCustomVariable_(ADXCustomVariable *c);

FOUNDATION_EXPORT void ADXCustomVariable_initWithNSString_withInt_withNSString_(ADXCustomVariable *self, NSString *name, jint type, NSString *value);

FOUNDATION_EXPORT ADXCustomVariable *new_ADXCustomVariable_initWithNSString_withInt_withNSString_(NSString *name, jint type, NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCustomVariable *create_ADXCustomVariable_initWithNSString_withInt_withNSString_(NSString *name, jint type, NSString *value);

FOUNDATION_EXPORT void ADXCustomVariable_initWithNSString_withInt_withInt_(ADXCustomVariable *self, NSString *name, jint type, jint value);

FOUNDATION_EXPORT ADXCustomVariable *new_ADXCustomVariable_initWithNSString_withInt_withInt_(NSString *name, jint type, jint value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCustomVariable *create_ADXCustomVariable_initWithNSString_withInt_withInt_(NSString *name, jint type, jint value);

FOUNDATION_EXPORT void ADXCustomVariable_initWithNSString_withInt_withFloat_(ADXCustomVariable *self, NSString *name, jint type, jfloat value);

FOUNDATION_EXPORT ADXCustomVariable *new_ADXCustomVariable_initWithNSString_withInt_withFloat_(NSString *name, jint type, jfloat value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCustomVariable *create_ADXCustomVariable_initWithNSString_withInt_withFloat_(NSString *name, jint type, jfloat value);

FOUNDATION_EXPORT void ADXCustomVariable_initWithNSString_withInt_withBoolean_(ADXCustomVariable *self, NSString *name, jint type, jboolean value);

FOUNDATION_EXPORT ADXCustomVariable *new_ADXCustomVariable_initWithNSString_withInt_withBoolean_(NSString *name, jint type, jboolean value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCustomVariable *create_ADXCustomVariable_initWithNSString_withInt_withBoolean_(NSString *name, jint type, jboolean value);

FOUNDATION_EXPORT NSString *ADXCustomVariable_colorStringWithInt_(jint v);

FOUNDATION_EXPORT jint ADXCustomVariable_hsvToRgbWithFloat_withFloat_withFloat_(jfloat hue, jfloat saturation, jfloat value);

FOUNDATION_EXPORT void ADXCustomVariable_initWithNSString_withInt_(ADXCustomVariable *self, NSString *name, jint attributeType);

FOUNDATION_EXPORT ADXCustomVariable *new_ADXCustomVariable_initWithNSString_withInt_(NSString *name, jint attributeType) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCustomVariable *create_ADXCustomVariable_initWithNSString_withInt_(NSString *name, jint attributeType);

FOUNDATION_EXPORT void ADXCustomVariable_initWithNSString_withInt_withId_(ADXCustomVariable *self, NSString *name, jint attributeType, id value);

FOUNDATION_EXPORT ADXCustomVariable *new_ADXCustomVariable_initWithNSString_withInt_withId_(NSString *name, jint attributeType, id value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCustomVariable *create_ADXCustomVariable_initWithNSString_withInt_withId_(NSString *name, jint attributeType, id value);

FOUNDATION_EXPORT void ADXCustomVariable_initWithADXCustomVariable_withId_(ADXCustomVariable *self, ADXCustomVariable *source, id value);

FOUNDATION_EXPORT ADXCustomVariable *new_ADXCustomVariable_initWithADXCustomVariable_withId_(ADXCustomVariable *source, id value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCustomVariable *create_ADXCustomVariable_initWithADXCustomVariable_withId_(ADXCustomVariable *source, id value);

FOUNDATION_EXPORT jint ADXCustomVariable_rgbaTocColorWithFloat_withFloat_withFloat_withFloat_(jfloat r, jfloat g, jfloat b, jfloat a);

J2OBJC_TYPE_LITERAL_HEADER(ADXCustomVariable)

@compatibility_alias AndroidxConstraintlayoutCoreMotionCustomVariable ADXCustomVariable;

#endif

#pragma pop_macro("INCLUDE_ALL_CustomVariable")