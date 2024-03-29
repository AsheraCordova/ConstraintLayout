//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\ConstraintLayout.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ConstraintLayout")
#ifdef RESTRICT_ConstraintLayout
#define INCLUDE_ALL_ConstraintLayout 0
#else
#define INCLUDE_ALL_ConstraintLayout 1
#endif
#undef RESTRICT_ConstraintLayout

#if !defined (ADXConstraintLayout_) && (INCLUDE_ALL_ConstraintLayout || defined(INCLUDE_ADXConstraintLayout))
#define ADXConstraintLayout_

#define RESTRICT_ViewGroup 1
#define INCLUDE_ADViewGroup 1
#include "ViewGroup.h"

@class ADSparseArray;
@class ADView;
@class ADXConstraintLayoutStates;
@class ADXConstraintLayout_LayoutParams;
@class ADXConstraintLayout_Measurer;
@class ADXConstraintSet;
@class ADXConstraintWidget;
@class ADXConstraintWidgetContainer;
@class ADXSharedValues;

@interface ADXConstraintLayout : ADViewGroup {
 @public
  ADSparseArray *mChildrenByIds_;
  ADXConstraintWidgetContainer *mLayoutWidget_;
  jboolean mDirtyHierarchy_;
  ADXConstraintLayoutStates *mConstraintLayoutSpec_;
  jint mLastMeasureWidthSize_;
  jint mLastMeasureHeightSize_;
  jint mLastMeasureWidthMode_;
  jint mLastMeasureHeightMode_;
  ADXConstraintLayout_Measurer *mMeasurer_;
}

#pragma mark Public

- (instancetype)init;

- (id)getDesignInformationWithInt:(jint)type
                           withId:(id)value;

- (jint)getMaxHeight;

- (jint)getMaxWidth;

- (jint)getMinHeight;

- (jint)getMinWidth;

- (jint)getOptimizationLevel;

+ (ADXSharedValues *)getSharedValues;

- (ADView *)getViewByIdWithInt:(jint)id_;

- (ADXConstraintWidget *)getViewWidgetWithADView:(ADView *)view;

- (void)onViewAddedWithADView:(ADView *)view;

- (void)onViewRemovedWithADView:(ADView *)view;

- (void)release__;

- (void)requestLayout;

- (void)setConstraintSetWithADXConstraintSet:(ADXConstraintSet *)set;

- (void)setDesignInformationWithInt:(jint)type
                             withId:(id)value1
                             withId:(id)value2;

- (void)setMaxHeightWithInt:(jint)value;

- (void)setMaxWidthWithInt:(jint)value;

- (void)setMinHeightWithInt:(jint)value;

- (void)setMinWidthWithInt:(jint)value;

- (void)setOptimizationLevelWithInt:(jint)level;

#pragma mark Protected

- (void)applyConstraintsFromLayoutParamsWithBoolean:(jboolean)isInEditMode
                                         withADView:(ADView *)child
                            withADXConstraintWidget:(ADXConstraintWidget *)widget
               withADXConstraintLayout_LayoutParams:(ADXConstraintLayout_LayoutParams *)layoutParams
                                  withADSparseArray:(ADSparseArray *)idToWidget;

- (ADXConstraintLayout_LayoutParams *)generateDefaultLayoutParams;

- (jboolean)isRtl;

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)left
                    withInt:(jint)top
                    withInt:(jint)right
                    withInt:(jint)bottom;

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

- (void)resolveMeasuredDimensionWithInt:(jint)widthMeasureSpec
                                withInt:(jint)heightMeasureSpec
                                withInt:(jint)measuredWidth
                                withInt:(jint)measuredHeight
                            withBoolean:(jboolean)isWidthMeasuredTooSmall
                            withBoolean:(jboolean)isHeightMeasuredTooSmall;

- (void)resolveSystemWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)layout
                                              withInt:(jint)optimizationLevel
                                              withInt:(jint)widthMeasureSpec
                                              withInt:(jint)heightMeasureSpec;

- (void)setSelfDimensionBehaviourWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)layout
                                                          withInt:(jint)widthMode
                                                          withInt:(jint)widthSize
                                                          withInt:(jint)heightMode
                                                          withInt:(jint)heightSize;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintLayout)

J2OBJC_FIELD_SETTER(ADXConstraintLayout, mChildrenByIds_, ADSparseArray *)
J2OBJC_FIELD_SETTER(ADXConstraintLayout, mLayoutWidget_, ADXConstraintWidgetContainer *)
J2OBJC_FIELD_SETTER(ADXConstraintLayout, mConstraintLayoutSpec_, ADXConstraintLayoutStates *)
J2OBJC_FIELD_SETTER(ADXConstraintLayout, mMeasurer_, ADXConstraintLayout_Measurer *)

