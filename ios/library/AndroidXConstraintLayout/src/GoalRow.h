//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\GoalRow.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GoalRow")
#ifdef RESTRICT_GoalRow
#define INCLUDE_ALL_GoalRow 0
#else
#define INCLUDE_ALL_GoalRow 1
#endif
#undef RESTRICT_GoalRow

#if !defined (ADXGoalRow_) && (INCLUDE_ALL_GoalRow || defined(INCLUDE_ADXGoalRow))
#define ADXGoalRow_

#define RESTRICT_ArrayRow 1
#define INCLUDE_ADXArrayRow 1
#include "ArrayRow.h"

@class ADXCache;
@class ADXSolverVariable;

@interface ADXGoalRow : ADXArrayRow

#pragma mark Public

- (instancetype)initWithADXCache:(ADXCache *)cache;

- (void)addErrorWithADXSolverVariable:(ADXSolverVariable *)error;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXGoalRow)

FOUNDATION_EXPORT void ADXGoalRow_initWithADXCache_(ADXGoalRow *self, ADXCache *cache);

FOUNDATION_EXPORT ADXGoalRow *new_ADXGoalRow_initWithADXCache_(ADXCache *cache) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGoalRow *create_ADXGoalRow_initWithADXCache_(ADXCache *cache);

J2OBJC_TYPE_LITERAL_HEADER(ADXGoalRow)

@compatibility_alias AndroidxConstraintlayoutCoreGoalRow ADXGoalRow;

#endif

#pragma pop_macro("INCLUDE_ALL_GoalRow")
