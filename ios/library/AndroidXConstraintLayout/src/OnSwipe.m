//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\OnSwipe.java
//

#include "J2ObjC_source.h"
#include "MotionScene.h"
#include "OnSwipe.h"
#include "java/lang/Float.h"


@interface ADXOnSwipe () {
 @public
  jint mDragDirection_;
  jint mTouchAnchorSide_;
  jint mTouchAnchorId_;
  jint mTouchRegionId_;
  jint mLimitBoundsTo_;
  jint mOnTouchUp_;
  jint mRotationCenterId_;
  jfloat mMaxVelocity_;
  jfloat mMaxAcceleration_;
  jboolean mMoveWhenScrollAtTop_;
  jfloat mDragScale_;
  jint mFlags_;
  jfloat mDragThreshold_;
  jfloat mSpringDamping_;
  jfloat mSpringMass_;
  jfloat mSpringStiffness_;
  jfloat mSpringStopThreshold_;
  jint mSpringBoundary_;
  jint mAutoCompleteMode_;
}

@end

@implementation ADXOnSwipe

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXOnSwipe_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ADXOnSwipe *)setTouchAnchorIdWithInt:(jint)side {
  mTouchAnchorId_ = side;
  return self;
}

- (jint)getTouchAnchorId {
  return mTouchAnchorId_;
}

- (ADXOnSwipe *)setTouchAnchorSideWithInt:(jint)side {
  mTouchAnchorSide_ = side;
  return self;
}

- (jint)getTouchAnchorSide {
  return mTouchAnchorSide_;
}

- (ADXOnSwipe *)setDragDirectionWithInt:(jint)dragDirection {
  mDragDirection_ = dragDirection;
  return self;
}

- (jint)getDragDirection {
  return mDragDirection_;
}

- (ADXOnSwipe *)setMaxVelocityWithInt:(jint)maxVelocity {
  mMaxVelocity_ = maxVelocity;
  return self;
}

- (jfloat)getMaxVelocity {
  return mMaxVelocity_;
}

- (ADXOnSwipe *)setMaxAccelerationWithInt:(jint)maxAcceleration {
  mMaxAcceleration_ = maxAcceleration;
  return self;
}

- (jfloat)getMaxAcceleration {
  return mMaxAcceleration_;
}

- (ADXOnSwipe *)setMoveWhenScrollAtTopWithBoolean:(jboolean)moveWhenScrollAtTop {
  mMoveWhenScrollAtTop_ = moveWhenScrollAtTop;
  return self;
}

- (jboolean)getMoveWhenScrollAtTop {
  return mMoveWhenScrollAtTop_;
}

- (ADXOnSwipe *)setDragScaleWithInt:(jint)dragScale {
  mDragScale_ = dragScale;
  return self;
}

- (jfloat)getDragScale {
  return mDragScale_;
}

- (ADXOnSwipe *)setDragThresholdWithInt:(jint)dragThreshold {
  mDragThreshold_ = dragThreshold;
  return self;
}

- (jfloat)getDragThreshold {
  return mDragThreshold_;
}

- (ADXOnSwipe *)setTouchRegionIdWithInt:(jint)side {
  mTouchRegionId_ = side;
  return self;
}

- (jint)getTouchRegionId {
  return mTouchRegionId_;
}

- (ADXOnSwipe *)setOnTouchUpWithInt:(jint)mode {
  mOnTouchUp_ = mode;
  return self;
}

- (jint)getOnTouchUp {
  return mOnTouchUp_;
}

- (ADXOnSwipe *)setNestedScrollFlagsWithInt:(jint)flags {
  mFlags_ = flags;
  return self;
}

- (jint)getNestedScrollFlags {
  return mFlags_;
}

- (ADXOnSwipe *)setLimitBoundsToWithInt:(jint)id_ {
  mLimitBoundsTo_ = id_;
  return self;
}

- (jint)getLimitBoundsTo {
  return mLimitBoundsTo_;
}

- (ADXOnSwipe *)setRotateCenterWithInt:(jint)rotationCenterId {
  mRotationCenterId_ = rotationCenterId;
  return self;
}

- (jint)getRotationCenterId {
  return mRotationCenterId_;
}

