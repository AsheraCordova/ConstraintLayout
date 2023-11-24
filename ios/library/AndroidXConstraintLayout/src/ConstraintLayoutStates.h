//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\ConstraintLayoutStates.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ConstraintLayoutStates")
#ifdef RESTRICT_ConstraintLayoutStates
#define INCLUDE_ALL_ConstraintLayoutStates 0
#else
#define INCLUDE_ALL_ConstraintLayoutStates 1
#endif
#undef RESTRICT_ConstraintLayoutStates

#if !defined (ADXConstraintLayoutStates_) && (INCLUDE_ALL_ConstraintLayoutStates || defined(INCLUDE_ADXConstraintLayoutStates))
#define ADXConstraintLayoutStates_

@class ADContext;
@class ADXConstraintLayout;
@class ADXConstraintSet;
@class ADXConstraintsChangedListener;

/*!
 */
@interface ADXConstraintLayoutStates : NSObject {
 @public
  ADXConstraintSet *mDefaultConstraintSet_;
  jint mCurrentStateId_;
  jint mCurrentConstraintNumber_;
}

#pragma mark Public

/*!
 @brief Return true if it needs to change
 @param id_
 @param width
 @param height
 */
- (jboolean)needsToChangeWithInt:(jint)id_
                       withFloat:(jfloat)width
                       withFloat:(jfloat)height;

- (void)setOnConstraintsChangedWithADXConstraintsChangedListener:(ADXConstraintsChangedListener *)constraintsChangedListener;

/*!
 @brief updateConstraints for the view with the id and width and height
 @param id_
 @param width
 @param height
 */
- (void)updateConstraintsWithInt:(jint)id_
                       withFloat:(jfloat)width
                       withFloat:(jfloat)height;

#pragma mark Package-Private

- (instancetype)initWithADContext:(ADContext *)context
          withADXConstraintLayout:(ADXConstraintLayout *)layout
                          withInt:(jint)resourceID;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintLayoutStates)

J2OBJC_FIELD_SETTER(ADXConstraintLayoutStates, mDefaultConstraintSet_, ADXConstraintSet *)

inline NSString *ADXConstraintLayoutStates_get_TAG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXConstraintLayoutStates_TAG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXConstraintLayoutStates, TAG, NSString *)

FOUNDATION_EXPORT void ADXConstraintLayoutStates_initWithADContext_withADXConstraintLayout_withInt_(ADXConstraintLayoutStates *self, ADContext *context, ADXConstraintLayout *layout, jint resourceID);

FOUNDATION_EXPORT ADXConstraintLayoutStates *new_ADXConstraintLayoutStates_initWithADContext_withADXConstraintLayout_withInt_(ADContext *context, ADXConstraintLayout *layout, jint resourceID) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintLayoutStates *create_ADXConstraintLayoutStates_initWithADContext_withADXConstraintLayout_withInt_(ADContext *context, ADXConstraintLayout *layout, jint resourceID);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintLayoutStates)

@compatibility_alias AndroidxConstraintlayoutWidgetConstraintLayoutStates ADXConstraintLayoutStates;

#endif

#if !defined (ADXConstraintLayoutStates_State_) && (INCLUDE_ALL_ConstraintLayoutStates || defined(INCLUDE_ADXConstraintLayoutStates_State))
#define ADXConstraintLayoutStates_State_

@class ADXConstraintLayoutStates_Variant;
@class ADXConstraintSet;
@class JavaUtilArrayList;

@interface ADXConstraintLayoutStates_State : NSObject {
 @public
  jint mId_;
  JavaUtilArrayList *mVariants_;
  jint mConstraintID_;
  ADXConstraintSet *mConstraintSet_;
}

#pragma mark Public

- (jint)findMatchWithFloat:(jfloat)width
                 withFloat:(jfloat)height;

#pragma mark Package-Private

- (instancetype)init;

- (void)addWithADXConstraintLayoutStates_Variant:(ADXConstraintLayoutStates_Variant *)size;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintLayoutStates_State)

J2OBJC_FIELD_SETTER(ADXConstraintLayoutStates_State, mVariants_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ADXConstraintLayoutStates_State, mConstraintSet_, ADXConstraintSet *)

FOUNDATION_EXPORT void ADXConstraintLayoutStates_State_init(ADXConstraintLayoutStates_State *self);

FOUNDATION_EXPORT ADXConstraintLayoutStates_State *new_ADXConstraintLayoutStates_State_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintLayoutStates_State *create_ADXConstraintLayoutStates_State_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintLayoutStates_State)

#endif

#if !defined (ADXConstraintLayoutStates_Variant_) && (INCLUDE_ALL_ConstraintLayoutStates || defined(INCLUDE_ADXConstraintLayoutStates_Variant))
#define ADXConstraintLayoutStates_Variant_

@class ADXConstraintSet;

@interface ADXConstraintLayoutStates_Variant : NSObject {
 @public
  jint mId_;
  jfloat mMinWidth_;
  jfloat mMinHeight_;
  jfloat mMaxWidth_;
  jfloat mMaxHeight_;
  jint mConstraintID_;
  ADXConstraintSet *mConstraintSet_;
}

#pragma mark Package-Private

- (instancetype)init;

- (jboolean)matchWithFloat:(jfloat)widthDp
                 withFloat:(jfloat)heightDp;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintLayoutStates_Variant)

J2OBJC_FIELD_SETTER(ADXConstraintLayoutStates_Variant, mConstraintSet_, ADXConstraintSet *)

FOUNDATION_EXPORT void ADXConstraintLayoutStates_Variant_init(ADXConstraintLayoutStates_Variant *self);

FOUNDATION_EXPORT ADXConstraintLayoutStates_Variant *new_ADXConstraintLayoutStates_Variant_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintLayoutStates_Variant *create_ADXConstraintLayoutStates_Variant_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintLayoutStates_Variant)

#endif

#pragma pop_macro("INCLUDE_ALL_ConstraintLayoutStates")
