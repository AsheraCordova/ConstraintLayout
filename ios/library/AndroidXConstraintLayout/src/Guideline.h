//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\Guideline.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Guideline")
#ifdef RESTRICT_Guideline
#define INCLUDE_ALL_Guideline 0
#else
#define INCLUDE_ALL_Guideline 1
#endif
#undef RESTRICT_Guideline

#if !defined (ADXGuideline_) && (INCLUDE_ALL_Guideline || defined(INCLUDE_ADXGuideline))
#define ADXGuideline_

#define RESTRICT_View 1
#define INCLUDE_ADView 1
#include "View.h"

@class ADContext;

@interface ADXGuideline : ADView

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithADContext:(ADContext *)context;

- (void)setGuidelineBeginWithInt:(jint)margin;

- (void)setGuidelineEndWithInt:(jint)margin;

- (void)setGuidelinePercentWithFloat:(jfloat)ratio;

- (void)setVisibilityWithInt:(jint)visibility;

#pragma mark Protected

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

@end

J2OBJC_STATIC_INIT(ADXGuideline)

FOUNDATION_EXPORT void ADXGuideline_initWithADContext_(ADXGuideline *self, ADContext *context);

FOUNDATION_EXPORT ADXGuideline *new_ADXGuideline_initWithADContext_(ADContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGuideline *create_ADXGuideline_initWithADContext_(ADContext *context);

FOUNDATION_EXPORT void ADXGuideline_init(ADXGuideline *self);

FOUNDATION_EXPORT ADXGuideline *new_ADXGuideline_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGuideline *create_ADXGuideline_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXGuideline)

@compatibility_alias AndroidxConstraintlayoutWidgetGuideline ADXGuideline;

#endif

#pragma pop_macro("INCLUDE_ALL_Guideline")
