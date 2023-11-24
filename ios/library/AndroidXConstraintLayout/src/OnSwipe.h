//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\OnSwipe.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OnSwipe")
#ifdef RESTRICT_OnSwipe
#define INCLUDE_ALL_OnSwipe 0
#else
#define INCLUDE_ALL_OnSwipe 1
#endif
#undef RESTRICT_OnSwipe

#if !defined (ADXOnSwipe_) && (INCLUDE_ALL_OnSwipe || defined(INCLUDE_ADXOnSwipe))
#define ADXOnSwipe_

/*!
 @brief Container for holding swipe infomation
 */
@interface ADXOnSwipe : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)getAutoCompleteMode;

- (jint)getDragDirection;

- (jfloat)getDragScale;

- (jfloat)getDragThreshold;

- (jint)getLimitBoundsTo;

- (jfloat)getMaxAcceleration;

- (jfloat)getMaxVelocity;

- (jboolean)getMoveWhenScrollAtTop;

- (jint)getNestedScrollFlags;

- (jint)getOnTouchUp;

- (jint)getRotationCenterId;

/*!
 @brief The behaviour at the boundaries 0 and 1
 */
- (jint)getSpringBoundary;

- (jfloat)getSpringDamping;

/*!
 @brief Get the mass of the spring.
 the m in "a = (-k*x-c*v)/m" equation for the acceleration of a spring
 */
- (jfloat)getSpringMass;

/*!
 @brief get the stiffness of the spring
 @return NaN if not set
 */
- (jfloat)getSpringStiffness;

/*!
 @brief The threshold for spring motion to stop.
 */
- (jfloat)getSpringStopThreshold;

- (jint)getTouchAnchorId;

- (jint)getTouchAnchorSide;

- (jint)getTouchRegionId;

/*!
 @brief sets the behaviour at the boundaries 0 and 1
      COMPLETE_MODE_CONTINUOUS_VELOCITY = 0;
       COMPLETE_MODE_SPRING = 1;
 */
- (void)setAutoCompleteModeWithInt:(jint)autoCompleteMode;

/*!
 @brief The direction of the drag.
 @param dragDirection
 */
- (ADXOnSwipe *)setDragDirectionWithInt:(jint)dragDirection;

/*!
 @brief Normally 1 this can be tweaked to make the acceleration faster
 @param dragScale
 */
- (ADXOnSwipe *)setDragScaleWithInt:(jint)dragScale;

/*!
 @brief This sets the threshold before the animation is kicked off.
 It is important when have multi state animations the have some play before the
  System decides which animation to jump on.
 @param dragThreshold
 */
- (ADXOnSwipe *)setDragThresholdWithInt:(jint)dragThreshold;

/*!
 @brief Only allow touch actions to be initiated within this region
 @param id_
 */
- (ADXOnSwipe *)setLimitBoundsToWithInt:(jint)id_;

/*!
 @brief The maximum acceleration and deceleration of the animation
  (Change in Change in progress per second)
  Faster makes the object seem lighter and quicker
 @param maxAcceleration
 */
- (ADXOnSwipe *)setMaxAccelerationWithInt:(jint)maxAcceleration;

/*!
 @brief The maximum velocity (Change in progress per second) animation can achive
 @param maxVelocity
 */
- (ADXOnSwipe *)setMaxVelocityWithInt:(jint)maxVelocity;

/*!
 @brief When collaborating with a NestedScrollView do you progress form 0-1 only
  when the scroll view is at the top.
 @param moveWhenScrollAtTop
 */
- (ADXOnSwipe *)setMoveWhenScrollAtTopWithBoolean:(jboolean)moveWhenScrollAtTop;

/*!
 @brief Various flag to control behaviours of nested scroll
  FLAG_DISABLE_POST_SCROLL = 1;
  FLAG_DISABLE_SCROLL = 2;
 @param flags
 */
- (ADXOnSwipe *)setNestedScrollFlagsWithInt:(jint)flags;

/*!
 @brief Configures what happens when the user releases on mouse up.
 One of: ON_UP_AUTOCOMPLETE, ON_UP_AUTOCOMPLETE_TO_START, ON_UP_AUTOCOMPLETE_TO_END,
  ON_UP_STOP, ON_UP_DECELERATE, ON_UP_DECELERATE_AND_COMPLETE
 @param mode default = ON_UP_AUTOCOMPLETE
 */
- (ADXOnSwipe *)setOnTouchUpWithInt:(jint)mode;

/*!
 @brief The view to center the rotation about
 @param rotationCenterId
 @return this
 */
