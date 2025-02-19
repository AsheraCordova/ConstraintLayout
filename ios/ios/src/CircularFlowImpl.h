//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSAndroidXConstraintLayoutPlugin\src\main\java\com\ashera\constraintlayout\CircularFlowImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CircularFlowImpl")
#ifdef RESTRICT_CircularFlowImpl
#define INCLUDE_ALL_CircularFlowImpl 0
#else
#define INCLUDE_ALL_CircularFlowImpl 1
#endif
#undef RESTRICT_CircularFlowImpl

#if !defined (ASCircularFlowImpl_) && (INCLUDE_ALL_CircularFlowImpl || defined(INCLUDE_ASCircularFlowImpl))
#define ASCircularFlowImpl_

#define RESTRICT_BaseWidget 1
#define INCLUDE_ASBaseWidget 1
#include "BaseWidget.h"

@class ADXCircularFlow;
@class ASWidgetAttribute;
@class IOSClass;
@protocol ASIFragment;
@protocol ASILifeCycleDecorator;
@protocol ASIWidget;
@protocol JavaUtilMap;

@interface ASCircularFlowImpl : ASBaseWidget {
 @public
  id uiView_;
  ADXCircularFlow *circularFlow_;
}
@property id uiView;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)localname;

- (instancetype)initWithNSString:(NSString *)groupName
                    withNSString:(NSString *)localname;

- (void)afterParentInit;

- (id)asNativeWidget;

- (id)asWidget;

- (jboolean)checkIosVersionWithNSString:(NSString *)v;

- (void)createWithASIFragment:(id<ASIFragment>)fragment
              withJavaUtilMap:(id<JavaUtilMap>)params;

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
              withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator;

- (IOSClass *)getViewClass;

- (void)invalidate;

- (jboolean)isAfterParentInitRequired;

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

J2OBJC_STATIC_INIT(ASCircularFlowImpl)

J2OBJC_FIELD_SETTER(ASCircularFlowImpl, uiView_, id)
J2OBJC_FIELD_SETTER(ASCircularFlowImpl, circularFlow_, ADXCircularFlow *)

inline NSString *ASCircularFlowImpl_get_LOCAL_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASCircularFlowImpl_LOCAL_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASCircularFlowImpl, LOCAL_NAME, NSString *)

inline NSString *ASCircularFlowImpl_get_GROUP_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASCircularFlowImpl_GROUP_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASCircularFlowImpl, GROUP_NAME, NSString *)

FOUNDATION_EXPORT void ASCircularFlowImpl_init(ASCircularFlowImpl *self);

FOUNDATION_EXPORT ASCircularFlowImpl *new_ASCircularFlowImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASCircularFlowImpl *create_ASCircularFlowImpl_init(void);

FOUNDATION_EXPORT void ASCircularFlowImpl_initWithNSString_(ASCircularFlowImpl *self, NSString *localname);

FOUNDATION_EXPORT ASCircularFlowImpl *new_ASCircularFlowImpl_initWithNSString_(NSString *localname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASCircularFlowImpl *create_ASCircularFlowImpl_initWithNSString_(NSString *localname);

FOUNDATION_EXPORT void ASCircularFlowImpl_initWithNSString_withNSString_(ASCircularFlowImpl *self, NSString *groupName, NSString *localname);

FOUNDATION_EXPORT ASCircularFlowImpl *new_ASCircularFlowImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASCircularFlowImpl *create_ASCircularFlowImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname);

J2OBJC_TYPE_LITERAL_HEADER(ASCircularFlowImpl)

@compatibility_alias ComAsheraConstraintlayoutCircularFlowImpl ASCircularFlowImpl;

#endif

#if !defined (ASCircularFlowImpl_CircularFlowExt_) && (INCLUDE_ALL_CircularFlowImpl || defined(INCLUDE_ASCircularFlowImpl_CircularFlowExt))
#define ASCircularFlowImpl_CircularFlowExt_

#define RESTRICT_CircularFlow 1
#define INCLUDE_ADXCircularFlow 1
#include "CircularFlow.h"

#define RESTRICT_ILifeCycleDecorator 1
#define INCLUDE_ASILifeCycleDecorator 1
#include "ILifeCycleDecorator.h"

#define RESTRICT_IMaxDimension 1
#define INCLUDE_ASIMaxDimension 1
#include "IMaxDimension.h"

@class ADRect;
@class ADView;
@class ASCircularFlowImpl;
@class ASWidgetAttribute;
@class IOSIntArray;
@class IOSObjectArray;
@protocol ASIWidget;
@protocol JavaUtilList;

@interface ASCircularFlowImpl_CircularFlowExt : ADXCircularFlow < ASILifeCycleDecorator, ASIMaxDimension >

#pragma mark Public

- (instancetype)initWithASCircularFlowImpl:(ASCircularFlowImpl *)outer$;

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

J2OBJC_EMPTY_STATIC_INIT(ASCircularFlowImpl_CircularFlowExt)

FOUNDATION_EXPORT void ASCircularFlowImpl_CircularFlowExt_initWithASCircularFlowImpl_(ASCircularFlowImpl_CircularFlowExt *self, ASCircularFlowImpl *outer$);

FOUNDATION_EXPORT ASCircularFlowImpl_CircularFlowExt *new_ASCircularFlowImpl_CircularFlowExt_initWithASCircularFlowImpl_(ASCircularFlowImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASCircularFlowImpl_CircularFlowExt *create_ASCircularFlowImpl_CircularFlowExt_initWithASCircularFlowImpl_(ASCircularFlowImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASCircularFlowImpl_CircularFlowExt)

#endif

#pragma pop_macro("INCLUDE_ALL_CircularFlowImpl")
