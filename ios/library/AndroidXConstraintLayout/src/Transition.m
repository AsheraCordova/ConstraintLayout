//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\state\Transition.java
//

#include "ConstraintWidget.h"
#include "ConstraintWidgetContainer.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "KeyCache.h"
#include "Motion.h"
#include "MotionKeyAttributes.h"
#include "MotionKeyCycle.h"
#include "MotionKeyPosition.h"
#include "MotionWidget.h"
#include "Transition.h"
#include "TypedBundle.h"
#include "TypedValues.h"
#include "WidgetFrame.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Set.h"


@interface ADXTransition () {
 @public
  jint pathMotionArc_;
}

- (ADXTransition_WidgetState *)getWidgetStateWithNSString:(NSString *)widgetId
                                  withADXConstraintWidget:(ADXConstraintWidget *)child
                                                  withInt:(jint)transitionState;

@end

__attribute__((unused)) static ADXTransition_WidgetState *ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(ADXTransition *self, NSString *widgetId, ADXConstraintWidget *child, jint transitionState);

@implementation ADXTransition

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXTransition_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ADXTransition_KeyPosition *)findPreviousPositionWithNSString:(NSString *)target
                                                        withInt:(jint)frameNumber {
  while (frameNumber >= 0) {
    JavaUtilHashMap *map = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(keyPositions_)) getWithId:JavaLangInteger_valueOfWithInt_(frameNumber)]);
    if (map != nil) {
      ADXTransition_KeyPosition *keyPosition = JreRetainedLocalValue([map getWithId:target]);
      if (keyPosition != nil) {
        return keyPosition;
      }
    }
    frameNumber--;
  }
  return nil;
}

- (ADXTransition_KeyPosition *)findNextPositionWithNSString:(NSString *)target
                                                    withInt:(jint)frameNumber {
  while (frameNumber <= 100) {
    JavaUtilHashMap *map = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(keyPositions_)) getWithId:JavaLangInteger_valueOfWithInt_(frameNumber)]);
    if (map != nil) {
      ADXTransition_KeyPosition *keyPosition = JreRetainedLocalValue([map getWithId:target]);
      if (keyPosition != nil) {
        return keyPosition;
      }
    }
    frameNumber++;
  }
  return nil;
}

- (jint)getNumberKeyPositionsWithADXWidgetFrame:(ADXWidgetFrame *)frame {
  jint numKeyPositions = 0;
  jint frameNumber = 0;
  while (frameNumber <= 100) {
    JavaUtilHashMap *map = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(keyPositions_)) getWithId:JavaLangInteger_valueOfWithInt_(frameNumber)]);
    if (map != nil) {
      ADXTransition_KeyPosition *keyPosition = JreRetainedLocalValue([map getWithId:((ADXConstraintWidget *) nil_chk(((ADXWidgetFrame *) nil_chk(frame))->widget_))->stringId_]);
      if (keyPosition != nil) {
        numKeyPositions++;
      }
    }
    frameNumber++;
  }
  return numKeyPositions;
}

- (ADXMotion *)getMotionWithNSString:(NSString *)id_ {
  return ((ADXTransition_WidgetState *) nil_chk(ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, id_, nil, 0)))->motionControl_;
}

- (void)fillKeyPositionsWithADXWidgetFrame:(ADXWidgetFrame *)frame
                            withFloatArray:(IOSFloatArray *)x
                            withFloatArray:(IOSFloatArray *)y
                            withFloatArray:(IOSFloatArray *)pos {
  jint numKeyPositions = 0;
  jint frameNumber = 0;
  while (frameNumber <= 100) {
    JavaUtilHashMap *map = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(keyPositions_)) getWithId:JavaLangInteger_valueOfWithInt_(frameNumber)]);
    if (map != nil) {
      ADXTransition_KeyPosition *keyPosition = JreRetainedLocalValue([map getWithId:((ADXConstraintWidget *) nil_chk(((ADXWidgetFrame *) nil_chk(frame))->widget_))->stringId_]);
      if (keyPosition != nil) {
        *IOSFloatArray_GetRef(nil_chk(x), numKeyPositions) = keyPosition->x_;
        *IOSFloatArray_GetRef(nil_chk(y), numKeyPositions) = keyPosition->y_;
        *IOSFloatArray_GetRef(nil_chk(pos), numKeyPositions) = keyPosition->frame_;
        numKeyPositions++;
      }
    }
    frameNumber++;
  }
}