- (jfloat)getSpringDamping {
  return mSpringDamping_;
}

- (ADXOnSwipe *)setSpringDampingWithFloat:(jfloat)springDamping {
  mSpringDamping_ = springDamping;
  return self;
}

- (jfloat)getSpringMass {
  return mSpringMass_;
}

- (ADXOnSwipe *)setSpringMassWithFloat:(jfloat)springMass {
  mSpringMass_ = springMass;
  return self;
}

- (jfloat)getSpringStiffness {
  return mSpringStiffness_;
}

- (ADXOnSwipe *)setSpringStiffnessWithFloat:(jfloat)springStiffness {
  mSpringStiffness_ = springStiffness;
  return self;
}

- (jfloat)getSpringStopThreshold {
  return mSpringStopThreshold_;
}

- (ADXOnSwipe *)setSpringStopThresholdWithFloat:(jfloat)springStopThreshold {
  mSpringStopThreshold_ = springStopThreshold;
  return self;
}

- (jint)getSpringBoundary {
  return mSpringBoundary_;
}

- (ADXOnSwipe *)setSpringBoundaryWithInt:(jint)springBoundary {
  mSpringBoundary_ = springBoundary;
  return self;
}

- (jint)getAutoCompleteMode {
  return mAutoCompleteMode_;
}

