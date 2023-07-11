//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSAndroidXConstraintLayoutPlugin\src\main\java\com\ashera\constraintlayout\PlaceholderImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PlaceholderImpl")
#ifdef RESTRICT_PlaceholderImpl
#define INCLUDE_ALL_PlaceholderImpl 0
#else
#define INCLUDE_ALL_PlaceholderImpl 1
#endif
#undef RESTRICT_PlaceholderImpl

#if !defined (ASPlaceholderImpl_) && (INCLUDE_ALL_PlaceholderImpl || defined(INCLUDE_ASPlaceholderImpl))
#define ASPlaceholderImpl_

#define RESTRICT_BaseWidget 1
#define INCLUDE_ASBaseWidget 1
#include "BaseWidget.h"

@class ADXPlaceholder;
@class ASPlaceholderImpl_PlaceholderBean;
@class ASPlaceholderImpl_PlaceholderCommandBuilder;
@class ASWidgetAttribute;
@class IOSClass;
@protocol ASIFragment;
@protocol ASILifeCycleDecorator;
@protocol ASIWidget;
@protocol JavaUtilMap;

@interface ASPlaceholderImpl : ASBaseWidget {
 @public
  id uiView_;
  ADXPlaceholder *placeholder_;
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

- (ASPlaceholderImpl_PlaceholderBean *)getBean;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)getBuilder;

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

J2OBJC_EMPTY_STATIC_INIT(ASPlaceholderImpl)

J2OBJC_FIELD_SETTER(ASPlaceholderImpl, uiView_, id)
J2OBJC_FIELD_SETTER(ASPlaceholderImpl, placeholder_, ADXPlaceholder *)

inline NSString *ASPlaceholderImpl_get_LOCAL_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASPlaceholderImpl_LOCAL_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASPlaceholderImpl, LOCAL_NAME, NSString *)

inline NSString *ASPlaceholderImpl_get_GROUP_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASPlaceholderImpl_GROUP_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASPlaceholderImpl, GROUP_NAME, NSString *)

FOUNDATION_EXPORT void ASPlaceholderImpl_init(ASPlaceholderImpl *self);

FOUNDATION_EXPORT ASPlaceholderImpl *new_ASPlaceholderImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASPlaceholderImpl *create_ASPlaceholderImpl_init(void);

FOUNDATION_EXPORT void ASPlaceholderImpl_initWithNSString_(ASPlaceholderImpl *self, NSString *localname);

FOUNDATION_EXPORT ASPlaceholderImpl *new_ASPlaceholderImpl_initWithNSString_(NSString *localname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASPlaceholderImpl *create_ASPlaceholderImpl_initWithNSString_(NSString *localname);

FOUNDATION_EXPORT void ASPlaceholderImpl_initWithNSString_withNSString_(ASPlaceholderImpl *self, NSString *groupName, NSString *localname);

FOUNDATION_EXPORT ASPlaceholderImpl *new_ASPlaceholderImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASPlaceholderImpl *create_ASPlaceholderImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname);

J2OBJC_TYPE_LITERAL_HEADER(ASPlaceholderImpl)

@compatibility_alias ComAsheraConstraintlayoutPlaceholderImpl ASPlaceholderImpl;

#endif

#if !defined (ASPlaceholderImpl_Placeholder_emptyVisibility_) && (INCLUDE_ALL_PlaceholderImpl || defined(INCLUDE_ASPlaceholderImpl_Placeholder_emptyVisibility))
#define ASPlaceholderImpl_Placeholder_emptyVisibility_

#define RESTRICT_AbstractEnumToIntConverter 1
#define INCLUDE_ASAbstractEnumToIntConverter 1
#include "AbstractEnumToIntConverter.h"

@class JavaLangInteger;
@protocol JavaUtilMap;

@interface ASPlaceholderImpl_Placeholder_emptyVisibility : ASAbstractEnumToIntConverter

#pragma mark Public

- (JavaLangInteger *)getDefault;

- (id<JavaUtilMap>)getMapping;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ASPlaceholderImpl_Placeholder_emptyVisibility)

FOUNDATION_EXPORT void ASPlaceholderImpl_Placeholder_emptyVisibility_init(ASPlaceholderImpl_Placeholder_emptyVisibility *self);

FOUNDATION_EXPORT ASPlaceholderImpl_Placeholder_emptyVisibility *new_ASPlaceholderImpl_Placeholder_emptyVisibility_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASPlaceholderImpl_Placeholder_emptyVisibility *create_ASPlaceholderImpl_Placeholder_emptyVisibility_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASPlaceholderImpl_Placeholder_emptyVisibility)

#endif

#if !defined (ASPlaceholderImpl_PlaceholderExt_) && (INCLUDE_ALL_PlaceholderImpl || defined(INCLUDE_ASPlaceholderImpl_PlaceholderExt))
#define ASPlaceholderImpl_PlaceholderExt_

#define RESTRICT_Placeholder 1
#define INCLUDE_ADXPlaceholder 1
#include "Placeholder.h"