inline NSString *ADXConstraintLayout_get_VERSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXConstraintLayout_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXConstraintLayout, VERSION, NSString *)

inline jint ADXConstraintLayout_get_DESIGN_INFO_ID(void);
#define ADXConstraintLayout_DESIGN_INFO_ID 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout, DESIGN_INFO_ID, jint)

FOUNDATION_EXPORT ADXSharedValues *ADXConstraintLayout_getSharedValues(void);

FOUNDATION_EXPORT void ADXConstraintLayout_init(ADXConstraintLayout *self);

FOUNDATION_EXPORT ADXConstraintLayout *new_ADXConstraintLayout_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintLayout *create_ADXConstraintLayout_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintLayout)

@compatibility_alias AndroidxConstraintlayoutWidgetConstraintLayout ADXConstraintLayout;

#endif

#if !defined (ADXConstraintLayout_Measurer_) && (INCLUDE_ALL_ConstraintLayout || defined(INCLUDE_ADXConstraintLayout_Measurer))
#define ADXConstraintLayout_Measurer_

#define RESTRICT_BasicMeasure 1
#define INCLUDE_ADXBasicMeasure_Measurer 1
#include "BasicMeasure.h"

@class ADXBasicMeasure_Measure;
@class ADXConstraintLayout;
@class ADXConstraintWidget;

@interface ADXConstraintLayout_Measurer : NSObject < ADXBasicMeasure_Measurer > {
 @public
  __unsafe_unretained ADXConstraintLayout *layout_;
  jint paddingTop_;
  jint paddingBottom_;
  jint paddingWidth_;
  jint paddingHeight_;
  jint layoutWidthSpec_;
  jint layoutHeightSpec_;
}

#pragma mark Public

- (instancetype)initWithADXConstraintLayout:(ADXConstraintLayout *)outer$
                    withADXConstraintLayout:(ADXConstraintLayout *)l;

- (void)captureLayoutInfoWithInt:(jint)widthSpec
                         withInt:(jint)heightSpec
                         withInt:(jint)top
                         withInt:(jint)bottom
                         withInt:(jint)width
                         withInt:(jint)height;

- (void)didMeasures;

- (void)measureWithADXConstraintWidget:(ADXConstraintWidget *)widget
           withADXBasicMeasure_Measure:(ADXBasicMeasure_Measure *)measure;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintLayout_Measurer)

FOUNDATION_EXPORT void ADXConstraintLayout_Measurer_initWithADXConstraintLayout_withADXConstraintLayout_(ADXConstraintLayout_Measurer *self, ADXConstraintLayout *outer$, ADXConstraintLayout *l);

FOUNDATION_EXPORT ADXConstraintLayout_Measurer *new_ADXConstraintLayout_Measurer_initWithADXConstraintLayout_withADXConstraintLayout_(ADXConstraintLayout *outer$, ADXConstraintLayout *l) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintLayout_Measurer *create_ADXConstraintLayout_Measurer_initWithADXConstraintLayout_withADXConstraintLayout_(ADXConstraintLayout *outer$, ADXConstraintLayout *l);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintLayout_Measurer)

#endif

#if !defined (ADXConstraintLayout_LayoutParams_) && (INCLUDE_ALL_ConstraintLayout || defined(INCLUDE_ADXConstraintLayout_LayoutParams))
#define ADXConstraintLayout_LayoutParams_

#define RESTRICT_ViewGroup 1
#define INCLUDE_ADViewGroup_MarginLayoutParams 1
#include "ViewGroup.h"

@class ADViewGroup_LayoutParams;
@class ADXConstraintWidget;

