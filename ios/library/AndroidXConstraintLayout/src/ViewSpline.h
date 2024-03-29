//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\utils\ViewSpline.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ViewSpline")
#ifdef RESTRICT_ViewSpline
#define INCLUDE_ALL_ViewSpline 0
#else
#define INCLUDE_ALL_ViewSpline 1
#endif
#undef RESTRICT_ViewSpline
#ifdef INCLUDE_ADXViewSpline_ProgressSet
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_CustomSet
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_TranslationZset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_TranslationYset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_TranslationXset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_ScaleYset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_ScaleXset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_PathRotate
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_PivotYset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_PivotXset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_RotationYset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_RotationXset
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_RotationSet
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_AlphaSet
#define INCLUDE_ADXViewSpline 1
#endif
#ifdef INCLUDE_ADXViewSpline_ElevationSet
#define INCLUDE_ADXViewSpline 1
#endif

#if !defined (ADXViewSpline_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline))
#define ADXViewSpline_

#define RESTRICT_SplineSet 1
#define INCLUDE_ADXSplineSet 1
#include "SplineSet.h"

@class ADSparseArray;
@class ADView;

@interface ADXViewSpline : ADXSplineSet

#pragma mark Public

- (instancetype)init;

+ (ADXViewSpline *)makeCustomSplineWithNSString:(NSString *)str
                              withADSparseArray:(ADSparseArray *)attrList;

+ (ADXViewSpline *)makeSplineWithNSString:(NSString *)str;

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline)

FOUNDATION_EXPORT void ADXViewSpline_init(ADXViewSpline *self);

FOUNDATION_EXPORT ADXViewSpline *ADXViewSpline_makeCustomSplineWithNSString_withADSparseArray_(NSString *str, ADSparseArray *attrList);

FOUNDATION_EXPORT ADXViewSpline *ADXViewSpline_makeSplineWithNSString_(NSString *str);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline)

@compatibility_alias AndroidxConstraintlayoutMotionUtilsViewSpline ADXViewSpline;

#endif

#if !defined (ADXViewSpline_ElevationSet_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_ElevationSet))
#define ADXViewSpline_ElevationSet_

@class ADView;

@interface ADXViewSpline_ElevationSet : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_ElevationSet)

FOUNDATION_EXPORT void ADXViewSpline_ElevationSet_init(ADXViewSpline_ElevationSet *self);

FOUNDATION_EXPORT ADXViewSpline_ElevationSet *new_ADXViewSpline_ElevationSet_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_ElevationSet *create_ADXViewSpline_ElevationSet_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_ElevationSet)

#endif

#if !defined (ADXViewSpline_AlphaSet_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_AlphaSet))
#define ADXViewSpline_AlphaSet_

@class ADView;

@interface ADXViewSpline_AlphaSet : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_AlphaSet)

FOUNDATION_EXPORT void ADXViewSpline_AlphaSet_init(ADXViewSpline_AlphaSet *self);

FOUNDATION_EXPORT ADXViewSpline_AlphaSet *new_ADXViewSpline_AlphaSet_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_AlphaSet *create_ADXViewSpline_AlphaSet_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_AlphaSet)

#endif

#if !defined (ADXViewSpline_RotationSet_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_RotationSet))
#define ADXViewSpline_RotationSet_

@class ADView;

@interface ADXViewSpline_RotationSet : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_RotationSet)

FOUNDATION_EXPORT void ADXViewSpline_RotationSet_init(ADXViewSpline_RotationSet *self);

FOUNDATION_EXPORT ADXViewSpline_RotationSet *new_ADXViewSpline_RotationSet_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_RotationSet *create_ADXViewSpline_RotationSet_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_RotationSet)

#endif

#if !defined (ADXViewSpline_RotationXset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_RotationXset))
#define ADXViewSpline_RotationXset_

@class ADView;

@interface ADXViewSpline_RotationXset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_RotationXset)

FOUNDATION_EXPORT void ADXViewSpline_RotationXset_init(ADXViewSpline_RotationXset *self);

