//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\state\helpers\BarrierReference.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_BarrierReference")
#ifdef RESTRICT_BarrierReference
#define INCLUDE_ALL_BarrierReference 0
#else
#define INCLUDE_ALL_BarrierReference 1
#endif
#undef RESTRICT_BarrierReference

#if !defined (ADXBarrierReference_) && (INCLUDE_ALL_BarrierReference || defined(INCLUDE_ADXBarrierReference))
#define ADXBarrierReference_

#define RESTRICT_HelperReference 1
#define INCLUDE_ADXHelperReference 1
#include "HelperReference.h"

@class ADXConstraintReference;
@class ADXHelperWidget;
@class ADXState;
@class ADXState_Direction;
@class ADXState_Helper;

@interface ADXBarrierReference : ADXHelperReference

#pragma mark Public

- (instancetype)initWithADXState:(ADXState *)state;

- (void)apply;

- (ADXHelperWidget *)getHelperWidget;

- (ADXConstraintReference *)marginWithInt:(jint)value;

- (ADXConstraintReference *)marginWithId:(id)value;

- (void)setBarrierDirectionWithADXState_Direction:(ADXState_Direction *)barrierDirection;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADXState:(ADXState *)arg0
             withADXState_Helper:(ADXState_Helper *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXBarrierReference)

FOUNDATION_EXPORT void ADXBarrierReference_initWithADXState_(ADXBarrierReference *self, ADXState *state);

FOUNDATION_EXPORT ADXBarrierReference *new_ADXBarrierReference_initWithADXState_(ADXState *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXBarrierReference *create_ADXBarrierReference_initWithADXState_(ADXState *state);

J2OBJC_TYPE_LITERAL_HEADER(ADXBarrierReference)

@compatibility_alias AndroidxConstraintlayoutCoreStateHelpersBarrierReference ADXBarrierReference;

#endif

#pragma pop_macro("INCLUDE_ALL_BarrierReference")