//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\ConstraintSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ConstraintSet")
#ifdef RESTRICT_ConstraintSet
#define INCLUDE_ALL_ConstraintSet 0
#else
#define INCLUDE_ALL_ConstraintSet 1
#endif
#undef RESTRICT_ConstraintSet

#if !defined (ADXConstraintSet_) && (INCLUDE_ALL_ConstraintSet || defined(INCLUDE_ADXConstraintSet))
#define ADXConstraintSet_

@class ADSparseArray;
@class ADXConstraintHelper;
@class ADXConstraintLayout;
@class ADXConstraintLayout_LayoutParams;
@class ADXConstraintSet_Constraint;
@class ADXConstraintWidget;
@class ADXConstraints;
@class IOSFloatArray;
@class IOSIntArray;

@interface ADXConstraintSet : NSObject {
 @public
  NSString *mIdString_;
  NSString *derivedState_;
  jint mRotate_;
}

#pragma mark Public

- (instancetype)init;

- (void)addToHorizontalChainWithInt:(jint)viewId
                            withInt:(jint)leftId
                            withInt:(jint)rightId;

- (void)addToHorizontalChainRTLWithInt:(jint)viewId
                               withInt:(jint)leftId
                               withInt:(jint)rightId;

- (void)addToVerticalChainWithInt:(jint)viewId
                          withInt:(jint)topId
                          withInt:(jint)bottomId;

- (void)applyCustomAttributesWithADXConstraintLayout:(ADXConstraintLayout *)constraintLayout;

- (void)applyDeltaFromWithADXConstraintSet:(ADXConstraintSet *)cs;

- (void)applyToWithADXConstraintLayout:(ADXConstraintLayout *)constraintLayout;

- (void)applyToHelperWithADXConstraintHelper:(ADXConstraintHelper *)helper
                     withADXConstraintWidget:(ADXConstraintWidget *)child
        withADXConstraintLayout_LayoutParams:(ADXConstraintLayout_LayoutParams *)layoutParams
                           withADSparseArray:(ADSparseArray *)mapIdToWidget;

- (void)applyToLayoutParamsWithInt:(jint)id_
withADXConstraintLayout_LayoutParams:(ADXConstraintLayout_LayoutParams *)layoutParams;

- (void)centerWithInt:(jint)centerID
              withInt:(jint)firstID
              withInt:(jint)firstSide
              withInt:(jint)firstMargin
              withInt:(jint)secondId
              withInt:(jint)secondSide
              withInt:(jint)secondMargin
            withFloat:(jfloat)bias;

- (void)centerHorizontallyWithInt:(jint)viewId
                          withInt:(jint)toView;

- (void)centerHorizontallyWithInt:(jint)centerID
                          withInt:(jint)leftId
                          withInt:(jint)leftSide
                          withInt:(jint)leftMargin
                          withInt:(jint)rightId
                          withInt:(jint)rightSide
                          withInt:(jint)rightMargin
                        withFloat:(jfloat)bias;

- (void)centerHorizontallyRtlWithInt:(jint)viewId
                             withInt:(jint)toView;

- (void)centerHorizontallyRtlWithInt:(jint)centerID
                             withInt:(jint)startId
                             withInt:(jint)startSide
                             withInt:(jint)startMargin
                             withInt:(jint)endId
                             withInt:(jint)endSide
                             withInt:(jint)endMargin
                           withFloat:(jfloat)bias;

- (void)centerVerticallyWithInt:(jint)viewId
                        withInt:(jint)toView;

- (void)centerVerticallyWithInt:(jint)centerID
                        withInt:(jint)topId
                        withInt:(jint)topSide
                        withInt:(jint)topMargin
                        withInt:(jint)bottomId
                        withInt:(jint)bottomSide
                        withInt:(jint)bottomMargin
                      withFloat:(jfloat)bias;

- (void)clearWithInt:(jint)viewId;

- (void)clearWithInt:(jint)viewId
             withInt:(jint)anchor;

- (void)cloneWithADXConstraintLayout:(ADXConstraintLayout *)constraintLayout;

- (void)cloneWithADXConstraints:(ADXConstraints *)constraints;

- (void)cloneWithADXConstraintSet:(ADXConstraintSet *)set;

