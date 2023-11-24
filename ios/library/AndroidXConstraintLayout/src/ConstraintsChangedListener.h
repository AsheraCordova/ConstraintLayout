//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\widget\ConstraintsChangedListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ConstraintsChangedListener")
#ifdef RESTRICT_ConstraintsChangedListener
#define INCLUDE_ALL_ConstraintsChangedListener 0
#else
#define INCLUDE_ALL_ConstraintsChangedListener 1
#endif
#undef RESTRICT_ConstraintsChangedListener

#if !defined (ADXConstraintsChangedListener_) && (INCLUDE_ALL_ConstraintsChangedListener || defined(INCLUDE_ADXConstraintsChangedListener))
#define ADXConstraintsChangedListener_

/*!
 @brief <b>Added in 2.0</b>
 <p>
  Callbacks on state change 
 </p>
 */
@interface ADXConstraintsChangedListener : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief called after layout happens
 @param stateId -1 if state unknown, otherwise the current state
 @param constraintId the current constraintSet id we transitioned to
 */
- (void)postLayoutChangeWithInt:(jint)stateId
                        withInt:(jint)constraintId;

/*!
 @brief called before layout happens
 @param stateId -1 if state unknown, otherwise the state we will transition to
 @param constraintId the constraintSet id that we will transition to
 */
- (void)preLayoutChangeWithInt:(jint)stateId
                       withInt:(jint)constraintId;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintsChangedListener)

FOUNDATION_EXPORT void ADXConstraintsChangedListener_init(ADXConstraintsChangedListener *self);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintsChangedListener)

@compatibility_alias AndroidxConstraintlayoutWidgetConstraintsChangedListener ADXConstraintsChangedListener;

#endif

#pragma pop_macro("INCLUDE_ALL_ConstraintsChangedListener")
