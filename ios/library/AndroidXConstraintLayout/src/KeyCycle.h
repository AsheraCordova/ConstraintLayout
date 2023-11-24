//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\KeyCycle.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_KeyCycle")
#ifdef RESTRICT_KeyCycle
#define INCLUDE_ALL_KeyCycle 0
#else
#define INCLUDE_ALL_KeyCycle 1
#endif
#undef RESTRICT_KeyCycle

#if !defined (ADXKeyCycle_) && (INCLUDE_ALL_KeyCycle || defined(INCLUDE_ADXKeyCycle))
#define ADXKeyCycle_

#define RESTRICT_Key 1
#define INCLUDE_ADXKey 1
#include "Key.h"

@class ADAttributeSet;
@class ADContext;
@class JavaUtilHashMap;
@class JavaUtilHashSet;

/*!
 @brief Provide the passive data structure to get KeyPosition information form XML
 */
@interface ADXKeyCycle : ADXKey {
 @public
  jint mWaveShape_;
  jfloat mWavePeriod_;
  jfloat mWaveOffset_;
  jfloat mWavePhase_;
  jint mWaveVariesBy_;
}

#pragma mark Public

- (instancetype)init;

- (void)addCycleValuesWithJavaUtilHashMap:(JavaUtilHashMap *)oscSet;

- (void)addValuesWithJavaUtilHashMap:(JavaUtilHashMap *)splines;

- (ADXKey *)java_clone;

- (ADXKey *)copy__WithADXKey:(ADXKey *)src OBJC_METHOD_FAMILY_NONE;

- (void)getAttributeNamesWithJavaUtilHashSet:(JavaUtilHashSet *)attributes;

- (jfloat)getValueWithNSString:(NSString *)key;

- (void)load__WithADContext:(ADContext *)context
         withADAttributeSet:(ADAttributeSet *)attrs;

- (void)setValueWithNSString:(NSString *)tag
                      withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXKeyCycle)

inline NSString *ADXKeyCycle_get_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyCycle_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyCycle, NAME, NSString *)

inline NSString *ADXKeyCycle_get_WAVE_PERIOD(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyCycle_WAVE_PERIOD;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyCycle, WAVE_PERIOD, NSString *)

inline NSString *ADXKeyCycle_get_WAVE_OFFSET(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyCycle_WAVE_OFFSET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyCycle, WAVE_OFFSET, NSString *)

inline NSString *ADXKeyCycle_get_WAVE_PHASE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyCycle_WAVE_PHASE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyCycle, WAVE_PHASE, NSString *)

inline NSString *ADXKeyCycle_get_WAVE_SHAPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyCycle_WAVE_SHAPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyCycle, WAVE_SHAPE, NSString *)

inline jint ADXKeyCycle_get_SHAPE_SIN_WAVE(void);
#define ADXKeyCycle_SHAPE_SIN_WAVE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyCycle, SHAPE_SIN_WAVE, jint)

inline jint ADXKeyCycle_get_SHAPE_SQUARE_WAVE(void);
#define ADXKeyCycle_SHAPE_SQUARE_WAVE 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyCycle, SHAPE_SQUARE_WAVE, jint)

inline jint ADXKeyCycle_get_SHAPE_TRIANGLE_WAVE(void);
#define ADXKeyCycle_SHAPE_TRIANGLE_WAVE 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyCycle, SHAPE_TRIANGLE_WAVE, jint)

inline jint ADXKeyCycle_get_SHAPE_SAW_WAVE(void);
#define ADXKeyCycle_SHAPE_SAW_WAVE 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyCycle, SHAPE_SAW_WAVE, jint)

inline jint ADXKeyCycle_get_SHAPE_REVERSE_SAW_WAVE(void);
#define ADXKeyCycle_SHAPE_REVERSE_SAW_WAVE 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyCycle, SHAPE_REVERSE_SAW_WAVE, jint)

inline jint ADXKeyCycle_get_SHAPE_COS_WAVE(void);
#define ADXKeyCycle_SHAPE_COS_WAVE 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyCycle, SHAPE_COS_WAVE, jint)

inline jint ADXKeyCycle_get_SHAPE_BOUNCE(void);
#define ADXKeyCycle_SHAPE_BOUNCE 6
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyCycle, SHAPE_BOUNCE, jint)

inline jint ADXKeyCycle_get_KEY_TYPE(void);
#define ADXKeyCycle_KEY_TYPE 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyCycle, KEY_TYPE, jint)

FOUNDATION_EXPORT void ADXKeyCycle_init(ADXKeyCycle *self);

FOUNDATION_EXPORT ADXKeyCycle *new_ADXKeyCycle_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXKeyCycle *create_ADXKeyCycle_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXKeyCycle)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetKeyCycle ADXKeyCycle;

#endif

#pragma pop_macro("INCLUDE_ALL_KeyCycle")