- (ADXOnSwipe *)setRotateCenterWithInt:(jint)rotationCenterId;

/*!
 @brief The behaviour at the boundaries 0 and 1.
 SPRING_BOUNDARY_OVERSHOOT = 0;
  SPRING_BOUNDARY_BOUNCE_START = 1;
  SPRING_BOUNDARY_BOUNCE_END = 2;
  SPRING_BOUNDARY_BOUNCE_BOTH = 3;
 @param springBoundary
 */
- (ADXOnSwipe *)setSpringBoundaryWithInt:(jint)springBoundary;

/*!
 @brief Set the damping of the spring if using spring.
 c in "a = (-k*x-c*v)/m" equation for the acceleration of a spring
 @param springDamping
 @return this
 */
- (ADXOnSwipe *)setSpringDampingWithFloat:(jfloat)springDamping;

/*!
 @brief Set the Mass of the spring if using spring.
 m in "a = (-k*x-c*v)/m" equation for the acceleration of a spring
 @param springMass
 @return this
 */
- (ADXOnSwipe *)setSpringMassWithFloat:(jfloat)springMass;

/*!
 @brief set the stiffness of the spring if using spring.
 If this is set the swipe will use a spring return system.
  If set to NaN it will revert to the norm system.
  K in "a = (-k*x-c*v)/m" equation for the acceleration of a spring
 @param springStiffness
 */
- (ADXOnSwipe *)setSpringStiffnessWithFloat:(jfloat)springStiffness;

/*!
 @brief set the threshold for spring motion to stop.
 This is in change in progress / second
  If the spring will never go above that threshold again it will stop.
 @param springStopThreshold
 */
- (ADXOnSwipe *)setSpringStopThresholdWithFloat:(jfloat)springStopThreshold;

/*!
 @brief The id of the view who's movement is matched to your drag
  If not specified it will map to a linear movement across the width of the motionLayout
 @param side
 */
- (ADXOnSwipe *)setTouchAnchorIdWithInt:(jint)side;

/*!
 @brief This side of the view that matches the drag movement.
 Only meaning full if the object changes size during the movement.
  (rotation is not considered)
 @param side
 */
- (ADXOnSwipe *)setTouchAnchorSideWithInt:(jint)side;

/*!
 @param side
 */
- (ADXOnSwipe *)setTouchRegionIdWithInt:(jint)side;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXOnSwipe)

inline jint ADXOnSwipe_get_COMPLETE_MODE_CONTINUOUS_VELOCITY(void);
#define ADXOnSwipe_COMPLETE_MODE_CONTINUOUS_VELOCITY 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, COMPLETE_MODE_CONTINUOUS_VELOCITY, jint)

inline jint ADXOnSwipe_get_COMPLETE_MODE_SPRING(void);
#define ADXOnSwipe_COMPLETE_MODE_SPRING 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, COMPLETE_MODE_SPRING, jint)

inline jint ADXOnSwipe_get_SPRING_BOUNDARY_OVERSHOOT(void);
#define ADXOnSwipe_SPRING_BOUNDARY_OVERSHOOT 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SPRING_BOUNDARY_OVERSHOOT, jint)

inline jint ADXOnSwipe_get_SPRING_BOUNDARY_BOUNCESTART(void);
#define ADXOnSwipe_SPRING_BOUNDARY_BOUNCESTART 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SPRING_BOUNDARY_BOUNCESTART, jint)

inline jint ADXOnSwipe_get_SPRING_BOUNDARY_BOUNCEEND(void);
#define ADXOnSwipe_SPRING_BOUNDARY_BOUNCEEND 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SPRING_BOUNDARY_BOUNCEEND, jint)

inline jint ADXOnSwipe_get_SPRING_BOUNDARY_BOUNCEBOTH(void);
#define ADXOnSwipe_SPRING_BOUNDARY_BOUNCEBOTH 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SPRING_BOUNDARY_BOUNCEBOTH, jint)

inline jint ADXOnSwipe_get_DRAG_UP(void);
#define ADXOnSwipe_DRAG_UP 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, DRAG_UP, jint)

inline jint ADXOnSwipe_get_DRAG_DOWN(void);
#define ADXOnSwipe_DRAG_DOWN 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, DRAG_DOWN, jint)

inline jint ADXOnSwipe_get_DRAG_LEFT(void);
#define ADXOnSwipe_DRAG_LEFT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, DRAG_LEFT, jint)

inline jint ADXOnSwipe_get_DRAG_RIGHT(void);
#define ADXOnSwipe_DRAG_RIGHT 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, DRAG_RIGHT, jint)