- (void)setAutoCompleteModeWithInt:(jint)autoCompleteMode {
  mAutoCompleteMode_ = autoCompleteMode;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 8, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 9, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 10, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 11, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 13, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 14, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 17, 16, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 18, 16, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 19, 16, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXOnSwipe;", 0x1, 20, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 21, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setTouchAnchorIdWithInt:);
  methods[2].selector = @selector(getTouchAnchorId);
  methods[3].selector = @selector(setTouchAnchorSideWithInt:);
  methods[4].selector = @selector(getTouchAnchorSide);
  methods[5].selector = @selector(setDragDirectionWithInt:);
  methods[6].selector = @selector(getDragDirection);
  methods[7].selector = @selector(setMaxVelocityWithInt:);
  methods[8].selector = @selector(getMaxVelocity);
  methods[9].selector = @selector(setMaxAccelerationWithInt:);
  methods[10].selector = @selector(getMaxAcceleration);
  methods[11].selector = @selector(setMoveWhenScrollAtTopWithBoolean:);
  methods[12].selector = @selector(getMoveWhenScrollAtTop);
  methods[13].selector = @selector(setDragScaleWithInt:);
  methods[14].selector = @selector(getDragScale);
  methods[15].selector = @selector(setDragThresholdWithInt:);
  methods[16].selector = @selector(getDragThreshold);
  methods[17].selector = @selector(setTouchRegionIdWithInt:);
  methods[18].selector = @selector(getTouchRegionId);
  methods[19].selector = @selector(setOnTouchUpWithInt:);
  methods[20].selector = @selector(getOnTouchUp);
  methods[21].selector = @selector(setNestedScrollFlagsWithInt:);
  methods[22].selector = @selector(getNestedScrollFlags);
  methods[23].selector = @selector(setLimitBoundsToWithInt:);
  methods[24].selector = @selector(getLimitBoundsTo);
  methods[25].selector = @selector(setRotateCenterWithInt:);
  methods[26].selector = @selector(getRotationCenterId);
  methods[27].selector = @selector(getSpringDamping);
  methods[28].selector = @selector(setSpringDampingWithFloat:);
  methods[29].selector = @selector(getSpringMass);
  methods[30].selector = @selector(setSpringMassWithFloat:);
  methods[31].selector = @selector(getSpringStiffness);
  methods[32].selector = @selector(setSpringStiffnessWithFloat:);
  methods[33].selector = @selector(getSpringStopThreshold);
  methods[34].selector = @selector(setSpringStopThresholdWithFloat:);
  methods[35].selector = @selector(getSpringBoundary);
  methods[36].selector = @selector(setSpringBoundaryWithInt:);
  methods[37].selector = @selector(getAutoCompleteMode);
  methods[38].selector = @selector(setAutoCompleteModeWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mDragDirection_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTouchAnchorSide_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTouchAnchorId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTouchRegionId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mLimitBoundsTo_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mOnTouchUp_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRotationCenterId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaxVelocity_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaxAcceleration_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMoveWhenScrollAtTop_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mDragScale_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mFlags_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mDragThreshold_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSpringDamping_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSpringMass_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSpringStiffness_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSpringStopThreshold_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSpringBoundary_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mAutoCompleteMode_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "COMPLETE_MODE_CONTINUOUS_VELOCITY", "I", .constantValue.asInt = ADXOnSwipe_COMPLETE_MODE_CONTINUOUS_VELOCITY, 0x19, -1, -1, -1, -1 },
    { "COMPLETE_MODE_SPRING", "I", .constantValue.asInt = ADXOnSwipe_COMPLETE_MODE_SPRING, 0x19, -1, -1, -1, -1 },
    { "SPRING_BOUNDARY_OVERSHOOT", "I", .constantValue.asInt = ADXOnSwipe_SPRING_BOUNDARY_OVERSHOOT, 0x19, -1, -1, -1, -1 },
    { "SPRING_BOUNDARY_BOUNCESTART", "I", .constantValue.asInt = ADXOnSwipe_SPRING_BOUNDARY_BOUNCESTART, 0x19, -1, -1, -1, -1 },
    { "SPRING_BOUNDARY_BOUNCEEND", "I", .constantValue.asInt = ADXOnSwipe_SPRING_BOUNDARY_BOUNCEEND, 0x19, -1, -1, -1, -1 },
    { "SPRING_BOUNDARY_BOUNCEBOTH", "I", .constantValue.asInt = ADXOnSwipe_SPRING_BOUNDARY_BOUNCEBOTH, 0x19, -1, -1, -1, -1 },
    { "DRAG_UP", "I", .constantValue.asInt = ADXOnSwipe_DRAG_UP, 0x19, -1, -1, -1, -1 },
    { "DRAG_DOWN", "I", .constantValue.asInt = ADXOnSwipe_DRAG_DOWN, 0x19, -1, -1, -1, -1 },
    { "DRAG_LEFT", "I", .constantValue.asInt = ADXOnSwipe_DRAG_LEFT, 0x19, -1, -1, -1, -1 },
    { "DRAG_RIGHT", "I", .constantValue.asInt = ADXOnSwipe_DRAG_RIGHT, 0x19, -1, -1, -1, -1 },
    { "DRAG_START", "I", .constantValue.asInt = ADXOnSwipe_DRAG_START, 0x19, -1, -1, -1, -1 },
    { "DRAG_END", "I", .constantValue.asInt = ADXOnSwipe_DRAG_END, 0x19, -1, -1, -1, -1 },
    { "DRAG_CLOCKWISE", "I", .constantValue.asInt = ADXOnSwipe_DRAG_CLOCKWISE, 0x19, -1, -1, -1, -1 },
    { "DRAG_ANTICLOCKWISE", "I", .constantValue.asInt = ADXOnSwipe_DRAG_ANTICLOCKWISE, 0x19, -1, -1, -1, -1 },
    { "FLAG_DISABLE_POST_SCROLL", "I", .constantValue.asInt = ADXOnSwipe_FLAG_DISABLE_POST_SCROLL, 0x19, -1, -1, -1, -1 },
    { "FLAG_DISABLE_SCROLL", "I", .constantValue.asInt = ADXOnSwipe_FLAG_DISABLE_SCROLL, 0x19, -1, -1, -1, -1 },
    { "SIDE_TOP", "I", .constantValue.asInt = ADXOnSwipe_SIDE_TOP, 0x19, -1, -1, -1, -1 },
    { "SIDE_LEFT", "I", .constantValue.asInt = ADXOnSwipe_SIDE_LEFT, 0x19, -1, -1, -1, -1 },
    { "SIDE_RIGHT", "I", .constantValue.asInt = ADXOnSwipe_SIDE_RIGHT, 0x19, -1, -1, -1, -1 },
    { "SIDE_BOTTOM", "I", .constantValue.asInt = ADXOnSwipe_SIDE_BOTTOM, 0x19, -1, -1, -1, -1 },
    { "SIDE_MIDDLE", "I", .constantValue.asInt = ADXOnSwipe_SIDE_MIDDLE, 0x19, -1, -1, -1, -1 },
    { "SIDE_START", "I", .constantValue.asInt = ADXOnSwipe_SIDE_START, 0x19, -1, -1, -1, -1 },
    { "SIDE_END", "I", .constantValue.asInt = ADXOnSwipe_SIDE_END, 0x19, -1, -1, -1, -1 },
    { "ON_UP_AUTOCOMPLETE", "I", .constantValue.asInt = ADXOnSwipe_ON_UP_AUTOCOMPLETE, 0x19, -1, -1, -1, -1 },
    { "ON_UP_AUTOCOMPLETE_TO_START", "I", .constantValue.asInt = ADXOnSwipe_ON_UP_AUTOCOMPLETE_TO_START, 0x19, -1, -1, -1, -1 },
    { "ON_UP_AUTOCOMPLETE_TO_END", "I", .constantValue.asInt = ADXOnSwipe_ON_UP_AUTOCOMPLETE_TO_END, 0x19, -1, -1, -1, -1 },
    { "ON_UP_STOP", "I", .constantValue.asInt = ADXOnSwipe_ON_UP_STOP, 0x19, -1, -1, -1, -1 },
    { "ON_UP_DECELERATE", "I", .constantValue.asInt = ADXOnSwipe_ON_UP_DECELERATE, 0x19, -1, -1, -1, -1 },
    { "ON_UP_DECELERATE_AND_COMPLETE", "I", .constantValue.asInt = ADXOnSwipe_ON_UP_DECELERATE_AND_COMPLETE, 0x19, -1, -1, -1, -1 },
    { "ON_UP_NEVER_TO_START", "I", .constantValue.asInt = ADXOnSwipe_ON_UP_NEVER_TO_START, 0x19, -1, -1, -1, -1 },
    { "ON_UP_NEVER_TO_END", "I", .constantValue.asInt = ADXOnSwipe_ON_UP_NEVER_TO_END, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setTouchAnchorId", "I", "setTouchAnchorSide", "setDragDirection", "setMaxVelocity", "setMaxAcceleration", "setMoveWhenScrollAtTop", "Z", "setDragScale", "setDragThreshold", "setTouchRegionId", "setOnTouchUp", "setNestedScrollFlags", "setLimitBoundsTo", "setRotateCenter", "setSpringDamping", "F", "setSpringMass", "setSpringStiffness", "setSpringStopThreshold", "setSpringBoundary", "setAutoCompleteMode" };
  static const J2ObjcClassInfo _ADXOnSwipe = { "OnSwipe", "androidx.constraintlayout.motion.widget", ptrTable, methods, fields, 7, 0x1, 39, 50, -1, -1, -1, -1, -1 };
  return &_ADXOnSwipe;
}

@end

void ADXOnSwipe_init(ADXOnSwipe *self) {
  NSObject_init(self);
  self->mDragDirection_ = 0;
  self->mTouchAnchorSide_ = 0;
  self->mTouchAnchorId_ = ADXMotionScene_UNSET;
  self->mTouchRegionId_ = ADXMotionScene_UNSET;
  self->mLimitBoundsTo_ = ADXMotionScene_UNSET;
  self->mOnTouchUp_ = 0;
  self->mRotationCenterId_ = ADXMotionScene_UNSET;
  self->mMaxVelocity_ = 4;
  self->mMaxAcceleration_ = 1.2f;
  self->mMoveWhenScrollAtTop_ = true;
  self->mDragScale_ = 1.0f;
  self->mFlags_ = 0;
  self->mDragThreshold_ = 0;
  self->mSpringDamping_ = JavaLangFloat_NaN;
  self->mSpringMass_ = 1;
  self->mSpringStiffness_ = JavaLangFloat_NaN;
  self->mSpringStopThreshold_ = JavaLangFloat_NaN;
  self->mSpringBoundary_ = 0;
  self->mAutoCompleteMode_ = 0;
}

ADXOnSwipe *new_ADXOnSwipe_init() {
  J2OBJC_NEW_IMPL(ADXOnSwipe, init)
}

ADXOnSwipe *create_ADXOnSwipe_init() {
  J2OBJC_CREATE_IMPL(ADXOnSwipe, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXOnSwipe)
