//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\ConstraintAttribute.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ConstraintAttribute")
#ifdef RESTRICT_ConstraintAttribute
#define INCLUDE_ALL_ConstraintAttribute 0
#else
#define INCLUDE_ALL_ConstraintAttribute 1
#endif
#undef RESTRICT_ConstraintAttribute

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ADXConstraintAttribute_) && (INCLUDE_ALL_ConstraintAttribute || defined(INCLUDE_ADXConstraintAttribute))
#define ADXConstraintAttribute_

@class ADView;
@class ADXConstraintAttribute_AttributeType;
@class IOSFloatArray;
@class JavaUtilHashMap;

@interface ADXConstraintAttribute : NSObject {
 @public
  NSString *mName_;
  jboolean mBooleanValue_;
}

#pragma mark Public

- (instancetype)initWithADXConstraintAttribute:(ADXConstraintAttribute *)source
                                        withId:(id)value;

- (instancetype)initWithNSString:(NSString *)name
withADXConstraintAttribute_AttributeType:(ADXConstraintAttribute_AttributeType *)attributeType
                          withId:(id)value
                     withBoolean:(jboolean)method;

- (void)applyCustomWithADView:(ADView *)view;

+ (JavaUtilHashMap *)extractAttributesWithJavaUtilHashMap:(JavaUtilHashMap *)base
                                               withADView:(ADView *)view;

- (ADXConstraintAttribute_AttributeType *)getType;

- (void)getValuesToInterpolateWithFloatArray:(IOSFloatArray *)ret;

- (jfloat)getValueToInterpolate;

- (jboolean)isContinuous;

- (jint)numberOfInterpolatedValues;

+ (void)setAttributesWithADView:(ADView *)view
            withJavaUtilHashMap:(JavaUtilHashMap *)map;

- (void)setInterpolatedValueWithADView:(ADView *)view
                        withFloatArray:(IOSFloatArray *)value;

- (void)setValueWithFloatArray:(IOSFloatArray *)value;

- (void)setValueWithId:(id)value;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintAttribute)

J2OBJC_FIELD_SETTER(ADXConstraintAttribute, mName_, NSString *)

FOUNDATION_EXPORT void ADXConstraintAttribute_initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_(ADXConstraintAttribute *self, NSString *name, ADXConstraintAttribute_AttributeType *attributeType, id value, jboolean method);

FOUNDATION_EXPORT ADXConstraintAttribute *new_ADXConstraintAttribute_initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_(NSString *name, ADXConstraintAttribute_AttributeType *attributeType, id value, jboolean method) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintAttribute *create_ADXConstraintAttribute_initWithNSString_withADXConstraintAttribute_AttributeType_withId_withBoolean_(NSString *name, ADXConstraintAttribute_AttributeType *attributeType, id value, jboolean method);

FOUNDATION_EXPORT void ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(ADXConstraintAttribute *self, ADXConstraintAttribute *source, id value);

FOUNDATION_EXPORT ADXConstraintAttribute *new_ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(ADXConstraintAttribute *source, id value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintAttribute *create_ADXConstraintAttribute_initWithADXConstraintAttribute_withId_(ADXConstraintAttribute *source, id value);

FOUNDATION_EXPORT JavaUtilHashMap *ADXConstraintAttribute_extractAttributesWithJavaUtilHashMap_withADView_(JavaUtilHashMap *base, ADView *view);

FOUNDATION_EXPORT void ADXConstraintAttribute_setAttributesWithADView_withJavaUtilHashMap_(ADView *view, JavaUtilHashMap *map);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintAttribute)

@compatibility_alias AndroidxConstraintlayoutWidgetConstraintAttribute ADXConstraintAttribute;

#endif

#if !defined (ADXConstraintAttribute_AttributeType_) && (INCLUDE_ALL_ConstraintAttribute || defined(INCLUDE_ADXConstraintAttribute_AttributeType))
#define ADXConstraintAttribute_AttributeType_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ADXConstraintAttribute_AttributeType_Enum) {
  ADXConstraintAttribute_AttributeType_Enum_INT_TYPE = 0,
  ADXConstraintAttribute_AttributeType_Enum_FLOAT_TYPE = 1,
  ADXConstraintAttribute_AttributeType_Enum_COLOR_TYPE = 2,
  ADXConstraintAttribute_AttributeType_Enum_COLOR_DRAWABLE_TYPE = 3,
  ADXConstraintAttribute_AttributeType_Enum_STRING_TYPE = 4,
  ADXConstraintAttribute_AttributeType_Enum_BOOLEAN_TYPE = 5,
  ADXConstraintAttribute_AttributeType_Enum_DIMENSION_TYPE = 6,
  ADXConstraintAttribute_AttributeType_Enum_REFERENCE_TYPE = 7,
};

@interface ADXConstraintAttribute_AttributeType : JavaLangEnum

#pragma mark Public

+ (ADXConstraintAttribute_AttributeType *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ADXConstraintAttribute_AttributeType_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ADXConstraintAttribute_AttributeType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_values_[];

inline ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_get_INT_TYPE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAttribute_AttributeType, INT_TYPE)

inline ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_get_FLOAT_TYPE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAttribute_AttributeType, FLOAT_TYPE)

inline ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_get_COLOR_TYPE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAttribute_AttributeType, COLOR_TYPE)

inline ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_get_COLOR_DRAWABLE_TYPE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAttribute_AttributeType, COLOR_DRAWABLE_TYPE)

inline ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_get_STRING_TYPE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAttribute_AttributeType, STRING_TYPE)

inline ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_get_BOOLEAN_TYPE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAttribute_AttributeType, BOOLEAN_TYPE)

inline ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_get_DIMENSION_TYPE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAttribute_AttributeType, DIMENSION_TYPE)

inline ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_get_REFERENCE_TYPE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAttribute_AttributeType, REFERENCE_TYPE)

FOUNDATION_EXPORT IOSObjectArray *ADXConstraintAttribute_AttributeType_values(void);

FOUNDATION_EXPORT ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ADXConstraintAttribute_AttributeType *ADXConstraintAttribute_AttributeType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintAttribute_AttributeType)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ConstraintAttribute")