- (jboolean)hasPositionKeyframes {
  return [((JavaUtilHashMap *) nil_chk(keyPositions_)) size] > 0;
}

- (void)setTransitionPropertiesWithADXTypedBundle:(ADXTypedBundle *)bundle {
  pathMotionArc_ = [((ADXTypedBundle *) nil_chk(bundle)) getIntegerWithInt:ADXTypedValues_Position_TYPE_PATH_MOTION_ARC];
}

- (jboolean)isEmpty {
  return [((JavaUtilHashMap *) nil_chk(state_)) isEmpty];
}

- (void)clear {
  [((JavaUtilHashMap *) nil_chk(state_)) clear];
}

- (jboolean)containsWithNSString:(NSString *)key {
  return [((JavaUtilHashMap *) nil_chk(state_)) containsKeyWithId:key];
}

- (void)addKeyPositionWithNSString:(NSString *)target
                withADXTypedBundle:(ADXTypedBundle *)bundle {
  [((ADXTransition_WidgetState *) nil_chk(ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, target, nil, 0))) setKeyPositionWithADXTypedBundle:bundle];
}

- (void)addKeyAttributeWithNSString:(NSString *)target
                 withADXTypedBundle:(ADXTypedBundle *)bundle {
  [((ADXTransition_WidgetState *) nil_chk(ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, target, nil, 0))) setKeyAttributeWithADXTypedBundle:bundle];
}

- (void)addKeyCycleWithNSString:(NSString *)target
             withADXTypedBundle:(ADXTypedBundle *)bundle {
  [((ADXTransition_WidgetState *) nil_chk(ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, target, nil, 0))) setKeyCycleWithADXTypedBundle:bundle];
}

- (void)addKeyPositionWithNSString:(NSString *)target
                           withInt:(jint)frame
                           withInt:(jint)type
                         withFloat:(jfloat)x
                         withFloat:(jfloat)y {
  ADXTypedBundle *bundle = create_ADXTypedBundle_init();
  [bundle addWithInt:ADXTypedValues_Position_TYPE_POSITION_TYPE withInt:2];
  [bundle addWithInt:ADXTypedValues_TYPE_FRAME_POSITION withInt:frame];
  [bundle addWithInt:ADXTypedValues_Position_TYPE_PERCENT_X withFloat:x];
  [bundle addWithInt:ADXTypedValues_Position_TYPE_PERCENT_Y withFloat:y];
  [((ADXTransition_WidgetState *) nil_chk(ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, target, nil, 0))) setKeyPositionWithADXTypedBundle:bundle];
  ADXTransition_KeyPosition *keyPosition = create_ADXTransition_KeyPosition_initWithNSString_withInt_withInt_withFloat_withFloat_(target, frame, type, x, y);
  JavaUtilHashMap *map = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(keyPositions_)) getWithId:JavaLangInteger_valueOfWithInt_(frame)]);
  if (map == nil) {
    map = create_JavaUtilHashMap_init();
    [((JavaUtilHashMap *) nil_chk(keyPositions_)) putWithId:JavaLangInteger_valueOfWithInt_(frame) withId:map];
  }
  [map putWithId:target withId:keyPosition];
}

- (void)addCustomFloatWithInt:(jint)state
                 withNSString:(NSString *)widgetId
                 withNSString:(NSString *)property
                    withFloat:(jfloat)value {
  ADXTransition_WidgetState *widgetState = ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, widgetId, nil, state);
  ADXWidgetFrame *frame = JreRetainedLocalValue([((ADXTransition_WidgetState *) nil_chk(widgetState)) getFrameWithInt:state]);
  [((ADXWidgetFrame *) nil_chk(frame)) addCustomFloatWithNSString:property withFloat:value];
}