inline jint ADXOnSwipe_get_DRAG_START(void);
#define ADXOnSwipe_DRAG_START 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, DRAG_START, jint)

inline jint ADXOnSwipe_get_DRAG_END(void);
#define ADXOnSwipe_DRAG_END 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, DRAG_END, jint)

inline jint ADXOnSwipe_get_DRAG_CLOCKWISE(void);
#define ADXOnSwipe_DRAG_CLOCKWISE 6
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, DRAG_CLOCKWISE, jint)

inline jint ADXOnSwipe_get_DRAG_ANTICLOCKWISE(void);
#define ADXOnSwipe_DRAG_ANTICLOCKWISE 7
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, DRAG_ANTICLOCKWISE, jint)

inline jint ADXOnSwipe_get_FLAG_DISABLE_POST_SCROLL(void);
#define ADXOnSwipe_FLAG_DISABLE_POST_SCROLL 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, FLAG_DISABLE_POST_SCROLL, jint)

inline jint ADXOnSwipe_get_FLAG_DISABLE_SCROLL(void);
#define ADXOnSwipe_FLAG_DISABLE_SCROLL 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, FLAG_DISABLE_SCROLL, jint)

inline jint ADXOnSwipe_get_SIDE_TOP(void);
#define ADXOnSwipe_SIDE_TOP 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SIDE_TOP, jint)

inline jint ADXOnSwipe_get_SIDE_LEFT(void);
#define ADXOnSwipe_SIDE_LEFT 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SIDE_LEFT, jint)

inline jint ADXOnSwipe_get_SIDE_RIGHT(void);
#define ADXOnSwipe_SIDE_RIGHT 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SIDE_RIGHT, jint)

inline jint ADXOnSwipe_get_SIDE_BOTTOM(void);
#define ADXOnSwipe_SIDE_BOTTOM 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SIDE_BOTTOM, jint)

inline jint ADXOnSwipe_get_SIDE_MIDDLE(void);
#define ADXOnSwipe_SIDE_MIDDLE 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SIDE_MIDDLE, jint)

inline jint ADXOnSwipe_get_SIDE_START(void);
#define ADXOnSwipe_SIDE_START 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SIDE_START, jint)

inline jint ADXOnSwipe_get_SIDE_END(void);
#define ADXOnSwipe_SIDE_END 6
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, SIDE_END, jint)

inline jint ADXOnSwipe_get_ON_UP_AUTOCOMPLETE(void);
#define ADXOnSwipe_ON_UP_AUTOCOMPLETE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, ON_UP_AUTOCOMPLETE, jint)

inline jint ADXOnSwipe_get_ON_UP_AUTOCOMPLETE_TO_START(void);
#define ADXOnSwipe_ON_UP_AUTOCOMPLETE_TO_START 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, ON_UP_AUTOCOMPLETE_TO_START, jint)

inline jint ADXOnSwipe_get_ON_UP_AUTOCOMPLETE_TO_END(void);
#define ADXOnSwipe_ON_UP_AUTOCOMPLETE_TO_END 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, ON_UP_AUTOCOMPLETE_TO_END, jint)

inline jint ADXOnSwipe_get_ON_UP_STOP(void);
#define ADXOnSwipe_ON_UP_STOP 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, ON_UP_STOP, jint)

inline jint ADXOnSwipe_get_ON_UP_DECELERATE(void);
#define ADXOnSwipe_ON_UP_DECELERATE 4
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, ON_UP_DECELERATE, jint)

inline jint ADXOnSwipe_get_ON_UP_DECELERATE_AND_COMPLETE(void);
#define ADXOnSwipe_ON_UP_DECELERATE_AND_COMPLETE 5
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, ON_UP_DECELERATE_AND_COMPLETE, jint)

inline jint ADXOnSwipe_get_ON_UP_NEVER_TO_START(void);
#define ADXOnSwipe_ON_UP_NEVER_TO_START 6
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, ON_UP_NEVER_TO_START, jint)

inline jint ADXOnSwipe_get_ON_UP_NEVER_TO_END(void);
#define ADXOnSwipe_ON_UP_NEVER_TO_END 7
J2OBJC_STATIC_FIELD_CONSTANT(ADXOnSwipe, ON_UP_NEVER_TO_END, jint)

FOUNDATION_EXPORT void ADXOnSwipe_init(ADXOnSwipe *self);

FOUNDATION_EXPORT ADXOnSwipe *new_ADXOnSwipe_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXOnSwipe *create_ADXOnSwipe_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXOnSwipe)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetOnSwipe ADXOnSwipe;

#endif

#pragma pop_macro("INCLUDE_ALL_OnSwipe")