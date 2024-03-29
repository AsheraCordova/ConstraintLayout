//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\utils\StopLogic.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_StopLogic")
#ifdef RESTRICT_StopLogic
#define INCLUDE_ALL_StopLogic 0
#else
#define INCLUDE_ALL_StopLogic 1
#endif
#undef RESTRICT_StopLogic

#if !defined (ADXStopLogic_) && (INCLUDE_ALL_StopLogic || defined(INCLUDE_ADXStopLogic))
#define ADXStopLogic_

#define RESTRICT_MotionInterpolator 1
#define INCLUDE_ADXMotionInterpolator 1
#include "MotionInterpolator.h"

/*!
 @brief This contains the class to provide the logic for an animation to come to a stop.
 The setup defines a series of velocity gradients that gets to the desired position
  ending at 0 velocity.
  The path is computed such that the velocities are continuous
 */
@interface ADXStopLogic : ADXMotionInterpolator

#pragma mark Public

- (instancetype)init;

- (void)configWithFloat:(jfloat)currentPos
              withFloat:(jfloat)destination
              withFloat:(jfloat)currentVelocity
              withFloat:(jfloat)maxTime
              withFloat:(jfloat)maxAcceleration
              withFloat:(jfloat)maxVelocity;

/*!
 @brief Debugging logic to log the state.
 @param desc Description to pre append
 @param time Time during animation
 @return string useful for debugging the state of the StopLogic
 */
- (NSString *)debugWithNSString:(NSString *)desc
                      withFloat:(jfloat)time;

- (jfloat)getInterpolationWithFloat:(jfloat)v;

- (jfloat)getVelocity;

- (jfloat)getVelocityWithFloat:(jfloat)x;

- (jboolean)isStopped;

/*!
 @brief This configure the stop logic to be a spring.
 Moving from currentPosition(P0) to destination with an initial velocity of currentVelocity (V0)
  moving as if it has a mass (m) with spring constant stiffness(k), and friction(c)
  It moves with the equation acceleration a = (-k.x-c.v)/m.
  x = current position - destination
  v is velocity
 @param currentPos The current position
 @param destination The destination position
 @param currentVelocity the initial velocity
 @param mass the mass
 @param stiffness the stiffness or spring constant (the force by which the spring pulls)
 @param damping the stiffness or spring constant. (the resistance to the motion)
 @param stopThreshold (When the max velocity of the movement is below this it stops)
 @param boundaryMode This will allow you to control if it overshoots or bounces when it hits 0 and 1
 */
- (void)springConfigWithFloat:(jfloat)currentPos
                    withFloat:(jfloat)destination
                    withFloat:(jfloat)currentVelocity
                    withFloat:(jfloat)mass
                    withFloat:(jfloat)stiffness
                    withFloat:(jfloat)damping
                    withFloat:(jfloat)stopThreshold
                      withInt:(jint)boundaryMode;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXStopLogic)

FOUNDATION_EXPORT void ADXStopLogic_init(ADXStopLogic *self);

FOUNDATION_EXPORT ADXStopLogic *new_ADXStopLogic_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXStopLogic *create_ADXStopLogic_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXStopLogic)

@compatibility_alias AndroidxConstraintlayoutMotionUtilsStopLogic ADXStopLogic;

#endif

#pragma pop_macro("INCLUDE_ALL_StopLogic")