- (void)addCustomColorWithInt:(jint)state
                 withNSString:(NSString *)widgetId
                 withNSString:(NSString *)property
                      withInt:(jint)color {
  ADXTransition_WidgetState *widgetState = ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, widgetId, nil, state);
  ADXWidgetFrame *frame = JreRetainedLocalValue([((ADXTransition_WidgetState *) nil_chk(widgetState)) getFrameWithInt:state]);
  [((ADXWidgetFrame *) nil_chk(frame)) addCustomColorWithNSString:property withInt:color];
}

- (void)updateFromWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)container
                                           withInt:(jint)state {
  JavaUtilArrayList *children = [((ADXConstraintWidgetContainer *) nil_chk(container)) getChildren];
  jint count = [((JavaUtilArrayList *) nil_chk(children)) size];
  for (jint i = 0; i < count; i++) {
    ADXConstraintWidget *child = JreRetainedLocalValue([children getWithInt:i]);
    ADXTransition_WidgetState *widgetState = ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, ((ADXConstraintWidget *) nil_chk(child))->stringId_, nil, state);
    [((ADXTransition_WidgetState *) nil_chk(widgetState)) updateWithADXConstraintWidget:child withInt:state];
  }
}

- (void)interpolateWithInt:(jint)parentWidth
                   withInt:(jint)parentHeight
                 withFloat:(jfloat)progress {
  for (NSString * __strong key in nil_chk([((JavaUtilHashMap *) nil_chk(state_)) keySet])) {
    ADXTransition_WidgetState *widget = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(state_)) getWithId:key]);
    [((ADXTransition_WidgetState *) nil_chk(widget)) interpolateWithInt:parentWidth withInt:parentHeight withFloat:progress withADXTransition:self];
  }
}

- (ADXWidgetFrame *)getStartWithNSString:(NSString *)id_ {
  ADXTransition_WidgetState *widgetState = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(state_)) getWithId:id_]);
  if (widgetState == nil) {
    return nil;
  }
  return widgetState->start_;
}

- (ADXWidgetFrame *)getEndWithNSString:(NSString *)id_ {
  ADXTransition_WidgetState *widgetState = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(state_)) getWithId:id_]);
  if (widgetState == nil) {
    return nil;
  }
  return widgetState->end_;
}

- (ADXWidgetFrame *)getInterpolatedWithNSString:(NSString *)id_ {
  ADXTransition_WidgetState *widgetState = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(state_)) getWithId:id_]);
  if (widgetState == nil) {
    return nil;
  }
  return widgetState->interpolated_;
}

- (IOSFloatArray *)getPathWithNSString:(NSString *)id_ {
  ADXTransition_WidgetState *widgetState = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(state_)) getWithId:id_]);
  jint duration = 1000;
  jint frames = JreIntDiv(duration, 16);
  IOSFloatArray *mPoints = [IOSFloatArray arrayWithLength:frames * 2];
  [((ADXMotion *) nil_chk(((ADXTransition_WidgetState *) nil_chk(widgetState))->motionControl_)) buildPathWithFloatArray:mPoints withInt:frames];
  return mPoints;
}

- (jint)getKeyFramesWithNSString:(NSString *)id_
                  withFloatArray:(IOSFloatArray *)rectangles
                    withIntArray:(IOSIntArray *)pathMode
                    withIntArray:(IOSIntArray *)position {
  ADXTransition_WidgetState *widgetState = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(state_)) getWithId:id_]);
  return [((ADXMotion *) nil_chk(((ADXTransition_WidgetState *) nil_chk(widgetState))->motionControl_)) buildKeyFramesWithFloatArray:rectangles withIntArray:pathMode withIntArray:position];
}

- (ADXTransition_WidgetState *)getWidgetStateWithNSString:(NSString *)widgetId
                                  withADXConstraintWidget:(ADXConstraintWidget *)child
                                                  withInt:(jint)transitionState {
  return ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, widgetId, child, transitionState);
}

