//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\KeyAttributes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_KeyAttributes")
#ifdef RESTRICT_KeyAttributes
#define INCLUDE_ALL_KeyAttributes 0
#else
#define INCLUDE_ALL_KeyAttributes 1
#endif
#undef RESTRICT_KeyAttributes

#if !defined (ADXKeyAttributes_) && (INCLUDE_ALL_KeyAttributes || defined(INCLUDE_ADXKeyAttributes))
#define ADXKeyAttributes_

#define RESTRICT_Key 1
#define INCLUDE_ADXKey 1
#include "Key.h"

@class ADAttributeSet;
@class ADContext;
@class JavaUtilHashMap;
@class JavaUtilHashSet;

/*!
 @brief Defines container for a key frame of for storing KeyAttributes.
 KeyAttributes change post layout values of a view.
 */
@interface ADXKeyAttributes : ADXKey

#pragma mark Public

- (instancetype)init;

- (void)addValuesWithJavaUtilHashMap:(JavaUtilHashMap *)splines;

- (ADXKey *)java_clone;

- (ADXKey *)copy__WithADXKey:(ADXKey *)src OBJC_METHOD_FAMILY_NONE;

- (void)getAttributeNamesWithJavaUtilHashSet:(JavaUtilHashSet *)attributes;

- (void)load__WithADContext:(ADContext *)context
         withADAttributeSet:(ADAttributeSet *)attrs;

- (void)setInterpolationWithJavaUtilHashMap:(JavaUtilHashMap *)interpolation;

- (void)setValueWithNSString:(NSString *)tag
                      withId:(id)value;

#pragma mark Package-Private

/*!
 @brief Gets the curve fit type this drives the interpolation
 */
- (jint)getCurveFit;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXKeyAttributes)

inline NSString *ADXKeyAttributes_get_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyAttributes_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyAttributes, NAME, NSString *)

inline jint ADXKeyAttributes_get_KEY_TYPE(void);
#define ADXKeyAttributes_KEY_TYPE 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyAttributes, KEY_TYPE, jint)

FOUNDATION_EXPORT void ADXKeyAttributes_init(ADXKeyAttributes *self);

FOUNDATION_EXPORT ADXKeyAttributes *new_ADXKeyAttributes_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXKeyAttributes *create_ADXKeyAttributes_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXKeyAttributes)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetKeyAttributes ADXKeyAttributes;

#endif

#pragma pop_macro("INCLUDE_ALL_KeyAttributes")
