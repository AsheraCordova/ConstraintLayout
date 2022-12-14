//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\Constraints.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Constraints")
#ifdef RESTRICT_Constraints
#define INCLUDE_ALL_Constraints 0
#else
#define INCLUDE_ALL_Constraints 1
#endif
#undef RESTRICT_Constraints

#if !defined (ADXConstraints_) && (INCLUDE_ALL_Constraints || defined(INCLUDE_ADXConstraints))
#define ADXConstraints_

#define RESTRICT_ViewGroup 1
#define INCLUDE_ADViewGroup 1
#include "ViewGroup.h"

@class ADXConstraintSet;

@interface ADXConstraints : ADViewGroup {
 @public
  ADXConstraintSet *myConstraintSet_;
}

#pragma mark Public

- (instancetype)init;

- (ADXConstraintSet *)getConstraintSet;

#pragma mark Protected

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)l
                    withInt:(jint)t
                    withInt:(jint)r
                    withInt:(jint)b;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraints)

J2OBJC_FIELD_SETTER(ADXConstraints, myConstraintSet_, ADXConstraintSet *)

FOUNDATION_EXPORT void ADXConstraints_init(ADXConstraints *self);

FOUNDATION_EXPORT ADXConstraints *new_ADXConstraints_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraints *create_ADXConstraints_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraints)

@compatibility_alias AndroidxConstraintlayoutWidgetConstraints ADXConstraints;

#endif

#if !defined (ADXConstraints_LayoutParams_) && (INCLUDE_ALL_Constraints || defined(INCLUDE_ADXConstraints_LayoutParams))
#define ADXConstraints_LayoutParams_

#define RESTRICT_ConstraintLayout 1
#define INCLUDE_ADXConstraintLayout_LayoutParams 1
#include "ConstraintLayout.h"

@class ADViewGroup_LayoutParams;

@interface ADXConstraints_LayoutParams : ADXConstraintLayout_LayoutParams {
 @public
  jfloat alpha_;
  jboolean applyElevation_;
  jfloat elevation_;
  jfloat rotation_;
  jfloat rotationX_;
  jfloat rotationY_;
  jfloat scaleX_;
  jfloat scaleY_;
  jfloat transformPivotX_;
  jfloat transformPivotY_;
  jfloat translationX_;
  jfloat translationY_;
  jfloat translationZ_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height;

- (instancetype)initWithADXConstraints_LayoutParams:(ADXConstraints_LayoutParams *)source;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithADXConstraintLayout_LayoutParams:(ADXConstraintLayout_LayoutParams *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraints_LayoutParams)

FOUNDATION_EXPORT void ADXConstraints_LayoutParams_initWithInt_withInt_(ADXConstraints_LayoutParams *self, jint width, jint height);

FOUNDATION_EXPORT ADXConstraints_LayoutParams *new_ADXConstraints_LayoutParams_initWithInt_withInt_(jint width, jint height) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraints_LayoutParams *create_ADXConstraints_LayoutParams_initWithInt_withInt_(jint width, jint height);

FOUNDATION_EXPORT void ADXConstraints_LayoutParams_initWithADXConstraints_LayoutParams_(ADXConstraints_LayoutParams *self, ADXConstraints_LayoutParams *source);

FOUNDATION_EXPORT ADXConstraints_LayoutParams *new_ADXConstraints_LayoutParams_initWithADXConstraints_LayoutParams_(ADXConstraints_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraints_LayoutParams *create_ADXConstraints_LayoutParams_initWithADXConstraints_LayoutParams_(ADXConstraints_LayoutParams *source);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraints_LayoutParams)

#endif

#pragma pop_macro("INCLUDE_ALL_Constraints")