- (void)connectWithInt:(jint)startID
               withInt:(jint)startSide
               withInt:(jint)endID
               withInt:(jint)endSide;

- (void)connectWithInt:(jint)startID
               withInt:(jint)startSide
               withInt:(jint)endID
               withInt:(jint)endSide
               withInt:(jint)margin;

- (void)constrainCircleWithInt:(jint)viewId
                       withInt:(jint)id_
                       withInt:(jint)radius
                     withFloat:(jfloat)angle;

- (void)constrainDefaultHeightWithInt:(jint)viewId
                              withInt:(jint)height;

- (void)constrainDefaultWidthWithInt:(jint)viewId
                             withInt:(jint)width;

- (void)constrainHeightWithInt:(jint)viewId
                       withInt:(jint)height;

- (void)constrainMaxHeightWithInt:(jint)viewId
                          withInt:(jint)height;

- (void)constrainMaxWidthWithInt:(jint)viewId
                         withInt:(jint)width;

- (void)constrainMinHeightWithInt:(jint)viewId
                          withInt:(jint)height;

- (void)constrainMinWidthWithInt:(jint)viewId
                         withInt:(jint)width;

- (void)constrainPercentHeightWithInt:(jint)viewId
                            withFloat:(jfloat)percent;

- (void)constrainPercentWidthWithInt:(jint)viewId
                           withFloat:(jfloat)percent;

- (void)constrainWidthWithInt:(jint)viewId
                      withInt:(jint)width;

- (void)createWithInt:(jint)guidelineID
              withInt:(jint)orientation;

- (void)createBarrierWithInt:(jint)id_
                     withInt:(jint)direction
                     withInt:(jint)margin
                withIntArray:(IOSIntArray *)referenced;

- (void)createHorizontalChainWithInt:(jint)leftId
                             withInt:(jint)leftSide
                             withInt:(jint)rightId
                             withInt:(jint)rightSide
                        withIntArray:(IOSIntArray *)chainIds
                      withFloatArray:(IOSFloatArray *)weights
                             withInt:(jint)style;

- (void)createHorizontalChainRtlWithInt:(jint)startId
                                withInt:(jint)startSide
                                withInt:(jint)endId
                                withInt:(jint)endSide
                           withIntArray:(IOSIntArray *)chainIds
                         withFloatArray:(IOSFloatArray *)weights
                                withInt:(jint)style;

- (void)createVerticalChainWithInt:(jint)topId
                           withInt:(jint)topSide
                           withInt:(jint)bottomId
                           withInt:(jint)bottomSide
                      withIntArray:(IOSIntArray *)chainIds
                    withFloatArray:(IOSFloatArray *)weights
                           withInt:(jint)style;

- (ADXConstraintSet_Constraint *)getWithInt:(jint)id_;

- (jboolean)getApplyElevationWithInt:(jint)viewId;

- (ADXConstraintSet_Constraint *)getConstraintWithInt:(jint)id_;

- (jint)getHeightWithInt:(jint)viewId;

- (ADXConstraintSet_Constraint *)getParametersWithInt:(jint)mId;

- (jint)getVisibilityWithInt:(jint)viewId;

- (jint)getVisibilityModeWithInt:(jint)viewId;

- (jint)getWidthWithInt:(jint)viewId;

- (jboolean)isForceId;

- (void)readFallbackWithADXConstraintLayout:(ADXConstraintLayout *)constraintLayout;

- (void)readFallbackWithADXConstraintSet:(ADXConstraintSet *)set;

- (void)removeFromHorizontalChainWithInt:(jint)viewId;

- (void)removeFromVerticalChainWithInt:(jint)viewId;

- (void)setAlphaWithInt:(jint)viewId
              withFloat:(jfloat)alpha;

- (void)setApplyElevationWithInt:(jint)viewId
                     withBoolean:(jboolean)apply;

- (void)setBarrierTypeWithInt:(jint)id_
                      withInt:(jint)type;

- (void)setDimensionRatioWithInt:(jint)viewId
                    withNSString:(NSString *)ratio;

- (void)setElevationWithInt:(jint)viewId
                  withFloat:(jfloat)elevation;

- (void)setForceIdWithBoolean:(jboolean)forceId;

