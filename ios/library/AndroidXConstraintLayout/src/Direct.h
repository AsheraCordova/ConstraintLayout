//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\Direct.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Direct")
#ifdef RESTRICT_Direct
#define INCLUDE_ALL_Direct 0
#else
#define INCLUDE_ALL_Direct 1
#endif
#undef RESTRICT_Direct

#if !defined (ADXDirect_) && (INCLUDE_ALL_Direct || defined(INCLUDE_ADXDirect))
#define ADXDirect_

@class ADXChainHead;
@class ADXConstraintWidgetContainer;
@class ADXLinearSystem;
@protocol ADXBasicMeasure_Measurer;

/*!
 @brief Direct resolution engine
  This walks through the graph of dependencies and infer final position.This allows
  us to skip the linear solver in many situations, as well as skipping intermediate measure passes.
 Widgets are solved independently in horizontal and vertical. Any widgets not fully resolved
  will be computed later on by the linear solver.
 */
@interface ADXDirect : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Small utility function to indent logs depending on the level
 @param level
 @return a formatted string for the indentation
 */
+ (NSString *)lsWithInt:(jint)level;

/*!
 @brief Try to directly resolve the chain
 @param container
 @param system
 @param orientation
 @param offset
 @param chainHead
 @param isChainSpread
 @param isChainSpreadInside
 @param isChainPacked
 @return true if fully resolved
 */
+ (jboolean)solveChainWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)container
                                   withADXLinearSystem:(ADXLinearSystem *)system
                                               withInt:(jint)orientation
                                               withInt:(jint)offset
                                      withADXChainHead:(ADXChainHead *)chainHead
                                           withBoolean:(jboolean)isChainSpread
                                           withBoolean:(jboolean)isChainSpreadInside
                                           withBoolean:(jboolean)isChainPacked;

/*!
 @brief Walk the dependency graph and solves it.
 @param layout the container we want to optimize
 @param measurer the measurer used to measure the widget
 */
+ (void)solvingPassWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)layout
                       withADXBasicMeasure_Measurer:(id<ADXBasicMeasure_Measurer>)measurer;

@end

J2OBJC_STATIC_INIT(ADXDirect)

FOUNDATION_EXPORT void ADXDirect_init(ADXDirect *self);

FOUNDATION_EXPORT ADXDirect *new_ADXDirect_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXDirect *create_ADXDirect_init(void);

FOUNDATION_EXPORT void ADXDirect_solvingPassWithADXConstraintWidgetContainer_withADXBasicMeasure_Measurer_(ADXConstraintWidgetContainer *layout, id<ADXBasicMeasure_Measurer> measurer);

FOUNDATION_EXPORT NSString *ADXDirect_lsWithInt_(jint level);

FOUNDATION_EXPORT jboolean ADXDirect_solveChainWithADXConstraintWidgetContainer_withADXLinearSystem_withInt_withInt_withADXChainHead_withBoolean_withBoolean_withBoolean_(ADXConstraintWidgetContainer *container, ADXLinearSystem *system, jint orientation, jint offset, ADXChainHead *chainHead, jboolean isChainSpread, jboolean isChainSpreadInside, jboolean isChainPacked);

J2OBJC_TYPE_LITERAL_HEADER(ADXDirect)

@compatibility_alias AndroidxConstraintlayoutCoreWidgetsAnalyzerDirect ADXDirect;

#endif

#pragma pop_macro("INCLUDE_ALL_Direct")