- (ADXWidgetFrame *)getStartWithADXConstraintWidget:(ADXConstraintWidget *)child {
  return ((ADXTransition_WidgetState *) nil_chk(ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, ((ADXConstraintWidget *) nil_chk(child))->stringId_, nil, ADXTransition_START)))->start_;
}

- (ADXWidgetFrame *)getEndWithADXConstraintWidget:(ADXConstraintWidget *)child {
  return ((ADXTransition_WidgetState *) nil_chk(ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, ((ADXConstraintWidget *) nil_chk(child))->stringId_, nil, ADXTransition_END)))->end_;
}

- (ADXWidgetFrame *)getInterpolatedWithADXConstraintWidget:(ADXConstraintWidget *)child {
  return ((ADXTransition_WidgetState *) nil_chk(ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(self, ((ADXConstraintWidget *) nil_chk(child))->stringId_, nil, ADXTransition_INTERPOLATED)))->interpolated_;
}

- (void)dealloc {
  RELEASE_(state_);
  RELEASE_(keyPositions_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXTransition_KeyPosition;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LADXTransition_KeyPosition;", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LADXMotion;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 24, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, 25, 6, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, 26, 6, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, 27, 6, -1, -1, -1, -1 },
    { NULL, "[F", 0x1, 28, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 29, 30, -1, -1, -1, -1 },
    { NULL, "LADXTransition_WidgetState;", 0x2, 31, 32, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, 25, 33, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, 26, 33, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, 27, 33, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(findPreviousPositionWithNSString:withInt:);
  methods[2].selector = @selector(findNextPositionWithNSString:withInt:);
  methods[3].selector = @selector(getNumberKeyPositionsWithADXWidgetFrame:);
  methods[4].selector = @selector(getMotionWithNSString:);
  methods[5].selector = @selector(fillKeyPositionsWithADXWidgetFrame:withFloatArray:withFloatArray:withFloatArray:);
  methods[6].selector = @selector(hasPositionKeyframes);
  methods[7].selector = @selector(setTransitionPropertiesWithADXTypedBundle:);
  methods[8].selector = @selector(isEmpty);
  methods[9].selector = @selector(clear);
  methods[10].selector = @selector(containsWithNSString:);
  methods[11].selector = @selector(addKeyPositionWithNSString:withADXTypedBundle:);
  methods[12].selector = @selector(addKeyAttributeWithNSString:withADXTypedBundle:);
  methods[13].selector = @selector(addKeyCycleWithNSString:withADXTypedBundle:);
  methods[14].selector = @selector(addKeyPositionWithNSString:withInt:withInt:withFloat:withFloat:);
  methods[15].selector = @selector(addCustomFloatWithInt:withNSString:withNSString:withFloat:);
  methods[16].selector = @selector(addCustomColorWithInt:withNSString:withNSString:withInt:);
  methods[17].selector = @selector(updateFromWithADXConstraintWidgetContainer:withInt:);
  methods[18].selector = @selector(interpolateWithInt:withInt:withFloat:);
  methods[19].selector = @selector(getStartWithNSString:);
  methods[20].selector = @selector(getEndWithNSString:);
  methods[21].selector = @selector(getInterpolatedWithNSString:);
  methods[22].selector = @selector(getPathWithNSString:);
  methods[23].selector = @selector(getKeyFramesWithNSString:withFloatArray:withIntArray:withIntArray:);
  methods[24].selector = @selector(getWidgetStateWithNSString:withADXConstraintWidget:withInt:);
  methods[25].selector = @selector(getStartWithADXConstraintWidget:);
  methods[26].selector = @selector(getEndWithADXConstraintWidget:);
  methods[27].selector = @selector(getInterpolatedWithADXConstraintWidget:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "state_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x0, -1, -1, 34, -1 },
    { "keyPositions_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x0, -1, -1, 35, -1 },
    { "START", "I", .constantValue.asInt = ADXTransition_START, 0x19, -1, -1, -1, -1 },
    { "END", "I", .constantValue.asInt = ADXTransition_END, 0x19, -1, -1, -1, -1 },
    { "INTERPOLATED", "I", .constantValue.asInt = ADXTransition_INTERPOLATED, 0x19, -1, -1, -1, -1 },
    { "pathMotionArc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "findPreviousPosition", "LNSString;I", "findNextPosition", "getNumberKeyPositions", "LADXWidgetFrame;", "getMotion", "LNSString;", "fillKeyPositions", "LADXWidgetFrame;[F[F[F", "setTransitionProperties", "LADXTypedBundle;", "contains", "addKeyPosition", "LNSString;LADXTypedBundle;", "addKeyAttribute", "addKeyCycle", "LNSString;IIFF", "addCustomFloat", "ILNSString;LNSString;F", "addCustomColor", "ILNSString;LNSString;I", "updateFrom", "LADXConstraintWidgetContainer;I", "interpolate", "IIF", "getStart", "getEnd", "getInterpolated", "getPath", "getKeyFrames", "LNSString;[F[I[I", "getWidgetState", "LNSString;LADXConstraintWidget;I", "LADXConstraintWidget;", "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/state/Transition$WidgetState;>;", "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/state/Transition$KeyPosition;>;>;", "LADXTransition_WidgetState;LADXTransition_KeyPosition;" };
  static const J2ObjcClassInfo _ADXTransition = { "Transition", "androidx.constraintlayout.core.state", ptrTable, methods, fields, 7, 0x1, 28, 6, -1, 36, -1, -1, -1 };
  return &_ADXTransition;
}

@end

void ADXTransition_init(ADXTransition *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->state_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->keyPositions_, new_JavaUtilHashMap_init());
  self->pathMotionArc_ = -1;
}

ADXTransition *new_ADXTransition_init() {
  J2OBJC_NEW_IMPL(ADXTransition, init)
}

ADXTransition *create_ADXTransition_init() {
  J2OBJC_CREATE_IMPL(ADXTransition, init)
}

ADXTransition_WidgetState *ADXTransition_getWidgetStateWithNSString_withADXConstraintWidget_withInt_(ADXTransition *self, NSString *widgetId, ADXConstraintWidget *child, jint transitionState) {
  ADXTransition_WidgetState *widgetState = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(self->state_)) getWithId:widgetId]);
  if (widgetState == nil) {
    widgetState = create_ADXTransition_WidgetState_init();
    if (self->pathMotionArc_ != -1) {
      [((ADXMotion *) nil_chk(widgetState->motionControl_)) setPathMotionArcWithInt:self->pathMotionArc_];
    }
    [((JavaUtilHashMap *) nil_chk(self->state_)) putWithId:widgetId withId:widgetState];
    if (child != nil) {
      [widgetState updateWithADXConstraintWidget:child withInt:transitionState];
    }
  }
  return widgetState;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXTransition)

@implementation ADXTransition_WidgetState

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXTransition_WidgetState_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setKeyPositionWithADXTypedBundle:(ADXTypedBundle *)prop {
  ADXMotionKeyPosition *keyPosition = create_ADXMotionKeyPosition_init();
  [((ADXTypedBundle *) nil_chk(prop)) applyDeltaWithADXTypedValues:keyPosition];
  [((ADXMotion *) nil_chk(motionControl_)) addKeyWithADXMotionKey:keyPosition];
}

- (void)setKeyAttributeWithADXTypedBundle:(ADXTypedBundle *)prop {
  ADXMotionKeyAttributes *keyAttributes = create_ADXMotionKeyAttributes_init();
  [((ADXTypedBundle *) nil_chk(prop)) applyDeltaWithADXTypedValues:keyAttributes];
  [((ADXMotion *) nil_chk(motionControl_)) addKeyWithADXMotionKey:keyAttributes];
}

- (void)setKeyCycleWithADXTypedBundle:(ADXTypedBundle *)prop {
  ADXMotionKeyCycle *keyAttributes = create_ADXMotionKeyCycle_init();
  [((ADXTypedBundle *) nil_chk(prop)) applyDeltaWithADXTypedValues:keyAttributes];
  [((ADXMotion *) nil_chk(motionControl_)) addKeyWithADXMotionKey:keyAttributes];
}

- (void)updateWithADXConstraintWidget:(ADXConstraintWidget *)child
                              withInt:(jint)state {
  if (state == ADXTransition_START) {
    [((ADXWidgetFrame *) nil_chk(start_)) updateWithADXConstraintWidget:child];
    [((ADXMotion *) nil_chk(motionControl_)) setStartWithADXMotionWidget:motionWidgetStart_];
  }
  else if (state == ADXTransition_END) {
    [((ADXWidgetFrame *) nil_chk(end_)) updateWithADXConstraintWidget:child];
    [((ADXMotion *) nil_chk(motionControl_)) setEndWithADXMotionWidget:motionWidgetEnd_];
  }
  myParentWidth_ = -1;
}

- (ADXWidgetFrame *)getFrameWithInt:(jint)type {
  if (type == ADXTransition_START) {
    return start_;
  }
  else if (type == ADXTransition_END) {
    return end_;
  }
  return interpolated_;
}

- (void)interpolateWithInt:(jint)parentWidth
                   withInt:(jint)parentHeight
                 withFloat:(jfloat)progress
         withADXTransition:(ADXTransition *)transition {
  {
    myParentHeight_ = parentHeight;
    myParentWidth_ = parentWidth;
    [((ADXMotion *) nil_chk(motionControl_)) setupWithInt:parentWidth withInt:parentHeight withFloat:1 withLong:JavaLangSystem_nanoTime()];
  }
  ADXWidgetFrame_interpolateWithInt_withInt_withADXWidgetFrame_withADXWidgetFrame_withADXWidgetFrame_withADXTransition_withFloat_(parentWidth, parentHeight, interpolated_, start_, end_, transition, progress);
  ((ADXWidgetFrame *) nil_chk(interpolated_))->interpolatedPos_ = progress;
  [((ADXMotion *) nil_chk(motionControl_)) interpolateWithADXMotionWidget:motionWidgetInterpolated_ withFloat:progress withLong:JavaLangSystem_nanoTime() withADXKeyCache:myKeyCache_];
}

- (void)dealloc {
  RELEASE_(start_);
  RELEASE_(end_);
  RELEASE_(interpolated_);
  RELEASE_(motionControl_);
  RELEASE_(motionWidgetStart_);
  RELEASE_(motionWidgetEnd_);
  RELEASE_(motionWidgetInterpolated_);
  RELEASE_(myKeyCache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setKeyPositionWithADXTypedBundle:);
  methods[2].selector = @selector(setKeyAttributeWithADXTypedBundle:);
  methods[3].selector = @selector(setKeyCycleWithADXTypedBundle:);
  methods[4].selector = @selector(updateWithADXConstraintWidget:withInt:);
  methods[5].selector = @selector(getFrameWithInt:);
  methods[6].selector = @selector(interpolateWithInt:withInt:withFloat:withADXTransition:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "start_", "LADXWidgetFrame;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "end_", "LADXWidgetFrame;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "interpolated_", "LADXWidgetFrame;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "motionControl_", "LADXMotion;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "motionWidgetStart_", "LADXMotionWidget;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "motionWidgetEnd_", "LADXMotionWidget;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "motionWidgetInterpolated_", "LADXMotionWidget;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "myKeyCache_", "LADXKeyCache;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "myParentHeight_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "myParentWidth_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setKeyPosition", "LADXTypedBundle;", "setKeyAttribute", "setKeyCycle", "update", "LADXConstraintWidget;I", "getFrame", "I", "interpolate", "IIFLADXTransition;", "LADXTransition;" };
  static const J2ObjcClassInfo _ADXTransition_WidgetState = { "WidgetState", "androidx.constraintlayout.core.state", ptrTable, methods, fields, 7, 0x8, 7, 10, 10, -1, -1, -1, -1 };
  return &_ADXTransition_WidgetState;
}

@end

void ADXTransition_WidgetState_init(ADXTransition_WidgetState *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->myKeyCache_, new_ADXKeyCache_init());
  self->myParentHeight_ = -1;
  self->myParentWidth_ = -1;
  JreStrongAssignAndConsume(&self->start_, new_ADXWidgetFrame_init());
  JreStrongAssignAndConsume(&self->end_, new_ADXWidgetFrame_init());
  JreStrongAssignAndConsume(&self->interpolated_, new_ADXWidgetFrame_init());
  JreStrongAssignAndConsume(&self->motionWidgetStart_, new_ADXMotionWidget_initWithADXWidgetFrame_(self->start_));
  JreStrongAssignAndConsume(&self->motionWidgetEnd_, new_ADXMotionWidget_initWithADXWidgetFrame_(self->end_));
  JreStrongAssignAndConsume(&self->motionWidgetInterpolated_, new_ADXMotionWidget_initWithADXWidgetFrame_(self->interpolated_));
  JreStrongAssignAndConsume(&self->motionControl_, new_ADXMotion_initWithADXMotionWidget_(self->motionWidgetStart_));
  [self->motionControl_ setStartWithADXMotionWidget:self->motionWidgetStart_];
  [((ADXMotion *) nil_chk(self->motionControl_)) setEndWithADXMotionWidget:self->motionWidgetEnd_];
}

ADXTransition_WidgetState *new_ADXTransition_WidgetState_init() {
  J2OBJC_NEW_IMPL(ADXTransition_WidgetState, init)
}

ADXTransition_WidgetState *create_ADXTransition_WidgetState_init() {
  J2OBJC_CREATE_IMPL(ADXTransition_WidgetState, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXTransition_WidgetState)

@implementation ADXTransition_KeyPosition

- (instancetype)initWithNSString:(NSString *)target
                         withInt:(jint)frame
                         withInt:(jint)type
                       withFloat:(jfloat)x
                       withFloat:(jfloat)y {
  ADXTransition_KeyPosition_initWithNSString_withInt_withInt_withFloat_withFloat_(self, target, frame, type, x, y);
  return self;
}

- (void)dealloc {
  RELEASE_(target_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withInt:withInt:withFloat:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "frame_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "target_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "type_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "x_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "y_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;IIFF", "LADXTransition;" };
  static const J2ObjcClassInfo _ADXTransition_KeyPosition = { "KeyPosition", "androidx.constraintlayout.core.state", ptrTable, methods, fields, 7, 0x8, 1, 5, 1, -1, -1, -1, -1 };
  return &_ADXTransition_KeyPosition;
}

@end

void ADXTransition_KeyPosition_initWithNSString_withInt_withInt_withFloat_withFloat_(ADXTransition_KeyPosition *self, NSString *target, jint frame, jint type, jfloat x, jfloat y) {
  NSObject_init(self);
  JreStrongAssign(&self->target_, target);
  self->frame_ = frame;
  self->type_ = type;
  self->x_ = x;
  self->y_ = y;
}

ADXTransition_KeyPosition *new_ADXTransition_KeyPosition_initWithNSString_withInt_withInt_withFloat_withFloat_(NSString *target, jint frame, jint type, jfloat x, jfloat y) {
  J2OBJC_NEW_IMPL(ADXTransition_KeyPosition, initWithNSString_withInt_withInt_withFloat_withFloat_, target, frame, type, x, y)
}

ADXTransition_KeyPosition *create_ADXTransition_KeyPosition_initWithNSString_withInt_withInt_withFloat_withFloat_(NSString *target, jint frame, jint type, jfloat x, jfloat y) {
  J2OBJC_CREATE_IMPL(ADXTransition_KeyPosition, initWithNSString_withInt_withInt_withFloat_withFloat_, target, frame, type, x, y)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXTransition_KeyPosition)