- (void)setGoneMarginWithInt:(jint)viewId
                     withInt:(jint)anchor
                     withInt:(jint)value;

- (void)setGuidelineBeginWithInt:(jint)guidelineID
                         withInt:(jint)margin;

- (void)setGuidelineEndWithInt:(jint)guidelineID
                       withInt:(jint)margin;

- (void)setGuidelinePercentWithInt:(jint)guidelineID
                         withFloat:(jfloat)ratio;

- (void)setHorizontalBiasWithInt:(jint)viewId
                       withFloat:(jfloat)bias;

- (void)setHorizontalChainStyleWithInt:(jint)viewId
                               withInt:(jint)chainStyle;

- (void)setHorizontalWeightWithInt:(jint)viewId
                         withFloat:(jfloat)weight;

- (void)setMarginWithInt:(jint)viewId
                 withInt:(jint)anchor
                 withInt:(jint)value;

- (void)setRotationWithInt:(jint)viewId
                 withFloat:(jfloat)rotation;

- (void)setRotationXWithInt:(jint)viewId
                  withFloat:(jfloat)rotationX;

- (void)setRotationYWithInt:(jint)viewId
                  withFloat:(jfloat)rotationY;

- (void)setScaleXWithInt:(jint)viewId
               withFloat:(jfloat)scaleX;

- (void)setScaleYWithInt:(jint)viewId
               withFloat:(jfloat)scaleY;

- (void)setTransformPivotWithInt:(jint)viewId
                       withFloat:(jfloat)transformPivotX
                       withFloat:(jfloat)transformPivotY;

- (void)setTransformPivotXWithInt:(jint)viewId
                        withFloat:(jfloat)transformPivotX;

- (void)setTransformPivotYWithInt:(jint)viewId
                        withFloat:(jfloat)transformPivotY;

- (void)setTranslationWithInt:(jint)viewId
                    withFloat:(jfloat)translationX
                    withFloat:(jfloat)translationY;

- (void)setTranslationXWithInt:(jint)viewId
                     withFloat:(jfloat)translationX;

- (void)setTranslationYWithInt:(jint)viewId
                     withFloat:(jfloat)translationY;

- (void)setTranslationZWithInt:(jint)viewId
                     withFloat:(jfloat)translationZ;

- (void)setValidateOnParseWithBoolean:(jboolean)validate;

- (void)setVerticalBiasWithInt:(jint)viewId
                     withFloat:(jfloat)bias;

- (void)setVerticalChainStyleWithInt:(jint)viewId
                             withInt:(jint)chainStyle;

- (void)setVerticalWeightWithInt:(jint)viewId
                       withFloat:(jfloat)weight;

- (void)setVisibilityWithInt:(jint)viewId
                     withInt:(jint)visibility;

#pragma mark Package-Private

- (void)applyToInternalWithADXConstraintLayout:(ADXConstraintLayout *)constraintLayout
                                   withBoolean:(jboolean)applyPostLayout;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintSet)

J2OBJC_FIELD_SETTER(ADXConstraintSet, mIdString_, NSString *)
J2OBJC_FIELD_SETTER(ADXConstraintSet, derivedState_, NSString *)

inline jint ADXConstraintSet_get_ROTATE_NONE(void);
#define ADXConstraintSet_ROTATE_NONE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, ROTATE_NONE, jint)

inline jint ADXConstraintSet_get_ROTATE_PORTRATE_OF_RIGHT(void);
#define ADXConstraintSet_ROTATE_PORTRATE_OF_RIGHT 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, ROTATE_PORTRATE_OF_RIGHT, jint)

inline jint ADXConstraintSet_get_ROTATE_PORTRATE_OF_LEFT(void);
#define ADXConstraintSet_ROTATE_PORTRATE_OF_LEFT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, ROTATE_PORTRATE_OF_LEFT, jint)

inline jint ADXConstraintSet_get_ROTATE_RIGHT_OF_PORTRATE(void);
#define ADXConstraintSet_ROTATE_RIGHT_OF_PORTRATE 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, ROTATE_RIGHT_OF_PORTRATE, jint)

