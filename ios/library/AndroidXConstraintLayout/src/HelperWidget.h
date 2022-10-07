//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\HelperWidget.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_HelperWidget")
#ifdef RESTRICT_HelperWidget
#define INCLUDE_ALL_HelperWidget 0
#else
#define INCLUDE_ALL_HelperWidget 1
#endif
#undef RESTRICT_HelperWidget

#if !defined (ADXHelperWidget_) && (INCLUDE_ALL_HelperWidget || defined(INCLUDE_ADXHelperWidget))
#define ADXHelperWidget_

#define RESTRICT_ConstraintWidget 1
#define INCLUDE_ADXConstraintWidget 1
#include "ConstraintWidget.h"

#define RESTRICT_Helper 1
#define INCLUDE_ADXHelper 1
#include "Helper.h"

@class ADXConstraintWidgetContainer;
@class ADXWidgetGroup;
@class IOSObjectArray;
@class JavaUtilArrayList;
@class JavaUtilHashMap;

/*!
 @brief HelperWidget class
 */
@interface ADXHelperWidget : ADXConstraintWidget < ADXHelper > {
 @public
  IOSObjectArray *mWidgets_;
  jint mWidgetsCount_;
}

#pragma mark Public

- (instancetype)init;

/*!
 @brief Add a widget to the helper
 @param widget a widget
 */
- (void)addWithADXConstraintWidget:(ADXConstraintWidget *)widget;

- (void)addDependentsWithJavaUtilArrayList:(JavaUtilArrayList *)dependencyLists
                                   withInt:(jint)orientation
                        withADXWidgetGroup:(ADXWidgetGroup *)group;

- (void)copy__WithADXConstraintWidget:(ADXConstraintWidget *)src
                  withJavaUtilHashMap:(JavaUtilHashMap *)map OBJC_METHOD_FAMILY_NONE;

- (jint)findGroupInDependentsWithInt:(jint)orientation;

/*!
 @brief Reset the widgets list contained by this helper
 */
- (void)removeAllIds;

- (void)updateConstraintsWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)container;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithInt:(jint)arg0
                    withInt:(jint)arg1 NS_UNAVAILABLE;

- (instancetype)initWithInt:(jint)arg0
                    withInt:(jint)arg1
                    withInt:(jint)arg2
                    withInt:(jint)arg3 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
                         withInt:(jint)arg1
                         withInt:(jint)arg2 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
                         withInt:(jint)arg1
                         withInt:(jint)arg2
                         withInt:(jint)arg3
                         withInt:(jint)arg4 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXHelperWidget)

J2OBJC_FIELD_SETTER(ADXHelperWidget, mWidgets_, IOSObjectArray *)

FOUNDATION_EXPORT void ADXHelperWidget_init(ADXHelperWidget *self);

FOUNDATION_EXPORT ADXHelperWidget *new_ADXHelperWidget_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXHelperWidget *create_ADXHelperWidget_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXHelperWidget)

@compatibility_alias AndroidxConstraintlayoutCoreWidgetsHelperWidget ADXHelperWidget;

#endif

#pragma pop_macro("INCLUDE_ALL_HelperWidget")