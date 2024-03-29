//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\Animatable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Animatable")
#ifdef RESTRICT_Animatable
#define INCLUDE_ALL_Animatable 0
#else
#define INCLUDE_ALL_Animatable 1
#endif
#undef RESTRICT_Animatable

#if !defined (ADXAnimatable_) && (INCLUDE_ALL_Animatable || defined(INCLUDE_ADXAnimatable))
#define ADXAnimatable_

/*!
 @brief A helper interface allowing MotionLayout to directly drive custom views
 */
@protocol ADXAnimatable < JavaObject >

- (void)setProgressWithFloat:(jfloat)progress;

- (jfloat)getProgress;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXAnimatable)

J2OBJC_TYPE_LITERAL_HEADER(ADXAnimatable)

#define AndroidxConstraintlayoutMotionWidgetAnimatable ADXAnimatable

#endif

#pragma pop_macro("INCLUDE_ALL_Animatable")