inline jint ADXConstraintSet_get_ROTATE_LEFT_OF_PORTRATE(void);
#define ADXConstraintSet_ROTATE_LEFT_OF_PORTRATE 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, ROTATE_LEFT_OF_PORTRATE, jint)

inline jint ADXConstraintSet_get_UNSET(void);
#define ADXConstraintSet_UNSET -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, UNSET, jint)

inline jint ADXConstraintSet_get_MATCH_CONSTRAINT(void);
#define ADXConstraintSet_MATCH_CONSTRAINT 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, MATCH_CONSTRAINT, jint)

inline jint ADXConstraintSet_get_WRAP_CONTENT(void);
#define ADXConstraintSet_WRAP_CONTENT -2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, WRAP_CONTENT, jint)

inline jint ADXConstraintSet_get_MATCH_CONSTRAINT_WRAP(void);
#define ADXConstraintSet_MATCH_CONSTRAINT_WRAP 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, MATCH_CONSTRAINT_WRAP, jint)

inline jint ADXConstraintSet_get_MATCH_CONSTRAINT_SPREAD(void);
#define ADXConstraintSet_MATCH_CONSTRAINT_SPREAD 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, MATCH_CONSTRAINT_SPREAD, jint)

inline jint ADXConstraintSet_get_MATCH_CONSTRAINT_PERCENT(void);
#define ADXConstraintSet_MATCH_CONSTRAINT_PERCENT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, MATCH_CONSTRAINT_PERCENT, jint)

inline jint ADXConstraintSet_get_PARENT_ID(void);
#define ADXConstraintSet_PARENT_ID 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, PARENT_ID, jint)

inline jint ADXConstraintSet_get_HORIZONTAL(void);
#define ADXConstraintSet_HORIZONTAL 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, HORIZONTAL, jint)

inline jint ADXConstraintSet_get_VERTICAL(void);
#define ADXConstraintSet_VERTICAL 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, VERTICAL, jint)

inline jint ADXConstraintSet_get_HORIZONTAL_GUIDELINE(void);
#define ADXConstraintSet_HORIZONTAL_GUIDELINE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, HORIZONTAL_GUIDELINE, jint)

inline jint ADXConstraintSet_get_VERTICAL_GUIDELINE(void);
#define ADXConstraintSet_VERTICAL_GUIDELINE 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, VERTICAL_GUIDELINE, jint)

inline jint ADXConstraintSet_get_VISIBLE(void);
#define ADXConstraintSet_VISIBLE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, VISIBLE, jint)

inline jint ADXConstraintSet_get_INVISIBLE(void);
#define ADXConstraintSet_INVISIBLE 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, INVISIBLE, jint)

inline jint ADXConstraintSet_get_GONE(void);
#define ADXConstraintSet_GONE 8
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, GONE, jint)

inline jint ADXConstraintSet_get_LEFT(void);
#define ADXConstraintSet_LEFT 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, LEFT, jint)

inline jint ADXConstraintSet_get_RIGHT(void);
#define ADXConstraintSet_RIGHT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, RIGHT, jint)

inline jint ADXConstraintSet_get_TOP(void);
#define ADXConstraintSet_TOP 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, TOP, jint)

inline jint ADXConstraintSet_get_BOTTOM(void);
#define ADXConstraintSet_BOTTOM 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, BOTTOM, jint)

inline jint ADXConstraintSet_get_BASELINE(void);
#define ADXConstraintSet_BASELINE 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, BASELINE, jint)

inline jint ADXConstraintSet_get_START(void);
#define ADXConstraintSet_START 6
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, START, jint)

inline jint ADXConstraintSet_get_END(void);
#define ADXConstraintSet_END 7
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, END, jint)

inline jint ADXConstraintSet_get_CIRCLE_REFERENCE(void);
#define ADXConstraintSet_CIRCLE_REFERENCE 8
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, CIRCLE_REFERENCE, jint)

inline jint ADXConstraintSet_get_CHAIN_SPREAD(void);
#define ADXConstraintSet_CHAIN_SPREAD 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, CHAIN_SPREAD, jint)

inline jint ADXConstraintSet_get_CHAIN_SPREAD_INSIDE(void);
#define ADXConstraintSet_CHAIN_SPREAD_INSIDE 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, CHAIN_SPREAD_INSIDE, jint)

