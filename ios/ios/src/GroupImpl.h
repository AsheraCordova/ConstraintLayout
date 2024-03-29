//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSAndroidXConstraintLayoutPlugin\src\main\java\com\ashera\constraintlayout\GroupImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GroupImpl")
#ifdef RESTRICT_GroupImpl
#define INCLUDE_ALL_GroupImpl 0
#else
#define INCLUDE_ALL_GroupImpl 1
#endif
#undef RESTRICT_GroupImpl

#if !defined (ASGroupImpl_) && (INCLUDE_ALL_GroupImpl || defined(INCLUDE_ASGroupImpl))
#define ASGroupImpl_

#define RESTRICT_BaseWidget 1
#define INCLUDE_ASBaseWidget 1
#include "BaseWidget.h"

@class ADXGroup;
@class ASGroupImpl_GroupBean;
@class ASGroupImpl_GroupCommandBuilder;
@class ASWidgetAttribute;
@class IOSClass;
@protocol ASIFragment;
@protocol ASILifeCycleDecorator;
@protocol ASIWidget;
@protocol JavaUtilMap;

@interface ASGroupImpl : ASBaseWidget {
 @public
  id uiView_;
  ADXGroup *group_;
}
@property id uiView;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)localname;

- (instancetype)initWithNSString:(NSString *)groupName
                    withNSString:(NSString *)localname;

- (id)asNativeWidget;

- (id)asWidget;

- (jboolean)checkIosVersionWithNSString:(NSString *)v;

- (void)createWithASIFragment:(id<ASIFragment>)fragment
              withJavaUtilMap:(id<JavaUtilMap>)params;

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
              withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator;

- (ASGroupImpl_GroupBean *)getBean;

- (ASGroupImpl_GroupCommandBuilder *)getBuilder;

- (id)getPluginWithNSString:(NSString *)plugin;

- (IOSClass *)getViewClass;

- (void)invalidate;

- (void)loadAttributesWithNSString:(NSString *)attributeName;

- (void)nativeCreateWithJavaUtilMap:(id<JavaUtilMap>)params;

- (void)nativeRequestLayout;

- (id<ASIWidget>)newInstance OBJC_METHOD_FAMILY_NONE;

- (void)requestLayout;

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue
                withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator;

- (void)setIdWithNSString:(NSString *)id_;

- (void)setVisibleWithBoolean:(jboolean)b;

@end

J2OBJC_STATIC_INIT(ASGroupImpl)

J2OBJC_FIELD_SETTER(ASGroupImpl, uiView_, id)
J2OBJC_FIELD_SETTER(ASGroupImpl, group_, ADXGroup *)

inline NSString *ASGroupImpl_get_LOCAL_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASGroupImpl_LOCAL_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASGroupImpl, LOCAL_NAME, NSString *)

inline NSString *ASGroupImpl_get_GROUP_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASGroupImpl_GROUP_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASGroupImpl, GROUP_NAME, NSString *)

FOUNDATION_EXPORT void ASGroupImpl_init(ASGroupImpl *self);

FOUNDATION_EXPORT ASGroupImpl *new_ASGroupImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASGroupImpl *create_ASGroupImpl_init(void);

FOUNDATION_EXPORT void ASGroupImpl_initWithNSString_(ASGroupImpl *self, NSString *localname);

FOUNDATION_EXPORT ASGroupImpl *new_ASGroupImpl_initWithNSString_(NSString *localname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASGroupImpl *create_ASGroupImpl_initWithNSString_(NSString *localname);

FOUNDATION_EXPORT void ASGroupImpl_initWithNSString_withNSString_(ASGroupImpl *self, NSString *groupName, NSString *localname);

FOUNDATION_EXPORT ASGroupImpl *new_ASGroupImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASGroupImpl *create_ASGroupImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname);

J2OBJC_TYPE_LITERAL_HEADER(ASGroupImpl)

@compatibility_alias ComAsheraConstraintlayoutGroupImpl ASGroupImpl;

#endif

#if !defined (ASGroupImpl_GroupExt_) && (INCLUDE_ALL_GroupImpl || defined(INCLUDE_ASGroupImpl_GroupExt))
#define ASGroupImpl_GroupExt_

#define RESTRICT_Group 1
#define INCLUDE_ADXGroup 1
#include "Group.h"

#define RESTRICT_ILifeCycleDecorator 1
#define INCLUDE_ASILifeCycleDecorator 1
#include "ILifeCycleDecorator.h"

#define RESTRICT_IMaxDimension 1
#define INCLUDE_ASIMaxDimension 1
#include "IMaxDimension.h"

@class ADRect;
@class ADView;
@class ASGroupImpl;
@class ASWidgetAttribute;
@class IOSIntArray;
@class IOSObjectArray;
@protocol ASIWidget;
@protocol JavaUtilList;