FOUNDATION_EXPORT ADXViewSpline_RotationXset *new_ADXViewSpline_RotationXset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_RotationXset *create_ADXViewSpline_RotationXset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_RotationXset)

#endif

#if !defined (ADXViewSpline_RotationYset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_RotationYset))
#define ADXViewSpline_RotationYset_

@class ADView;

@interface ADXViewSpline_RotationYset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_RotationYset)

FOUNDATION_EXPORT void ADXViewSpline_RotationYset_init(ADXViewSpline_RotationYset *self);

FOUNDATION_EXPORT ADXViewSpline_RotationYset *new_ADXViewSpline_RotationYset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_RotationYset *create_ADXViewSpline_RotationYset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_RotationYset)

#endif

#if !defined (ADXViewSpline_PivotXset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_PivotXset))
#define ADXViewSpline_PivotXset_

@class ADView;

@interface ADXViewSpline_PivotXset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_PivotXset)

FOUNDATION_EXPORT void ADXViewSpline_PivotXset_init(ADXViewSpline_PivotXset *self);

FOUNDATION_EXPORT ADXViewSpline_PivotXset *new_ADXViewSpline_PivotXset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_PivotXset *create_ADXViewSpline_PivotXset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_PivotXset)

#endif

#if !defined (ADXViewSpline_PivotYset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_PivotYset))
#define ADXViewSpline_PivotYset_

@class ADView;

@interface ADXViewSpline_PivotYset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_PivotYset)

FOUNDATION_EXPORT void ADXViewSpline_PivotYset_init(ADXViewSpline_PivotYset *self);

FOUNDATION_EXPORT ADXViewSpline_PivotYset *new_ADXViewSpline_PivotYset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_PivotYset *create_ADXViewSpline_PivotYset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_PivotYset)

#endif

#if !defined (ADXViewSpline_PathRotate_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_PathRotate))
#define ADXViewSpline_PathRotate_

@class ADView;

@interface ADXViewSpline_PathRotate : ADXViewSpline

#pragma mark Public

- (instancetype)init;

- (void)setPathRotateWithADView:(ADView *)view
                      withFloat:(jfloat)t
                     withDouble:(jdouble)dx
                     withDouble:(jdouble)dy;

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_PathRotate)

FOUNDATION_EXPORT void ADXViewSpline_PathRotate_init(ADXViewSpline_PathRotate *self);

FOUNDATION_EXPORT ADXViewSpline_PathRotate *new_ADXViewSpline_PathRotate_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_PathRotate *create_ADXViewSpline_PathRotate_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_PathRotate)

#endif

#if !defined (ADXViewSpline_ScaleXset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_ScaleXset))
#define ADXViewSpline_ScaleXset_

@class ADView;

@interface ADXViewSpline_ScaleXset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_ScaleXset)

FOUNDATION_EXPORT void ADXViewSpline_ScaleXset_init(ADXViewSpline_ScaleXset *self);

FOUNDATION_EXPORT ADXViewSpline_ScaleXset *new_ADXViewSpline_ScaleXset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_ScaleXset *create_ADXViewSpline_ScaleXset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_ScaleXset)

#endif

#if !defined (ADXViewSpline_ScaleYset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_ScaleYset))
#define ADXViewSpline_ScaleYset_

@class ADView;

@interface ADXViewSpline_ScaleYset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_ScaleYset)

FOUNDATION_EXPORT void ADXViewSpline_ScaleYset_init(ADXViewSpline_ScaleYset *self);

FOUNDATION_EXPORT ADXViewSpline_ScaleYset *new_ADXViewSpline_ScaleYset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_ScaleYset *create_ADXViewSpline_ScaleYset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_ScaleYset)

#endif

#if !defined (ADXViewSpline_TranslationXset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_TranslationXset))
#define ADXViewSpline_TranslationXset_

@class ADView;

@interface ADXViewSpline_TranslationXset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_TranslationXset)

FOUNDATION_EXPORT void ADXViewSpline_TranslationXset_init(ADXViewSpline_TranslationXset *self);