inline jint ADXConstraintSet_get_VISIBILITY_MODE_NORMAL(void);
#define ADXConstraintSet_VISIBILITY_MODE_NORMAL 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, VISIBILITY_MODE_NORMAL, jint)

inline jint ADXConstraintSet_get_VISIBILITY_MODE_IGNORE(void);
#define ADXConstraintSet_VISIBILITY_MODE_IGNORE 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, VISIBILITY_MODE_IGNORE, jint)

inline jint ADXConstraintSet_get_CHAIN_PACKED(void);
#define ADXConstraintSet_CHAIN_PACKED 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet, CHAIN_PACKED, jint)

FOUNDATION_EXPORT void ADXConstraintSet_init(ADXConstraintSet *self);

FOUNDATION_EXPORT ADXConstraintSet *new_ADXConstraintSet_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintSet *create_ADXConstraintSet_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintSet)

@compatibility_alias AndroidxConstraintlayoutWidgetConstraintSet ADXConstraintSet;

#endif

#if !defined (ADXConstraintSet_Layout_) && (INCLUDE_ALL_ConstraintSet || defined(INCLUDE_ADXConstraintSet_Layout))
#define ADXConstraintSet_Layout_

@class IOSIntArray;

@interface ADXConstraintSet_Layout : NSObject {
 @public
  jboolean mIsGuideline_;
  jboolean mApply_;
  jboolean mOverride_;
  jint mWidth_;
  jint mHeight_;
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
  jint startToEnd_;
  jint startToStart_;
  jint endToStart_;
  jint endToEnd_;
  jfloat horizontalBias_;
  jfloat verticalBias_;
  NSString *dimensionRatio_;
  jint circleConstraint_;
  jint circleRadius_;
  jfloat circleAngle_;
  jint editorAbsoluteX_;
  jint editorAbsoluteY_;
  jint orientation_;
  jint leftMargin_;
  jint rightMargin_;
  jint topMargin_;
  jint bottomMargin_;
  jint endMargin_;
  jint startMargin_;
  jint baselineMargin_;
  jint goneLeftMargin_;
  jint goneTopMargin_;
  jint goneRightMargin_;
  jint goneBottomMargin_;
  jint goneEndMargin_;
  jint goneStartMargin_;
  jint goneBaselineMargin_;
  jfloat verticalWeight_;
  jfloat horizontalWeight_;
  jint horizontalChainStyle_;
  jint verticalChainStyle_;
  jint widthDefault_;
  jint heightDefault_;
  jint widthMax_;
  jint heightMax_;
  jint widthMin_;
  jint heightMin_;
  jfloat widthPercent_;
  jfloat heightPercent_;
  jint mBarrierDirection_;
  jint mBarrierMargin_;
  jint mHelperType_;
  IOSIntArray *mReferenceIds_;
  NSString *mReferenceIdString_;
  NSString *mConstraintTag_;
  jboolean constrainedWidth_;
  jboolean constrainedHeight_;
  jboolean mBarrierAllowsGoneWidgets_;
  jint mWrapBehavior_;
}

#pragma mark Public

- (instancetype)init;

- (void)copyFromWithADXConstraintSet_Layout:(ADXConstraintSet_Layout *)src OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintSet_Layout)

J2OBJC_FIELD_SETTER(ADXConstraintSet_Layout, dimensionRatio_, NSString *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Layout, mReferenceIds_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Layout, mReferenceIdString_, NSString *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Layout, mConstraintTag_, NSString *)

inline jint ADXConstraintSet_Layout_get_UNSET(void);
#define ADXConstraintSet_Layout_UNSET -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet_Layout, UNSET, jint)

inline jint ADXConstraintSet_Layout_get_UNSET_GONE_MARGIN(void);
#define ADXConstraintSet_Layout_UNSET_GONE_MARGIN ((jint) 0x80000000)
J2OBJC_STATIC_FIELD_CONSTANT(ADXConstraintSet_Layout, UNSET_GONE_MARGIN, jint)

FOUNDATION_EXPORT void ADXConstraintSet_Layout_init(ADXConstraintSet_Layout *self);

