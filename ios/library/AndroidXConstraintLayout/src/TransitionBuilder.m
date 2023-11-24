//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\TransitionBuilder.java
//

#include "ConstraintSet.h"
#include "J2ObjC_source.h"
#include "MotionLayout.h"
#include "MotionScene.h"
#include "TransitionBuilder.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"


@interface ADXTransitionBuilder ()

/*!
 @brief Ensure that motion scene understands the constraint set and its respective ids.
 */
+ (void)updateConstraintSetInMotionSceneWithADXMotionScene:(ADXMotionScene *)scene
                             withADXMotionScene_Transition:(ADXMotionScene_Transition *)transition
                                      withADXConstraintSet:(ADXConstraintSet *)startConstraintSet
                                      withADXConstraintSet:(ADXConstraintSet *)endConstraintSet;

@end

inline NSString *ADXTransitionBuilder_get_TAG(void);
static NSString *ADXTransitionBuilder_TAG = @"TransitionBuilder";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXTransitionBuilder, TAG, NSString *)

__attribute__((unused)) static void ADXTransitionBuilder_updateConstraintSetInMotionSceneWithADXMotionScene_withADXMotionScene_Transition_withADXConstraintSet_withADXConstraintSet_(ADXMotionScene *scene, ADXMotionScene_Transition *transition, ADXConstraintSet *startConstraintSet, ADXConstraintSet *endConstraintSet);

@implementation ADXTransitionBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXTransitionBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)validateWithADXMotionLayout:(ADXMotionLayout *)layout {
  ADXTransitionBuilder_validateWithADXMotionLayout_(layout);
}

+ (ADXMotionScene_Transition *)buildTransitionWithADXMotionScene:(ADXMotionScene *)scene
                                                         withInt:(jint)transitionId
                                                         withInt:(jint)startConstraintSetId
                                            withADXConstraintSet:(ADXConstraintSet *)startConstraintSet
                                                         withInt:(jint)endConstraintSetId
                                            withADXConstraintSet:(ADXConstraintSet *)endConstraintSet {
  return ADXTransitionBuilder_buildTransitionWithADXMotionScene_withInt_withInt_withADXConstraintSet_withInt_withADXConstraintSet_(scene, transitionId, startConstraintSetId, startConstraintSet, endConstraintSetId, endConstraintSet);
}

+ (void)updateConstraintSetInMotionSceneWithADXMotionScene:(ADXMotionScene *)scene
                             withADXMotionScene_Transition:(ADXMotionScene_Transition *)transition
                                      withADXConstraintSet:(ADXConstraintSet *)startConstraintSet
                                      withADXConstraintSet:(ADXConstraintSet *)endConstraintSet {
  ADXTransitionBuilder_updateConstraintSetInMotionSceneWithADXMotionScene_withADXMotionScene_Transition_withADXConstraintSet_withADXConstraintSet_(scene, transition, startConstraintSet, endConstraintSet);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LADXMotionScene_Transition;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(validateWithADXMotionLayout:);
  methods[2].selector = @selector(buildTransitionWithADXMotionScene:withInt:withInt:withADXConstraintSet:withInt:withADXConstraintSet:);
  methods[3].selector = @selector(updateConstraintSetInMotionSceneWithADXMotionScene:withADXMotionScene_Transition:withADXConstraintSet:withADXConstraintSet:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "validate", "LADXMotionLayout;", "buildTransition", "LADXMotionScene;IILADXConstraintSet;ILADXConstraintSet;", "updateConstraintSetInMotionScene", "LADXMotionScene;LADXMotionScene_Transition;LADXConstraintSet;LADXConstraintSet;", &ADXTransitionBuilder_TAG };
  static const J2ObjcClassInfo _ADXTransitionBuilder = { "TransitionBuilder", "androidx.constraintlayout.motion.widget", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_ADXTransitionBuilder;
}

@end

void ADXTransitionBuilder_init(ADXTransitionBuilder *self) {
  NSObject_init(self);
}

ADXTransitionBuilder *new_ADXTransitionBuilder_init() {
  J2OBJC_NEW_IMPL(ADXTransitionBuilder, init)
}

ADXTransitionBuilder *create_ADXTransitionBuilder_init() {
  J2OBJC_CREATE_IMPL(ADXTransitionBuilder, init)
}

void ADXTransitionBuilder_validateWithADXMotionLayout_(ADXMotionLayout *layout) {
  ADXTransitionBuilder_initialize();
  if (((ADXMotionLayout *) nil_chk(layout))->mScene_ == nil) {
    @throw create_JavaLangRuntimeException_initWithNSString_(@"Invalid motion layout. Layout missing Motion Scene.");
  }
  ADXMotionScene *scene = JreRetainedLocalValue(layout->mScene_);
  if (![scene validateLayoutWithADXMotionLayout:layout]) {
    @throw create_JavaLangRuntimeException_initWithNSString_(@"MotionLayout doesn't have the right motion scene.");
  }
  if (scene->mCurrentTransition_ == nil || [((JavaUtilArrayList *) nil_chk([scene getDefinedTransitions])) isEmpty]) {
    @throw create_JavaLangRuntimeException_initWithNSString_(@"Invalid motion layout. Motion Scene doesn't have any transition.");
  }
}

ADXMotionScene_Transition *ADXTransitionBuilder_buildTransitionWithADXMotionScene_withInt_withInt_withADXConstraintSet_withInt_withADXConstraintSet_(ADXMotionScene *scene, jint transitionId, jint startConstraintSetId, ADXConstraintSet *startConstraintSet, jint endConstraintSetId, ADXConstraintSet *endConstraintSet) {
  ADXTransitionBuilder_initialize();
  ADXMotionScene_Transition *transition = create_ADXMotionScene_Transition_initWithInt_withADXMotionScene_withInt_withInt_(transitionId, scene, startConstraintSetId, endConstraintSetId);
  ADXTransitionBuilder_updateConstraintSetInMotionSceneWithADXMotionScene_withADXMotionScene_Transition_withADXConstraintSet_withADXConstraintSet_(scene, transition, startConstraintSet, endConstraintSet);
  return transition;
}

void ADXTransitionBuilder_updateConstraintSetInMotionSceneWithADXMotionScene_withADXMotionScene_Transition_withADXConstraintSet_withADXConstraintSet_(ADXMotionScene *scene, ADXMotionScene_Transition *transition, ADXConstraintSet *startConstraintSet, ADXConstraintSet *endConstraintSet) {
  ADXTransitionBuilder_initialize();
  jint startId = [((ADXMotionScene_Transition *) nil_chk(transition)) getStartConstraintSetId];
  jint endId = [transition getEndConstraintSetId];
  [((ADXMotionScene *) nil_chk(scene)) setConstraintSetWithInt:startId withADXConstraintSet:startConstraintSet];
  [scene setConstraintSetWithInt:endId withADXConstraintSet:endConstraintSet];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXTransitionBuilder)