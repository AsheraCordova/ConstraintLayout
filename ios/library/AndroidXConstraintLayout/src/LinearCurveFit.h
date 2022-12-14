//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\LinearCurveFit.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LinearCurveFit")
#ifdef RESTRICT_LinearCurveFit
#define INCLUDE_ALL_LinearCurveFit 0
#else
#define INCLUDE_ALL_LinearCurveFit 1
#endif
#undef RESTRICT_LinearCurveFit

#if !defined (ADXLinearCurveFit_) && (INCLUDE_ALL_LinearCurveFit || defined(INCLUDE_ADXLinearCurveFit))
#define ADXLinearCurveFit_

#define RESTRICT_CurveFit 1
#define INCLUDE_ADXCurveFit 1
#include "CurveFit.h"

@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSObjectArray;

/*!
 @brief This performs a simple linear interpolation in multiple dimensions
 */
@interface ADXLinearCurveFit : ADXCurveFit {
 @public
  IOSDoubleArray *mSlopeTemp_;
}

#pragma mark Public

- (instancetype)initWithDoubleArray:(IOSDoubleArray *)time
                   withDoubleArray2:(IOSObjectArray *)y;

- (void)getPosWithDouble:(jdouble)t
         withDoubleArray:(IOSDoubleArray *)v;

- (void)getPosWithDouble:(jdouble)t
          withFloatArray:(IOSFloatArray *)v;

- (jdouble)getPosWithDouble:(jdouble)t
                    withInt:(jint)j;

- (void)getSlopeWithDouble:(jdouble)t
           withDoubleArray:(IOSDoubleArray *)v;

- (jdouble)getSlopeWithDouble:(jdouble)t
                      withInt:(jint)j;

- (IOSDoubleArray *)getTimePoints;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXLinearCurveFit)

J2OBJC_FIELD_SETTER(ADXLinearCurveFit, mSlopeTemp_, IOSDoubleArray *)

FOUNDATION_EXPORT void ADXLinearCurveFit_initWithDoubleArray_withDoubleArray2_(ADXLinearCurveFit *self, IOSDoubleArray *time, IOSObjectArray *y);

FOUNDATION_EXPORT ADXLinearCurveFit *new_ADXLinearCurveFit_initWithDoubleArray_withDoubleArray2_(IOSDoubleArray *time, IOSObjectArray *y) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXLinearCurveFit *create_ADXLinearCurveFit_initWithDoubleArray_withDoubleArray2_(IOSDoubleArray *time, IOSObjectArray *y);

J2OBJC_TYPE_LITERAL_HEADER(ADXLinearCurveFit)

@compatibility_alias AndroidxConstraintlayoutCoreMotionUtilsLinearCurveFit ADXLinearCurveFit;

#endif

#pragma pop_macro("INCLUDE_ALL_LinearCurveFit")