@interface ASGroupImpl_GroupExt : ADXGroup < ASILifeCycleDecorator, ASIMaxDimension >

#pragma mark Public

- (instancetype)initWithASGroupImpl:(ASGroupImpl *)outer$;

- (void)drawableStateChanged;

- (void)executeWithNSString:(NSString *)method
          withNSObjectArray:(IOSObjectArray *)canvas;

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute;

- (void)getLocationOnScreenWithIntArray:(IOSIntArray *)appScreenLocation;

- (jint)getMaxHeight;

- (jint)getMaxWidth;

- (id<JavaUtilList>)getMethods;

- (id<ASIWidget>)getWidget;

- (void)getWindowVisibleDisplayFrameWithADRect:(ADRect *)displayFrame;

- (ADView *)inflateViewWithNSString:(NSString *)layout;

- (void)initialized OBJC_METHOD_FAMILY_NONE;

- (id<ASILifeCycleDecorator>)newInstanceWithASIWidget:(id<ASIWidget>)widget OBJC_METHOD_FAMILY_NONE;

- (void)offsetLeftAndRightWithInt:(jint)offset;

- (void)offsetTopAndBottomWithInt:(jint)offset;

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

- (void)remeasure;

- (void)removeFromParent;

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue;

- (void)setMaxHeightWithInt:(jint)height;

- (void)setMaxWidthWithInt:(jint)width;

- (void)setMyAttributeWithNSString:(NSString *)name
                            withId:(id)value;

- (void)setState0WithId:(id)value;

- (void)setState1WithId:(id)value;

- (void)setState2WithId:(id)value;

- (void)setState3WithId:(id)value;

- (void)setState4WithId:(id)value;

- (void)setVisibilityWithInt:(jint)visibility;

- (void)state0;

- (void)state1;

- (void)state2;

- (void)state3;

- (void)state4;

- (void)stateNo;

- (void)stateYes;

- (void)updateMeasuredDimensionWithInt:(jint)width
                               withInt:(jint)height;

#pragma mark Protected

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)l
                    withInt:(jint)t
                    withInt:(jint)r
                    withInt:(jint)b;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASGroupImpl_GroupExt)

FOUNDATION_EXPORT void ASGroupImpl_GroupExt_initWithASGroupImpl_(ASGroupImpl_GroupExt *self, ASGroupImpl *outer$);

FOUNDATION_EXPORT ASGroupImpl_GroupExt *new_ASGroupImpl_GroupExt_initWithASGroupImpl_(ASGroupImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASGroupImpl_GroupExt *create_ASGroupImpl_GroupExt_initWithASGroupImpl_(ASGroupImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASGroupImpl_GroupExt)

#endif

#if !defined (ASGroupImpl_GroupCommandBuilder_) && (INCLUDE_ALL_GroupImpl || defined(INCLUDE_ASGroupImpl_GroupCommandBuilder))
#define ASGroupImpl_GroupCommandBuilder_

#define RESTRICT_ViewImpl 1
#define INCLUDE_ASViewImpl_ViewCommandBuilder 1
#include "ViewImpl.h"

@class ASGroupImpl;

@interface ASGroupImpl_GroupCommandBuilder : ASViewImpl_ViewCommandBuilder

#pragma mark Public

- (instancetype)initWithASGroupImpl:(ASGroupImpl *)outer$;

- (ASGroupImpl_GroupCommandBuilder *)animatorXmlWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)endAnimator;

- (ASGroupImpl_GroupCommandBuilder *)executeWithBoolean:(jboolean)setter;

- (id)getConstraint_referenced_ids;

- (ASGroupImpl_GroupCommandBuilder *)invalidate;

- (ASGroupImpl_GroupCommandBuilder *)notifyDataSetChangedWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)refreshUiFromModelWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)requestLayout;

- (ASGroupImpl_GroupCommandBuilder *)reset;

- (ASGroupImpl_GroupCommandBuilder *)setAlphaWithFloat:(jfloat)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setAsDragSourceWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setAttributeUnderTestWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setBackgroundRepeatWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setBackgroundTintModeWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setBackgroundTintWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setBackgroundWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setBottomWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setClickableWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setConstraint_referenced_idsWithNSString:(NSString *)value;

