//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\MotionHelperInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MotionHelperInterface")
#ifdef RESTRICT_MotionHelperInterface
#define INCLUDE_ALL_MotionHelperInterface 0
#else
#define INCLUDE_ALL_MotionHelperInterface 1
#endif
#undef RESTRICT_MotionHelperInterface

#if !defined (ADXMotionHelperInterface_) && (INCLUDE_ALL_MotionHelperInterface || defined(INCLUDE_ADXMotionHelperInterface))
#define ADXMotionHelperInterface_

#define RESTRICT_Animatable 1
#define INCLUDE_ADXAnimatable 1
#include "Animatable.h"

#define RESTRICT_MotionLayout 1
#define INCLUDE_ADXMotionLayout_TransitionListener 1
#include "MotionLayout.h"

@class ADXMotionLayout;
@class JavaUtilHashMap;
@protocol ADCanvas;

@protocol ADXMotionHelperInterface < ADXAnimatable, ADXMotionLayout_TransitionListener, JavaObject >

- (jboolean)isUsedOnShow;

- (jboolean)isUseOnHide;

- (jboolean)isDecorator;

- (void)onPreDrawWithADCanvas:(id<ADCanvas>)canvas;

- (void)onPostDrawWithADCanvas:(id<ADCanvas>)canvas;

/*!
 @brief Called after motionController is populated with start and end and keyframes.
 @param motionLayout
 @param controllerMap
 */
- (void)onPreSetupWithADXMotionLayout:(ADXMotionLayout *)motionLayout
                  withJavaUtilHashMap:(JavaUtilHashMap *)controllerMap;

/*!
 @brief This is called after motionLayout read motionScene and assembles all constraintSets
 @param motionLayout
 */
- (void)onFinishedMotionSceneWithADXMotionLayout:(ADXMotionLayout *)motionLayout;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionHelperInterface)

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionHelperInterface)

#define AndroidxConstraintlayoutMotionWidgetMotionHelperInterface ADXMotionHelperInterface

#endif

#pragma pop_macro("INCLUDE_ALL_MotionHelperInterface")