@interface ADXConstraintLayout_LayoutParams : ADViewGroup_MarginLayoutParams {
 @public
  jint guideBegin_;
  jint guideEnd_;
  jfloat guidePercent_;
  jint leftToLeft_;
  jint leftToRight_;
  jint rightToLeft_;
  jint rightToRight_;
  jint topToTop_;
  jint topToBottom_;
  jint bottomToTop_;
  jint bottomToBottom_;
  jint baselineToBaseline_;
  jint baselineToTop_;
  jint baselineToBottom_;
  jint circleConstraint_;
  jint circleRadius_;
  jfloat circleAngle_;
  jint startToEnd_;
  jint startToStart_;
  jint endToStart_;
  jint endToEnd_;
  jint goneLeftMargin_;
  jint goneTopMargin_;
  jint goneRightMargin_;
  jint goneBottomMargin_;
  jint goneStartMargin_;
  jint goneEndMargin_;
  jint goneBaselineMargin_;
  jint baselineMargin_;
  jboolean widthSet_;
  jboolean heightSet_;
  jfloat horizontalBias_;
  jfloat verticalBias_;
  NSString *dimensionRatio_;
  jfloat dimensionRatioValue_;
  jint dimensionRatioSide_;
  jfloat horizontalWeight_;
  jfloat verticalWeight_;
  jint horizontalChainStyle_;
  jint verticalChainStyle_;
  jint matchConstraintDefaultWidth_;
  jint matchConstraintDefaultHeight_;
  jint matchConstraintMinWidth_;
  jint matchConstraintMinHeight_;
  jint matchConstraintMaxWidth_;
  jint matchConstraintMaxHeight_;
  jfloat matchConstraintPercentWidth_;
  jfloat matchConstraintPercentHeight_;
  jint editorAbsoluteX_;
  jint editorAbsoluteY_;
  jint orientation_;
  jboolean constrainedWidth_;
  jboolean constrainedHeight_;
  NSString *constraintTag_;
  jint wrapBehaviorInParent_;
  jboolean horizontalDimensionFixed_;
  jboolean verticalDimensionFixed_;
  jboolean needsBaseline_;
  jboolean isGuideline_;
  jboolean isHelper_;
  jboolean isInPlaceholder_;
  jboolean isVirtualGroup_;
  jint resolvedLeftToLeft_;
  jint resolvedLeftToRight_;
  jint resolvedRightToLeft_;
  jint resolvedRightToRight_;
  jint resolveGoneLeftMargin_;
  jint resolveGoneRightMargin_;
  jfloat resolvedHorizontalBias_;
  jint resolvedGuideBegin_;
  jint resolvedGuideEnd_;
  jfloat resolvedGuidePercent_;
  ADXConstraintWidget *widget_;
  jboolean helped_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height;

- (instancetype)initWithADXConstraintLayout_LayoutParams:(ADXConstraintLayout_LayoutParams *)source;

- (instancetype)initWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)source;

- (NSString *)getConstraintTag;

- (void)resolveLayoutDirectionWithInt:(jint)layoutDirection;

- (void)validate;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADViewGroup_MarginLayoutParams:(ADViewGroup_MarginLayoutParams *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintLayout_LayoutParams)

J2OBJC_FIELD_SETTER(ADXConstraintLayout_LayoutParams, dimensionRatio_, NSString *)
J2OBJC_FIELD_SETTER(ADXConstraintLayout_LayoutParams, constraintTag_, NSString *)
J2OBJC_FIELD_SETTER(ADXConstraintLayout_LayoutParams, widget_, ADXConstraintWidget *)

inline jint ADXConstraintLayout_LayoutParams_get_MATCH_CONSTRAINT(void);
#define ADXConstraintLayout_LayoutParams_MATCH_CONSTRAINT 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, MATCH_CONSTRAINT, jint)

inline jint ADXConstraintLayout_LayoutParams_get_PARENT_ID(void);
#define ADXConstraintLayout_LayoutParams_PARENT_ID 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, PARENT_ID, jint)

inline jint ADXConstraintLayout_LayoutParams_get_UNSET(void);
#define ADXConstraintLayout_LayoutParams_UNSET -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, UNSET, jint)

inline jint ADXConstraintLayout_LayoutParams_get_GONE_UNSET(void);
#define ADXConstraintLayout_LayoutParams_GONE_UNSET ((jint) 0x80000000)
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, GONE_UNSET, jint)

inline jint ADXConstraintLayout_LayoutParams_get_HORIZONTAL(void);
#define ADXConstraintLayout_LayoutParams_HORIZONTAL 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, HORIZONTAL, jint)

inline jint ADXConstraintLayout_LayoutParams_get_VERTICAL(void);
#define ADXConstraintLayout_LayoutParams_VERTICAL 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, VERTICAL, jint)

inline jint ADXConstraintLayout_LayoutParams_get_LEFT(void);
#define ADXConstraintLayout_LayoutParams_LEFT 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, LEFT, jint)

inline jint ADXConstraintLayout_LayoutParams_get_RIGHT(void);
#define ADXConstraintLayout_LayoutParams_RIGHT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, RIGHT, jint)

inline jint ADXConstraintLayout_LayoutParams_get_TOP(void);
#define ADXConstraintLayout_LayoutParams_TOP 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, TOP, jint)

inline jint ADXConstraintLayout_LayoutParams_get_BOTTOM(void);
#define ADXConstraintLayout_LayoutParams_BOTTOM 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, BOTTOM, jint)

inline jint ADXConstraintLayout_LayoutParams_get_BASELINE(void);
#define ADXConstraintLayout_LayoutParams_BASELINE 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, BASELINE, jint)

inline jint ADXConstraintLayout_LayoutParams_get_START(void);
#define ADXConstraintLayout_LayoutParams_START 6
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, START, jint)

inline jint ADXConstraintLayout_LayoutParams_get_END(void);
#define ADXConstraintLayout_LayoutParams_END 7
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, END, jint)