#define RESTRICT_ILifeCycleDecorator 1
#define INCLUDE_ASILifeCycleDecorator 1
#include "ILifeCycleDecorator.h"

#define RESTRICT_IMaxDimension 1
#define INCLUDE_ASIMaxDimension 1
#include "IMaxDimension.h"

@class ADRect;
@class ADView;
@class ASPlaceholderImpl;
@class ASWidgetAttribute;
@class IOSIntArray;
@class IOSObjectArray;
@protocol ASIWidget;
@protocol JavaUtilList;

@interface ASPlaceholderImpl_PlaceholderExt : ADXPlaceholder < ASILifeCycleDecorator, ASIMaxDimension >

#pragma mark Public

- (instancetype)initWithASPlaceholderImpl:(ASPlaceholderImpl *)outer$;

- (void)drawableStateChanged;

- (void)executeWithNSString:(NSString *)method
          withNSObjectArray:(IOSObjectArray *)canvas;

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute;

- (void)getLocationOnScreenWithIntArray:(IOSIntArray *)appScreenLocation;

- (jint)getMaxHeight;

- (jint)getMaxWidth;

- (id<JavaUtilList>)getMethods;

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

- (void)setVisibilityWithInt:(jint)visibility;

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

J2OBJC_EMPTY_STATIC_INIT(ASPlaceholderImpl_PlaceholderExt)

FOUNDATION_EXPORT void ASPlaceholderImpl_PlaceholderExt_initWithASPlaceholderImpl_(ASPlaceholderImpl_PlaceholderExt *self, ASPlaceholderImpl *outer$);

FOUNDATION_EXPORT ASPlaceholderImpl_PlaceholderExt *new_ASPlaceholderImpl_PlaceholderExt_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASPlaceholderImpl_PlaceholderExt *create_ASPlaceholderImpl_PlaceholderExt_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASPlaceholderImpl_PlaceholderExt)

#endif

#if !defined (ASPlaceholderImpl_PlaceholderCommandBuilder_) && (INCLUDE_ALL_PlaceholderImpl || defined(INCLUDE_ASPlaceholderImpl_PlaceholderCommandBuilder))
#define ASPlaceholderImpl_PlaceholderCommandBuilder_

#define RESTRICT_ViewImpl 1
#define INCLUDE_ASViewImpl_ViewCommandBuilder 1
#include "ViewImpl.h"

@class ASPlaceholderImpl;

@interface ASPlaceholderImpl_PlaceholderCommandBuilder : ASViewImpl_ViewCommandBuilder

#pragma mark Public

- (instancetype)initWithASPlaceholderImpl:(ASPlaceholderImpl *)outer$;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)executeWithBoolean:(jboolean)setter;

- (id)getContent;