- (ASGroupImpl_GroupCommandBuilder *)setContentDescriptionWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setCustomErrorMessageKeysWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setCustomErrorMessageValuesWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setDuplicateParentStateWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setElevationWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setEnabledWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setErrorStyleWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setFocusableWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setForegroundGravityWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setForegroundRepeatWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setForegroundTintModeWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setForegroundTintWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setForegroundWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIdWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setInvalidateOnFrameChangeWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosAccessibilityHintWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosAccessibilityIgnoresInvertColorsWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosAccessibilityLabelWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosAccessibilityTraitsWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosAccessibilityValueWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosAlphaWithFloat:(jfloat)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosAutoresizesSubviewsWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosBackgroundColorWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosClearsContextBeforeDrawingWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosClipsToBoundsWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosContentScaleFactorWithFloat:(jfloat)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosInsetsLayoutMarginsFromSafeAreaWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosIsAccessibilityElementWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosIsExclusiveTouchWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosIsHiddenWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosIsMultipleTouchEnabledWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosIsOpaqueWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosIsUserInteractionEnabledWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosLargeContentImageWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosLargeContentTitleWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosLayerBorderColorWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosLayerBorderWidthWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosLayerCornerRadiusWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosLayerMasksToBoundsWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosPreservesSuperviewLayoutMarginsWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosRestorationIdentifierWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosScalesLargeContentImageWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosShowsLargeContentViewerWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosTagWithInt:(jint)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosTintColorWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setIosTranslatesAutoresizingMaskIntoConstraintsWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setKeepScreenOnWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setLayoutDirectionWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setLeftWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setLongClickableWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setMaxHeightWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setMaxWidthWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setMinHeightWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setMinWidthWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setModelParamWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setModelPojoToUiParamsWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setModelPojoToUiWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setModelSyncEventsWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setModelUiToPojoEventIdsWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setModelUiToPojoWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnAnimationCancelWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnAnimationEndWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnAnimationRepeatWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnAnimationStartWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnClickWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnDragWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnKeyWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnLongClickWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnSwipedWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOnTouchWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setOutsideTouchableWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setRightWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setRotationWithFloat:(jfloat)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setRotationXWithFloat:(jfloat)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setRotationYWithFloat:(jfloat)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setScaleXWithFloat:(jfloat)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setScaleYWithFloat:(jfloat)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setSelectedWithBoolean:(jboolean)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setStyleWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setTextAlignmentWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setTextDirectionWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setTopWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setTransformPivotXWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setTransformPivotYWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setTranslationXWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setTranslationYWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setTranslationZWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setV_maxlengthWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setV_maxWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setV_minlengthWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setV_minWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setV_patternWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setV_requiredWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setV_typeWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setValidationErrorDisplayTypeWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setValidationWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setVisibilityWithNSString:(NSString *)arg0;

- (ASGroupImpl_GroupCommandBuilder *)setZIndexWithInt:(jint)arg0;

- (ASGroupImpl_GroupCommandBuilder *)startAnimator;

- (ASGroupImpl_GroupCommandBuilder *)tryGetAlpha;

- (ASGroupImpl_GroupCommandBuilder *)tryGetBackground;

- (ASGroupImpl_GroupCommandBuilder *)tryGetBackgroundTint;

- (ASGroupImpl_GroupCommandBuilder *)tryGetBackgroundTintMode;

- (ASGroupImpl_GroupCommandBuilder *)tryGetBottom;

- (ASGroupImpl_GroupCommandBuilder *)tryGetClickable;

- (ASGroupImpl_GroupCommandBuilder *)tryGetConstraint_referenced_ids;

- (ASGroupImpl_GroupCommandBuilder *)tryGetContentDescription;

- (ASGroupImpl_GroupCommandBuilder *)tryGetDuplicateParentState;

- (ASGroupImpl_GroupCommandBuilder *)tryGetEnabled;

- (ASGroupImpl_GroupCommandBuilder *)tryGetFocusable;

- (ASGroupImpl_GroupCommandBuilder *)tryGetForeground;

- (ASGroupImpl_GroupCommandBuilder *)tryGetForegroundGravity;

- (ASGroupImpl_GroupCommandBuilder *)tryGetForegroundTint;

- (ASGroupImpl_GroupCommandBuilder *)tryGetForegroundTintMode;

- (ASGroupImpl_GroupCommandBuilder *)tryGetId;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosAccessibilityHint;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosAccessibilityIgnoresInvertColors;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosAccessibilityLabel;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosAccessibilityTraits;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosAccessibilityValue;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosAlpha;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosAutoresizesSubviews;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosBackgroundColor;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosClearsContextBeforeDrawing;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosClipsToBounds;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosContentScaleFactor;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosInsetsLayoutMarginsFromSafeArea;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosIsAccessibilityElement;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosIsExclusiveTouch;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosIsFocused;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosIsHidden;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosIsMultipleTouchEnabled;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosIsOpaque;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosIsUserInteractionEnabled;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosLargeContentImage;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosLargeContentTitle;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosPreservesSuperviewLayoutMargins;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosRestorationIdentifier;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosScalesLargeContentImage;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosShowsLargeContentViewer;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosTag;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosTintColor;

- (ASGroupImpl_GroupCommandBuilder *)tryGetIosTranslatesAutoresizingMaskIntoConstraints;