FOUNDATION_EXPORT ADXConstraintSet_Layout *new_ADXConstraintSet_Layout_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintSet_Layout *create_ADXConstraintSet_Layout_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintSet_Layout)

#endif

#if !defined (ADXConstraintSet_Transform_) && (INCLUDE_ALL_ConstraintSet || defined(INCLUDE_ADXConstraintSet_Transform))
#define ADXConstraintSet_Transform_

@interface ADXConstraintSet_Transform : NSObject {
 @public
  jboolean mApply_;
  jfloat rotation_;
  jfloat rotationX_;
  jfloat rotationY_;
  jfloat scaleX_;
  jfloat scaleY_;
  jfloat transformPivotX_;
  jfloat transformPivotY_;
  jint transformPivotTarget_;
  jfloat translationX_;
  jfloat translationY_;
  jfloat translationZ_;
  jboolean applyElevation_;
  jfloat elevation_;
}

#pragma mark Public

- (instancetype)init;

- (void)copyFromWithADXConstraintSet_Transform:(ADXConstraintSet_Transform *)src OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintSet_Transform)

FOUNDATION_EXPORT void ADXConstraintSet_Transform_init(ADXConstraintSet_Transform *self);

FOUNDATION_EXPORT ADXConstraintSet_Transform *new_ADXConstraintSet_Transform_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintSet_Transform *create_ADXConstraintSet_Transform_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintSet_Transform)

#endif

#if !defined (ADXConstraintSet_PropertySet_) && (INCLUDE_ALL_ConstraintSet || defined(INCLUDE_ADXConstraintSet_PropertySet))
#define ADXConstraintSet_PropertySet_

@interface ADXConstraintSet_PropertySet : NSObject {
 @public
  jboolean mApply_;
  jint visibility_;
  jint mVisibilityMode_;
  jfloat alpha_;
  jfloat mProgress_;
}

#pragma mark Public

- (instancetype)init;

- (void)copyFromWithADXConstraintSet_PropertySet:(ADXConstraintSet_PropertySet *)src OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintSet_PropertySet)

FOUNDATION_EXPORT void ADXConstraintSet_PropertySet_init(ADXConstraintSet_PropertySet *self);

FOUNDATION_EXPORT ADXConstraintSet_PropertySet *new_ADXConstraintSet_PropertySet_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintSet_PropertySet *create_ADXConstraintSet_PropertySet_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintSet_PropertySet)

#endif

#if !defined (ADXConstraintSet_Motion_) && (INCLUDE_ALL_ConstraintSet || defined(INCLUDE_ADXConstraintSet_Motion))
#define ADXConstraintSet_Motion_

@interface ADXConstraintSet_Motion : NSObject {
 @public
  jboolean mApply_;
  jint mAnimateRelativeTo_;
  jint mAnimateCircleAngleTo_;
  NSString *mTransitionEasing_;
  jint mPathMotionArc_;
  jint mDrawPath_;
  jfloat mMotionStagger_;
  jint mPolarRelativeTo_;
  jfloat mPathRotate_;
  jfloat mQuantizeMotionPhase_;
  jint mQuantizeMotionSteps_;
  NSString *mQuantizeInterpolatorString_;
  jint mQuantizeInterpolatorType_;
  jint mQuantizeInterpolatorID_;
}

#pragma mark Public

- (instancetype)init;

- (void)copyFromWithADXConstraintSet_Motion:(ADXConstraintSet_Motion *)src OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintSet_Motion)

J2OBJC_FIELD_SETTER(ADXConstraintSet_Motion, mTransitionEasing_, NSString *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Motion, mQuantizeInterpolatorString_, NSString *)

FOUNDATION_EXPORT void ADXConstraintSet_Motion_init(ADXConstraintSet_Motion *self);

FOUNDATION_EXPORT ADXConstraintSet_Motion *new_ADXConstraintSet_Motion_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintSet_Motion *create_ADXConstraintSet_Motion_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintSet_Motion)

#endif

#if !defined (ADXConstraintSet_Constraint_) && (INCLUDE_ALL_ConstraintSet || defined(INCLUDE_ADXConstraintSet_Constraint))
#define ADXConstraintSet_Constraint_

