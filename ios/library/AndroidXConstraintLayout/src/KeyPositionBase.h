//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\KeyPositionBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_KeyPositionBase")
#ifdef RESTRICT_KeyPositionBase
#define INCLUDE_ALL_KeyPositionBase 0
#else
#define INCLUDE_ALL_KeyPositionBase 1
#endif
#undef RESTRICT_KeyPositionBase

#if !defined (ADXKeyPositionBase_) && (INCLUDE_ALL_KeyPositionBase || defined(INCLUDE_ADXKeyPositionBase))
#define ADXKeyPositionBase_

#define RESTRICT_Key 1
#define INCLUDE_ADXKey 1
#include "Key.h"

@class ADRectF;
@class ADView;
@class IOSFloatArray;
@class IOSObjectArray;
@class JavaUtilHashSet;

/*!
 @brief Defines a KeyPositionBase abstract base class KeyPositionBase elements provide
 */
@interface ADXKeyPositionBase : ADXKey {
 @public
  jint mCurveFit_;
}

#pragma mark Public

/*!
 @param layoutWidth
 @param layoutHeight
 @param start
 @param end
 @param x
 @param y
 */
- (jboolean)intersectsWithInt:(jint)layoutWidth
                      withInt:(jint)layoutHeight
                  withADRectF:(ADRectF *)start
                  withADRectF:(ADRectF *)end
                    withFloat:(jfloat)x
                    withFloat:(jfloat)y;

#pragma mark Package-Private

- (instancetype)initPackagePrivate;

/*!
 @brief Get the position of the view
 @param layoutWidth
 @param layoutHeight
 @param start_x
 @param start_y
 @param end_x
 @param end_y
 */
- (void)calcPositionWithInt:(jint)layoutWidth
                    withInt:(jint)layoutHeight
                  withFloat:(jfloat)start_x
                  withFloat:(jfloat)start_y
                  withFloat:(jfloat)end_x
                  withFloat:(jfloat)end_y;

- (void)getAttributeNamesWithJavaUtilHashSet:(JavaUtilHashSet *)attributes;

/*!
 */
- (jfloat)getPositionX;

/*!
 */
- (jfloat)getPositionY;

/*!
 @param view
 @param start
 @param end
 @param x
 @param y
 @param attribute
 @param value
 */
- (void)positionAttributesWithADView:(ADView *)view
                         withADRectF:(ADRectF *)start
                         withADRectF:(ADRectF *)end
                           withFloat:(jfloat)x
                           withFloat:(jfloat)y
                   withNSStringArray:(IOSObjectArray *)attribute
                      withFloatArray:(IOSFloatArray *)value;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXKeyPositionBase)

inline jfloat ADXKeyPositionBase_get_SELECTION_SLOPE(void);
#define ADXKeyPositionBase_SELECTION_SLOPE 20.0f
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyPositionBase, SELECTION_SLOPE, jfloat)

FOUNDATION_EXPORT void ADXKeyPositionBase_initPackagePrivate(ADXKeyPositionBase *self);

J2OBJC_TYPE_LITERAL_HEADER(ADXKeyPositionBase)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetKeyPositionBase ADXKeyPositionBase;

#endif

#pragma pop_macro("INCLUDE_ALL_KeyPositionBase")