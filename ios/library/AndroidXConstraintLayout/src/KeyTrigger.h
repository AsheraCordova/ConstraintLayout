//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\KeyTrigger.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_KeyTrigger")
#ifdef RESTRICT_KeyTrigger
#define INCLUDE_ALL_KeyTrigger 0
#else
#define INCLUDE_ALL_KeyTrigger 1
#endif
#undef RESTRICT_KeyTrigger

#if !defined (ADXKeyTrigger_) && (INCLUDE_ALL_KeyTrigger || defined(INCLUDE_ADXKeyTrigger))
#define ADXKeyTrigger_

#define RESTRICT_Key 1
#define INCLUDE_ADXKey 1
#include "Key.h"

@class ADAttributeSet;
@class ADContext;
@class ADRectF;
@class ADView;
@class JavaUtilHashMap;
@class JavaUtilHashSet;

/*!
 @brief Defines container for a key frame of for storing KeyAttributes.
 KeyAttributes change post layout values of a view.
 */
@interface ADXKeyTrigger : ADXKey {
 @public
  jfloat mTriggerSlack_;
  jfloat mFireThreshold_;
  jint mViewTransitionOnNegativeCross_;
  jint mViewTransitionOnPositiveCross_;
  jint mViewTransitionOnCross_;
  ADRectF *mCollisionRect_;
  ADRectF *mTargetRect_;
  JavaUtilHashMap *mMethodHashMap_;
}

#pragma mark Public

- (instancetype)init;

- (void)addValuesWithJavaUtilHashMap:(JavaUtilHashMap *)splines;

- (ADXKey *)java_clone;

- (void)conditionallyFireWithFloat:(jfloat)pos
                        withADView:(ADView *)child;

- (ADXKey *)copy__WithADXKey:(ADXKey *)src OBJC_METHOD_FAMILY_NONE;

- (void)getAttributeNamesWithJavaUtilHashSet:(JavaUtilHashSet *)attributes;

- (void)load__WithADContext:(ADContext *)context
         withADAttributeSet:(ADAttributeSet *)attrs;

- (void)setValueWithNSString:(NSString *)tag
                      withId:(id)value;

#pragma mark Package-Private

/*!
 @brief Gets the curve fit type this drives the interpolation
 */
- (jint)getCurveFit;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXKeyTrigger)

J2OBJC_FIELD_SETTER(ADXKeyTrigger, mCollisionRect_, ADRectF *)
J2OBJC_FIELD_SETTER(ADXKeyTrigger, mTargetRect_, ADRectF *)
J2OBJC_FIELD_SETTER(ADXKeyTrigger, mMethodHashMap_, JavaUtilHashMap *)

inline NSString *ADXKeyTrigger_get_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, NAME, NSString *)

inline NSString *ADXKeyTrigger_get_VIEW_TRANSITION_ON_CROSS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_VIEW_TRANSITION_ON_CROSS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, VIEW_TRANSITION_ON_CROSS, NSString *)

inline NSString *ADXKeyTrigger_get_VIEW_TRANSITION_ON_POSITIVE_CROSS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_VIEW_TRANSITION_ON_POSITIVE_CROSS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, VIEW_TRANSITION_ON_POSITIVE_CROSS, NSString *)

inline NSString *ADXKeyTrigger_get_VIEW_TRANSITION_ON_NEGATIVE_CROSS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_VIEW_TRANSITION_ON_NEGATIVE_CROSS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, VIEW_TRANSITION_ON_NEGATIVE_CROSS, NSString *)

inline NSString *ADXKeyTrigger_get_POST_LAYOUT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_POST_LAYOUT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, POST_LAYOUT, NSString *)

inline NSString *ADXKeyTrigger_get_TRIGGER_SLACK(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_TRIGGER_SLACK;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, TRIGGER_SLACK, NSString *)

inline NSString *ADXKeyTrigger_get_TRIGGER_COLLISION_VIEW(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_TRIGGER_COLLISION_VIEW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, TRIGGER_COLLISION_VIEW, NSString *)

inline NSString *ADXKeyTrigger_get_TRIGGER_COLLISION_ID(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_TRIGGER_COLLISION_ID;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, TRIGGER_COLLISION_ID, NSString *)

inline NSString *ADXKeyTrigger_get_TRIGGER_ID(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_TRIGGER_ID;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, TRIGGER_ID, NSString *)

inline NSString *ADXKeyTrigger_get_POSITIVE_CROSS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_POSITIVE_CROSS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, POSITIVE_CROSS, NSString *)

inline NSString *ADXKeyTrigger_get_NEGATIVE_CROSS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_NEGATIVE_CROSS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, NEGATIVE_CROSS, NSString *)

inline NSString *ADXKeyTrigger_get_TRIGGER_RECEIVER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_TRIGGER_RECEIVER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, TRIGGER_RECEIVER, NSString *)

inline NSString *ADXKeyTrigger_get_CROSS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXKeyTrigger_CROSS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXKeyTrigger, CROSS, NSString *)

inline jint ADXKeyTrigger_get_KEY_TYPE(void);
#define ADXKeyTrigger_KEY_TYPE 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyTrigger, KEY_TYPE, jint)

FOUNDATION_EXPORT void ADXKeyTrigger_init(ADXKeyTrigger *self);

FOUNDATION_EXPORT ADXKeyTrigger *new_ADXKeyTrigger_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXKeyTrigger *create_ADXKeyTrigger_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXKeyTrigger)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetKeyTrigger ADXKeyTrigger;

#endif

#pragma pop_macro("INCLUDE_ALL_KeyTrigger")
