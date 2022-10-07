//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\state\helpers\VerticalChainReference.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_VerticalChainReference")
#ifdef RESTRICT_VerticalChainReference
#define INCLUDE_ALL_VerticalChainReference 0
#else
#define INCLUDE_ALL_VerticalChainReference 1
#endif
#undef RESTRICT_VerticalChainReference

#if !defined (ADXVerticalChainReference_) && (INCLUDE_ALL_VerticalChainReference || defined(INCLUDE_ADXVerticalChainReference))
#define ADXVerticalChainReference_

#define RESTRICT_ChainReference 1
#define INCLUDE_ADXChainReference 1
#include "ChainReference.h"

@class ADXState;
@class ADXState_Helper;

@interface ADXVerticalChainReference : ADXChainReference

#pragma mark Public

- (instancetype)initWithADXState:(ADXState *)state;

- (void)apply;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADXState:(ADXState *)arg0
             withADXState_Helper:(ADXState_Helper *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXVerticalChainReference)

FOUNDATION_EXPORT void ADXVerticalChainReference_initWithADXState_(ADXVerticalChainReference *self, ADXState *state);

FOUNDATION_EXPORT ADXVerticalChainReference *new_ADXVerticalChainReference_initWithADXState_(ADXState *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXVerticalChainReference *create_ADXVerticalChainReference_initWithADXState_(ADXState *state);

J2OBJC_TYPE_LITERAL_HEADER(ADXVerticalChainReference)

@compatibility_alias AndroidxConstraintlayoutCoreStateHelpersVerticalChainReference ADXVerticalChainReference;

#endif

#pragma pop_macro("INCLUDE_ALL_VerticalChainReference")