- (id)getPlaceholder_emptyVisibility;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)invalidate;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)notifyDataSetChangedWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)refreshUiFromModelWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)requestLayout;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)reset;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setAlphaWithFloat:(jfloat)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setAsDragSourceWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setAttributeUnderTestWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setBackgroundRepeatWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setBackgroundTintModeWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setBackgroundTintWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setBackgroundWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setClickableWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setContentWithNSString:(NSString *)value;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setContentDescriptionWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setCustomErrorMessageKeysWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setCustomErrorMessageValuesWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setDuplicateParentStateWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setEnabledWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setErrorStyleWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setFocusableWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setForegroundGravityWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setForegroundRepeatWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setForegroundTintModeWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setForegroundTintWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setForegroundWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIdWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setInvalidateOnFrameChangeWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosAccessibilityHintWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosAccessibilityIgnoresInvertColorsWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosAccessibilityLabelWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosAccessibilityTraitsWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosAccessibilityValueWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosAlphaWithFloat:(jfloat)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosAutoresizesSubviewsWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosBackgroundColorWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosClearsContextBeforeDrawingWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosClipsToBoundsWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosContentScaleFactorWithFloat:(jfloat)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosInsetsLayoutMarginsFromSafeAreaWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosIsAccessibilityElementWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosIsExclusiveTouchWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosIsHiddenWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosIsMultipleTouchEnabledWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosIsOpaqueWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosIsUserInteractionEnabledWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosLargeContentImageWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosLargeContentTitleWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosLayerBorderColorWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosLayerBorderWidthWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosLayerCornerRadiusWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosLayerMasksToBoundsWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosPreservesSuperviewLayoutMarginsWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosRestorationIdentifierWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosScalesLargeContentImageWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosShowsLargeContentViewerWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosTagWithInt:(jint)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosTintColorWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setIosTranslatesAutoresizingMaskIntoConstraintsWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setKeepScreenOnWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setLayoutDirectionWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setLongClickableWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setMaxHeightWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setMaxWidthWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setMinHeightWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setMinWidthWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setModelParamWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setModelPojoToUiParamsWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setModelPojoToUiWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setModelSyncEventsWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setModelUiToPojoEventIdsWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setModelUiToPojoWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setOnClickWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setOnDragWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setOnKeyWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setOnLongClickWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setOnSwipedWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setOnTouchWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setOutsideTouchableWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setPlaceholder_emptyVisibilityWithNSString:(NSString *)value;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setRotationWithFloat:(jfloat)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setRotationXWithFloat:(jfloat)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setRotationYWithFloat:(jfloat)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setScaleXWithFloat:(jfloat)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setScaleYWithFloat:(jfloat)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setSelectedWithBoolean:(jboolean)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setStyleWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setTextAlignmentWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setTextDirectionWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setTransformPivotXWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setTransformPivotYWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setTranslationXWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setTranslationYWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setTranslationZWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setV_maxlengthWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setV_maxWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setV_minlengthWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setV_minWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setV_patternWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setV_requiredWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setV_typeWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setValidationErrorDisplayTypeWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setValidationWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setVisibilityWithNSString:(NSString *)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setZIndexWithInt:(jint)arg0;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetAlpha;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetBackground;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetBackgroundTint;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetBackgroundTintMode;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetClickable;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetContent;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetContentDescription;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetDuplicateParentState;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetEnabled;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetFocusable;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetForeground;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetForegroundGravity;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetForegroundTint;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetForegroundTintMode;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetId;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosAccessibilityHint;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosAccessibilityIgnoresInvertColors;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosAccessibilityLabel;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosAccessibilityTraits;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosAccessibilityValue;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosAlpha;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosAutoresizesSubviews;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosBackgroundColor;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosClearsContextBeforeDrawing;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosClipsToBounds;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosContentScaleFactor;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosInsetsLayoutMarginsFromSafeArea;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosIsAccessibilityElement;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosIsExclusiveTouch;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosIsFocused;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosIsHidden;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosIsMultipleTouchEnabled;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosIsOpaque;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosIsUserInteractionEnabled;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosLargeContentImage;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosLargeContentTitle;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosPreservesSuperviewLayoutMargins;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosRestorationIdentifier;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosScalesLargeContentImage;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosShowsLargeContentViewer;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosTag;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosTintColor;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetIosTranslatesAutoresizingMaskIntoConstraints;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetKeepScreenOn;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetLayoutDirection;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetLongClickable;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetMaxHeight;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetMaxWidth;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetMinHeight;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetMinWidth;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetModelParam;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetModelPojoToUi;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetModelSyncEvents;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetModelUiToPojo;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetPlaceholder_emptyVisibility;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetRotation;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetRotationX;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetRotationY;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetScaleX;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetScaleY;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetSelected;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetTextAlignment;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetTextDirection;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetTransformPivotX;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetTransformPivotY;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetTranslationX;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetTranslationY;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetTranslationZ;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetValidateForm;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetVisibility;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)updateModelDataWithNSString:(NSString *)arg0
                                                                      withId:(id)arg1;

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)validateFormWithNSString:(NSString *)arg0;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASPlaceholderImpl_PlaceholderCommandBuilder)

FOUNDATION_EXPORT void ASPlaceholderImpl_PlaceholderCommandBuilder_initWithASPlaceholderImpl_(ASPlaceholderImpl_PlaceholderCommandBuilder *self, ASPlaceholderImpl *outer$);

FOUNDATION_EXPORT ASPlaceholderImpl_PlaceholderCommandBuilder *new_ASPlaceholderImpl_PlaceholderCommandBuilder_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASPlaceholderImpl_PlaceholderCommandBuilder *create_ASPlaceholderImpl_PlaceholderCommandBuilder_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASPlaceholderImpl_PlaceholderCommandBuilder)

#endif

#if !defined (ASPlaceholderImpl_PlaceholderBean_) && (INCLUDE_ALL_PlaceholderImpl || defined(INCLUDE_ASPlaceholderImpl_PlaceholderBean))
#define ASPlaceholderImpl_PlaceholderBean_

#define RESTRICT_ViewImpl 1
#define INCLUDE_ASViewImpl_ViewBean 1
#include "ViewImpl.h"

@class ASPlaceholderImpl;
@protocol ASIWidget;

@interface ASPlaceholderImpl_PlaceholderBean : ASViewImpl_ViewBean

#pragma mark Public

- (instancetype)initWithASPlaceholderImpl:(ASPlaceholderImpl *)outer$;

- (id)getContent;

- (id)getPlaceholder_emptyVisibility;

- (void)setContentWithNSString:(NSString *)value;

- (void)setPlaceholder_emptyVisibilityWithNSString:(NSString *)value;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithASIWidget:(id<ASIWidget>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASPlaceholderImpl_PlaceholderBean)

FOUNDATION_EXPORT void ASPlaceholderImpl_PlaceholderBean_initWithASPlaceholderImpl_(ASPlaceholderImpl_PlaceholderBean *self, ASPlaceholderImpl *outer$);

FOUNDATION_EXPORT ASPlaceholderImpl_PlaceholderBean *new_ASPlaceholderImpl_PlaceholderBean_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASPlaceholderImpl_PlaceholderBean *create_ASPlaceholderImpl_PlaceholderBean_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASPlaceholderImpl_PlaceholderBean)

#endif

#pragma pop_macro("INCLUDE_ALL_PlaceholderImpl")
