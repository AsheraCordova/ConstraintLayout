//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\ChainHead.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ChainHead")
#ifdef RESTRICT_ChainHead
#define INCLUDE_ALL_ChainHead 0
#else
#define INCLUDE_ALL_ChainHead 1
#endif
#undef RESTRICT_ChainHead

#if !defined (ADXChainHead_) && (INCLUDE_ALL_ChainHead || defined(INCLUDE_ADXChainHead))
#define ADXChainHead_

@class ADXConstraintWidget;
@class JavaUtilArrayList;

/*!
 @brief Class to represent a chain by its main elements.
 */
@interface ADXChainHead : NSObject {
 @public
  ADXConstraintWidget *mFirst_;
  ADXConstraintWidget *mFirstVisibleWidget_;
  ADXConstraintWidget *mLast_;
  ADXConstraintWidget *mLastVisibleWidget_;
  ADXConstraintWidget *mHead_;
  ADXConstraintWidget *mFirstMatchConstraintWidget_;
  ADXConstraintWidget *mLastMatchConstraintWidget_;
  JavaUtilArrayList *mWeightedMatchConstraintsWidgets_;
  jint mWidgetsCount_;
  jint mWidgetsMatchCount_;
  jfloat mTotalWeight_;
  jint mVisibleWidgets_;
  jint mTotalSize_;
  jint mTotalMargins_;
  jboolean mOptimizable_;
  jboolean mHasUndefinedWeights_;
  jboolean mHasDefinedWeights_;
  jboolean mHasComplexMatchWeights_;
  jboolean mHasRatio_;
}

#pragma mark Public

/*!
 @brief Initialize variables, then determine visible widgets, the head of chain and
  matched constraint widgets.
 @param first first widget in a chain
 @param orientation orientation of the chain (either Horizontal or Vertical)
 @param isRtl Right-to-left layout flag to determine the actual head of the chain
 */
- (instancetype)initWithADXConstraintWidget:(ADXConstraintWidget *)first
                                    withInt:(jint)orientation
                                withBoolean:(jboolean)isRtl;

- (void)define;

- (ADXConstraintWidget *)getFirst;

- (ADXConstraintWidget *)getFirstMatchConstraintWidget;

- (ADXConstraintWidget *)getFirstVisibleWidget;

- (ADXConstraintWidget *)getHead;

- (ADXConstraintWidget *)getLast;

- (ADXConstraintWidget *)getLastMatchConstraintWidget;

- (ADXConstraintWidget *)getLastVisibleWidget;

- (jfloat)getTotalWeight;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXChainHead)

J2OBJC_FIELD_SETTER(ADXChainHead, mFirst_, ADXConstraintWidget *)
J2OBJC_FIELD_SETTER(ADXChainHead, mFirstVisibleWidget_, ADXConstraintWidget *)
J2OBJC_FIELD_SETTER(ADXChainHead, mLast_, ADXConstraintWidget *)
J2OBJC_FIELD_SETTER(ADXChainHead, mLastVisibleWidget_, ADXConstraintWidget *)
J2OBJC_FIELD_SETTER(ADXChainHead, mHead_, ADXConstraintWidget *)
J2OBJC_FIELD_SETTER(ADXChainHead, mFirstMatchConstraintWidget_, ADXConstraintWidget *)
J2OBJC_FIELD_SETTER(ADXChainHead, mLastMatchConstraintWidget_, ADXConstraintWidget *)
J2OBJC_FIELD_SETTER(ADXChainHead, mWeightedMatchConstraintsWidgets_, JavaUtilArrayList *)

FOUNDATION_EXPORT void ADXChainHead_initWithADXConstraintWidget_withInt_withBoolean_(ADXChainHead *self, ADXConstraintWidget *first, jint orientation, jboolean isRtl);

FOUNDATION_EXPORT ADXChainHead *new_ADXChainHead_initWithADXConstraintWidget_withInt_withBoolean_(ADXConstraintWidget *first, jint orientation, jboolean isRtl) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXChainHead *create_ADXChainHead_initWithADXConstraintWidget_withInt_withBoolean_(ADXConstraintWidget *first, jint orientation, jboolean isRtl);

J2OBJC_TYPE_LITERAL_HEADER(ADXChainHead)

@compatibility_alias AndroidxConstraintlayoutCoreWidgetsChainHead ADXChainHead;

#endif

#pragma pop_macro("INCLUDE_ALL_ChainHead")