@class ADXConstraintHelper;
@class ADXConstraintLayout_LayoutParams;
@class ADXConstraintSet_Constraint_Delta;
@class ADXConstraintSet_Layout;
@class ADXConstraintSet_Motion;
@class ADXConstraintSet_PropertySet;
@class ADXConstraintSet_Transform;
@class ADXConstraints_LayoutParams;
@class JavaUtilHashMap;

@interface ADXConstraintSet_Constraint : NSObject {
 @public
  jint mViewId_;
  NSString *mTargetString_;
  ADXConstraintSet_PropertySet *propertySet_;
  ADXConstraintSet_Motion *motion_;
  ADXConstraintSet_Layout *layout_;
  ADXConstraintSet_Transform *transform_;
  JavaUtilHashMap *mCustomConstraints_;
  ADXConstraintSet_Constraint_Delta *mDelta_;
}

#pragma mark Public

- (instancetype)init;

- (void)applyDeltaWithADXConstraintSet_Constraint:(ADXConstraintSet_Constraint *)c;

- (void)applyToWithADXConstraintLayout_LayoutParams:(ADXConstraintLayout_LayoutParams *)param;

- (ADXConstraintSet_Constraint *)java_clone;

- (void)fillFromConstraintsWithADXConstraintHelper:(ADXConstraintHelper *)helper
                                           withInt:(jint)viewId
                   withADXConstraints_LayoutParams:(ADXConstraints_LayoutParams *)param;

- (void)fillFromConstraintsWithInt:(jint)viewId
   withADXConstraints_LayoutParams:(ADXConstraints_LayoutParams *)param;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintSet_Constraint)

J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint, mTargetString_, NSString *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint, propertySet_, ADXConstraintSet_PropertySet *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint, motion_, ADXConstraintSet_Motion *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint, layout_, ADXConstraintSet_Layout *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint, transform_, ADXConstraintSet_Transform *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint, mCustomConstraints_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint, mDelta_, ADXConstraintSet_Constraint_Delta *)

FOUNDATION_EXPORT void ADXConstraintSet_Constraint_init(ADXConstraintSet_Constraint *self);

FOUNDATION_EXPORT ADXConstraintSet_Constraint *new_ADXConstraintSet_Constraint_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintSet_Constraint *create_ADXConstraintSet_Constraint_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintSet_Constraint)

#endif

#if !defined (ADXConstraintSet_Constraint_Delta_) && (INCLUDE_ALL_ConstraintSet || defined(INCLUDE_ADXConstraintSet_Constraint_Delta))
#define ADXConstraintSet_Constraint_Delta_

@class ADXConstraintSet_Constraint;
@class IOSBooleanArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSObjectArray;

@interface ADXConstraintSet_Constraint_Delta : NSObject {
 @public
  IOSIntArray *mTypeInt_;
  IOSIntArray *mValueInt_;
  jint mCountInt_;
  IOSIntArray *mTypeFloat_;
  IOSFloatArray *mValueFloat_;
  jint mCountFloat_;
  IOSIntArray *mTypeString_;
  IOSObjectArray *mValueString_;
  jint mCountString_;
  IOSIntArray *mTypeBoolean_;
  IOSBooleanArray *mValueBoolean_;
  jint mCountBoolean_;
}

#pragma mark Package-Private

- (instancetype)init;

- (void)applyDeltaWithADXConstraintSet_Constraint:(ADXConstraintSet_Constraint *)c;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintSet_Constraint_Delta)

J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint_Delta, mTypeInt_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint_Delta, mValueInt_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint_Delta, mTypeFloat_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint_Delta, mValueFloat_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint_Delta, mTypeString_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint_Delta, mValueString_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint_Delta, mTypeBoolean_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXConstraintSet_Constraint_Delta, mValueBoolean_, IOSBooleanArray *)

FOUNDATION_EXPORT void ADXConstraintSet_Constraint_Delta_init(ADXConstraintSet_Constraint_Delta *self);

FOUNDATION_EXPORT ADXConstraintSet_Constraint_Delta *new_ADXConstraintSet_Constraint_Delta_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintSet_Constraint_Delta *create_ADXConstraintSet_Constraint_Delta_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintSet_Constraint_Delta)

#endif

#pragma pop_macro("INCLUDE_ALL_ConstraintSet")
