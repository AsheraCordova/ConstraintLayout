//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\DimensionDependency.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_DimensionDependency")
#ifdef RESTRICT_DimensionDependency
#define INCLUDE_ALL_DimensionDependency 0
#else
#define INCLUDE_ALL_DimensionDependency 1
#endif
#undef RESTRICT_DimensionDependency

#if !defined (ADXDimensionDependency_) && (INCLUDE_ALL_DimensionDependency || defined(INCLUDE_ADXDimensionDependency))
#define ADXDimensionDependency_

#define RESTRICT_DependencyNode 1
#define INCLUDE_ADXDependencyNode 1
#include "DependencyNode.h"

@class ADXWidgetRun;

@interface ADXDimensionDependency : ADXDependencyNode {
 @public
  jint wrapValue_;
}

#pragma mark Public

- (instancetype)initPackagePrivateWithADXWidgetRun:(ADXWidgetRun *)run;

- (void)resolveWithInt:(jint)value;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADXWidgetRun:(ADXWidgetRun *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXDimensionDependency)

FOUNDATION_EXPORT void ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXDimensionDependency *self, ADXWidgetRun *run);

FOUNDATION_EXPORT ADXDimensionDependency *new_ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXWidgetRun *run) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXDimensionDependency *create_ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXWidgetRun *run);

J2OBJC_TYPE_LITERAL_HEADER(ADXDimensionDependency)

@compatibility_alias AndroidxConstraintlayoutCoreWidgetsAnalyzerDimensionDependency ADXDimensionDependency;

#endif

#pragma pop_macro("INCLUDE_ALL_DimensionDependency")