FOUNDATION_EXPORT ADXViewSpline_TranslationXset *new_ADXViewSpline_TranslationXset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_TranslationXset *create_ADXViewSpline_TranslationXset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_TranslationXset)

#endif

#if !defined (ADXViewSpline_TranslationYset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_TranslationYset))
#define ADXViewSpline_TranslationYset_

@class ADView;

@interface ADXViewSpline_TranslationYset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_TranslationYset)

FOUNDATION_EXPORT void ADXViewSpline_TranslationYset_init(ADXViewSpline_TranslationYset *self);

FOUNDATION_EXPORT ADXViewSpline_TranslationYset *new_ADXViewSpline_TranslationYset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_TranslationYset *create_ADXViewSpline_TranslationYset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_TranslationYset)

#endif

#if !defined (ADXViewSpline_TranslationZset_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_TranslationZset))
#define ADXViewSpline_TranslationZset_

@class ADView;

@interface ADXViewSpline_TranslationZset : ADXViewSpline

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_TranslationZset)

FOUNDATION_EXPORT void ADXViewSpline_TranslationZset_init(ADXViewSpline_TranslationZset *self);

FOUNDATION_EXPORT ADXViewSpline_TranslationZset *new_ADXViewSpline_TranslationZset_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_TranslationZset *create_ADXViewSpline_TranslationZset_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_TranslationZset)

#endif

#if !defined (ADXViewSpline_CustomSet_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_CustomSet))
#define ADXViewSpline_CustomSet_

@class ADSparseArray;
@class ADView;
@class ADXConstraintAttribute;
@class IOSFloatArray;

@interface ADXViewSpline_CustomSet : ADXViewSpline {
 @public
  NSString *mAttributeName_;
  ADSparseArray *mConstraintAttributeList_;
  IOSFloatArray *mTempValues_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)attribute
               withADSparseArray:(ADSparseArray *)attrList;

- (void)setPointWithInt:(jint)position
withADXConstraintAttribute:(ADXConstraintAttribute *)value;

- (void)setPointWithInt:(jint)position
              withFloat:(jfloat)value;

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

- (void)setupWithInt:(jint)curveType;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_CustomSet)

J2OBJC_FIELD_SETTER(ADXViewSpline_CustomSet, mAttributeName_, NSString *)
J2OBJC_FIELD_SETTER(ADXViewSpline_CustomSet, mConstraintAttributeList_, ADSparseArray *)
J2OBJC_FIELD_SETTER(ADXViewSpline_CustomSet, mTempValues_, IOSFloatArray *)

FOUNDATION_EXPORT void ADXViewSpline_CustomSet_initWithNSString_withADSparseArray_(ADXViewSpline_CustomSet *self, NSString *attribute, ADSparseArray *attrList);

FOUNDATION_EXPORT ADXViewSpline_CustomSet *new_ADXViewSpline_CustomSet_initWithNSString_withADSparseArray_(NSString *attribute, ADSparseArray *attrList) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_CustomSet *create_ADXViewSpline_CustomSet_initWithNSString_withADSparseArray_(NSString *attribute, ADSparseArray *attrList);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_CustomSet)

#endif

#if !defined (ADXViewSpline_ProgressSet_) && (INCLUDE_ALL_ViewSpline || defined(INCLUDE_ADXViewSpline_ProgressSet))
#define ADXViewSpline_ProgressSet_

@class ADView;

@interface ADXViewSpline_ProgressSet : ADXViewSpline {
 @public
  jboolean mNoMethod_;
}

#pragma mark Public

- (void)setPropertyWithADView:(ADView *)view
                    withFloat:(jfloat)t;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXViewSpline_ProgressSet)

FOUNDATION_EXPORT void ADXViewSpline_ProgressSet_init(ADXViewSpline_ProgressSet *self);

FOUNDATION_EXPORT ADXViewSpline_ProgressSet *new_ADXViewSpline_ProgressSet_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXViewSpline_ProgressSet *create_ADXViewSpline_ProgressSet_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXViewSpline_ProgressSet)

#endif

#pragma pop_macro("INCLUDE_ALL_ViewSpline")