inline jint ADXConstraintLayout_LayoutParams_get_CIRCLE(void);
#define ADXConstraintLayout_LayoutParams_CIRCLE 8
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, CIRCLE, jint)

inline jint ADXConstraintLayout_LayoutParams_get_MATCH_CONSTRAINT_WRAP(void);
#define ADXConstraintLayout_LayoutParams_MATCH_CONSTRAINT_WRAP 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, MATCH_CONSTRAINT_WRAP, jint)

inline jint ADXConstraintLayout_LayoutParams_get_MATCH_CONSTRAINT_SPREAD(void);
#define ADXConstraintLayout_LayoutParams_MATCH_CONSTRAINT_SPREAD 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, MATCH_CONSTRAINT_SPREAD, jint)

inline jint ADXConstraintLayout_LayoutParams_get_MATCH_CONSTRAINT_PERCENT(void);
#define ADXConstraintLayout_LayoutParams_MATCH_CONSTRAINT_PERCENT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, MATCH_CONSTRAINT_PERCENT, jint)

inline jint ADXConstraintLayout_LayoutParams_get_CHAIN_SPREAD(void);
#define ADXConstraintLayout_LayoutParams_CHAIN_SPREAD 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, CHAIN_SPREAD, jint)

inline jint ADXConstraintLayout_LayoutParams_get_CHAIN_SPREAD_INSIDE(void);
#define ADXConstraintLayout_LayoutParams_CHAIN_SPREAD_INSIDE 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, CHAIN_SPREAD_INSIDE, jint)

inline jint ADXConstraintLayout_LayoutParams_get_CHAIN_PACKED(void);
#define ADXConstraintLayout_LayoutParams_CHAIN_PACKED 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, CHAIN_PACKED, jint)

inline jint ADXConstraintLayout_LayoutParams_get_WRAP_BEHAVIOR_INCLUDED(void);
#define ADXConstraintLayout_LayoutParams_WRAP_BEHAVIOR_INCLUDED 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, WRAP_BEHAVIOR_INCLUDED, jint)

inline jint ADXConstraintLayout_LayoutParams_get_WRAP_BEHAVIOR_HORIZONTAL_ONLY(void);
#define ADXConstraintLayout_LayoutParams_WRAP_BEHAVIOR_HORIZONTAL_ONLY 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, WRAP_BEHAVIOR_HORIZONTAL_ONLY, jint)

inline jint ADXConstraintLayout_LayoutParams_get_WRAP_BEHAVIOR_VERTICAL_ONLY(void);
#define ADXConstraintLayout_LayoutParams_WRAP_BEHAVIOR_VERTICAL_ONLY 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, WRAP_BEHAVIOR_VERTICAL_ONLY, jint)

inline jint ADXConstraintLayout_LayoutParams_get_WRAP_BEHAVIOR_SKIPPED(void);
#define ADXConstraintLayout_LayoutParams_WRAP_BEHAVIOR_SKIPPED 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintLayout_LayoutParams, WRAP_BEHAVIOR_SKIPPED, jint)

FOUNDATION_EXPORT void ADXConstraintLayout_LayoutParams_initWithADXConstraintLayout_LayoutParams_(ADXConstraintLayout_LayoutParams *self, ADXConstraintLayout_LayoutParams *source);

FOUNDATION_EXPORT ADXConstraintLayout_LayoutParams *new_ADXConstraintLayout_LayoutParams_initWithADXConstraintLayout_LayoutParams_(ADXConstraintLayout_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintLayout_LayoutParams *create_ADXConstraintLayout_LayoutParams_initWithADXConstraintLayout_LayoutParams_(ADXConstraintLayout_LayoutParams *source);

FOUNDATION_EXPORT void ADXConstraintLayout_LayoutParams_initWithInt_withInt_(ADXConstraintLayout_LayoutParams *self, jint width, jint height);

FOUNDATION_EXPORT ADXConstraintLayout_LayoutParams *new_ADXConstraintLayout_LayoutParams_initWithInt_withInt_(jint width, jint height) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintLayout_LayoutParams *create_ADXConstraintLayout_LayoutParams_initWithInt_withInt_(jint width, jint height);

FOUNDATION_EXPORT void ADXConstraintLayout_LayoutParams_initWithADViewGroup_LayoutParams_(ADXConstraintLayout_LayoutParams *self, ADViewGroup_LayoutParams *source);

FOUNDATION_EXPORT ADXConstraintLayout_LayoutParams *new_ADXConstraintLayout_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintLayout_LayoutParams *create_ADXConstraintLayout_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *source);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintLayout_LayoutParams)

#endif

#pragma pop_macro("INCLUDE_ALL_ConstraintLayout")