- (ASGroupImpl_GroupCommandBuilder *)tryGetKeepScreenOn;

- (ASGroupImpl_GroupCommandBuilder *)tryGetLayoutDirection;

- (ASGroupImpl_GroupCommandBuilder *)tryGetLeft;

- (ASGroupImpl_GroupCommandBuilder *)tryGetLongClickable;

- (ASGroupImpl_GroupCommandBuilder *)tryGetMaxHeight;

- (ASGroupImpl_GroupCommandBuilder *)tryGetMaxWidth;

- (ASGroupImpl_GroupCommandBuilder *)tryGetMinHeight;

- (ASGroupImpl_GroupCommandBuilder *)tryGetMinWidth;

- (ASGroupImpl_GroupCommandBuilder *)tryGetModelParam;

- (ASGroupImpl_GroupCommandBuilder *)tryGetModelPojoToUi;

- (ASGroupImpl_GroupCommandBuilder *)tryGetModelSyncEvents;

- (ASGroupImpl_GroupCommandBuilder *)tryGetModelUiToPojo;

- (ASGroupImpl_GroupCommandBuilder *)tryGetRight;

- (ASGroupImpl_GroupCommandBuilder *)tryGetRotation;

- (ASGroupImpl_GroupCommandBuilder *)tryGetRotationX;

- (ASGroupImpl_GroupCommandBuilder *)tryGetRotationY;

- (ASGroupImpl_GroupCommandBuilder *)tryGetScaleX;

- (ASGroupImpl_GroupCommandBuilder *)tryGetScaleY;

- (ASGroupImpl_GroupCommandBuilder *)tryGetSelected;

- (ASGroupImpl_GroupCommandBuilder *)tryGetTextAlignment;

- (ASGroupImpl_GroupCommandBuilder *)tryGetTextDirection;

- (ASGroupImpl_GroupCommandBuilder *)tryGetTop;

- (ASGroupImpl_GroupCommandBuilder *)tryGetTransformPivotX;

- (ASGroupImpl_GroupCommandBuilder *)tryGetTransformPivotY;

- (ASGroupImpl_GroupCommandBuilder *)tryGetTranslationX;

- (ASGroupImpl_GroupCommandBuilder *)tryGetTranslationY;

- (ASGroupImpl_GroupCommandBuilder *)tryGetTranslationZ;

- (ASGroupImpl_GroupCommandBuilder *)tryGetValidateForm;

- (ASGroupImpl_GroupCommandBuilder *)tryGetVisibility;

- (ASGroupImpl_GroupCommandBuilder *)updateModelDataWithNSString:(NSString *)arg0
                                                          withId:(id)arg1;

- (ASGroupImpl_GroupCommandBuilder *)validateFormWithNSString:(NSString *)arg0;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASGroupImpl_GroupCommandBuilder)

FOUNDATION_EXPORT void ASGroupImpl_GroupCommandBuilder_initWithASGroupImpl_(ASGroupImpl_GroupCommandBuilder *self, ASGroupImpl *outer$);

FOUNDATION_EXPORT ASGroupImpl_GroupCommandBuilder *new_ASGroupImpl_GroupCommandBuilder_initWithASGroupImpl_(ASGroupImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASGroupImpl_GroupCommandBuilder *create_ASGroupImpl_GroupCommandBuilder_initWithASGroupImpl_(ASGroupImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASGroupImpl_GroupCommandBuilder)

#endif

#if !defined (ASGroupImpl_GroupBean_) && (INCLUDE_ALL_GroupImpl || defined(INCLUDE_ASGroupImpl_GroupBean))
#define ASGroupImpl_GroupBean_

#define RESTRICT_ViewImpl 1
#define INCLUDE_ASViewImpl_ViewBean 1
#include "ViewImpl.h"

@class ASGroupImpl;
@protocol ASIWidget;

@interface ASGroupImpl_GroupBean : ASViewImpl_ViewBean

#pragma mark Public

- (instancetype)initWithASGroupImpl:(ASGroupImpl *)outer$;

- (id)getConstraint_referenced_ids;

- (void)setConstraint_referenced_idsWithNSString:(NSString *)value;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithASIWidget:(id<ASIWidget>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASGroupImpl_GroupBean)

FOUNDATION_EXPORT void ASGroupImpl_GroupBean_initWithASGroupImpl_(ASGroupImpl_GroupBean *self, ASGroupImpl *outer$);

FOUNDATION_EXPORT ASGroupImpl_GroupBean *new_ASGroupImpl_GroupBean_initWithASGroupImpl_(ASGroupImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASGroupImpl_GroupBean *create_ASGroupImpl_GroupBean_initWithASGroupImpl_(ASGroupImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASGroupImpl_GroupBean)

#endif

#pragma pop_macro("INCLUDE_ALL_GroupImpl")
