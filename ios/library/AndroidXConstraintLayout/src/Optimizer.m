//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\Optimizer.java
//

#include "ConstraintAnchor.h"
#include "ConstraintWidget.h"
#include "ConstraintWidgetContainer.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LinearSystem.h"
#include "Optimizer.h"
#include "SolverVariable.h"


J2OBJC_INITIALIZED_DEFN(ADXOptimizer)

IOSBooleanArray *ADXOptimizer_flags;

@implementation ADXOptimizer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXOptimizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)checkMatchParentWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)container
                                     withADXLinearSystem:(ADXLinearSystem *)system
                                 withADXConstraintWidget:(ADXConstraintWidget *)widget {
  ADXOptimizer_checkMatchParentWithADXConstraintWidgetContainer_withADXLinearSystem_withADXConstraintWidget_(container, system, widget);
}

+ (jboolean)enabledWithInt:(jint)optimizationLevel
                   withInt:(jint)optimization {
  return ADXOptimizer_enabledWithInt_withInt_(optimizationLevel, optimization);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x19, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(checkMatchParentWithADXConstraintWidgetContainer:withADXLinearSystem:withADXConstraintWidget:);
  methods[2].selector = @selector(enabledWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "OPTIMIZATION_NONE", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_NONE, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_DIRECT", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_DIRECT, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_BARRIER", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_BARRIER, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_CHAIN", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_CHAIN, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_DIMENSIONS", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_DIMENSIONS, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_RATIO", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_RATIO, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_GROUPS", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_GROUPS, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_GRAPH", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_GRAPH, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_GRAPH_WRAP", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_GRAPH_WRAP, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_CACHE_MEASURES", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_CACHE_MEASURES, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_DEPENDENCY_ORDERING", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_DEPENDENCY_ORDERING, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_GROUPING", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_GROUPING, 0x19, -1, -1, -1, -1 },
    { "OPTIMIZATION_STANDARD", "I", .constantValue.asInt = ADXOptimizer_OPTIMIZATION_STANDARD, 0x19, -1, -1, -1, -1 },
    { "flags", "[Z", .constantValue.asLong = 0, 0x8, -1, 4, -1, -1 },
    { "FLAG_USE_OPTIMIZE", "I", .constantValue.asInt = ADXOptimizer_FLAG_USE_OPTIMIZE, 0x18, -1, -1, -1, -1 },
    { "FLAG_CHAIN_DANGLING", "I", .constantValue.asInt = ADXOptimizer_FLAG_CHAIN_DANGLING, 0x18, -1, -1, -1, -1 },
    { "FLAG_RECOMPUTE_BOUNDS", "I", .constantValue.asInt = ADXOptimizer_FLAG_RECOMPUTE_BOUNDS, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "checkMatchParent", "LADXConstraintWidgetContainer;LADXLinearSystem;LADXConstraintWidget;", "enabled", "II", &ADXOptimizer_flags };
  static const J2ObjcClassInfo _ADXOptimizer = { "Optimizer", "androidx.constraintlayout.core.widgets", ptrTable, methods, fields, 7, 0x1, 3, 17, -1, -1, -1, -1, -1 };
  return &_ADXOptimizer;
}

+ (void)initialize {
  if (self == [ADXOptimizer class]) {
    JreStrongAssignAndConsume(&ADXOptimizer_flags, [IOSBooleanArray newArrayWithLength:3]);
    J2OBJC_SET_INITIALIZED(ADXOptimizer)
  }
}

@end

void ADXOptimizer_init(ADXOptimizer *self) {
  NSObject_init(self);
}

ADXOptimizer *new_ADXOptimizer_init() {
  J2OBJC_NEW_IMPL(ADXOptimizer, init)
}

ADXOptimizer *create_ADXOptimizer_init() {
  J2OBJC_CREATE_IMPL(ADXOptimizer, init)
}

void ADXOptimizer_checkMatchParentWithADXConstraintWidgetContainer_withADXLinearSystem_withADXConstraintWidget_(ADXConstraintWidgetContainer *container, ADXLinearSystem *system, ADXConstraintWidget *widget) {
  ADXOptimizer_initialize();
  ((ADXConstraintWidget *) nil_chk(widget))->mHorizontalResolution_ = ADXConstraintWidget_UNKNOWN;
  widget->mVerticalResolution_ = ADXConstraintWidget_UNKNOWN;
  if (IOSObjectArray_Get(nil_chk(((ADXConstraintWidgetContainer *) nil_chk(container))->mListDimensionBehaviors_), ADXConstraintWidget_DIMENSION_HORIZONTAL) != JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, WRAP_CONTENT) && IOSObjectArray_Get(widget->mListDimensionBehaviors_, ADXConstraintWidget_DIMENSION_HORIZONTAL) == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_PARENT)) {
    jint left = ((ADXConstraintAnchor *) nil_chk(widget->mLeft_))->mMargin_;
    jint right = [container getWidth] - ((ADXConstraintAnchor *) nil_chk(widget->mRight_))->mMargin_;
    JreStrongAssign(&((ADXConstraintAnchor *) nil_chk(widget->mLeft_))->mSolverVariable_, [((ADXLinearSystem *) nil_chk(system)) createObjectVariableWithId:widget->mLeft_]);
    JreStrongAssign(&((ADXConstraintAnchor *) nil_chk(widget->mRight_))->mSolverVariable_, [system createObjectVariableWithId:widget->mRight_]);
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(widget->mLeft_))->mSolverVariable_ withInt:left];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(widget->mRight_))->mSolverVariable_ withInt:right];
    widget->mHorizontalResolution_ = ADXConstraintWidget_DIRECT;
    [widget setHorizontalDimensionWithInt:left withInt:right];
  }
  if (IOSObjectArray_Get(nil_chk(container->mListDimensionBehaviors_), ADXConstraintWidget_DIMENSION_VERTICAL) != JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, WRAP_CONTENT) && IOSObjectArray_Get(widget->mListDimensionBehaviors_, ADXConstraintWidget_DIMENSION_VERTICAL) == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_PARENT)) {
    jint top = ((ADXConstraintAnchor *) nil_chk(widget->mTop_))->mMargin_;
    jint bottom = [container getHeight] - ((ADXConstraintAnchor *) nil_chk(widget->mBottom_))->mMargin_;
    JreStrongAssign(&((ADXConstraintAnchor *) nil_chk(widget->mTop_))->mSolverVariable_, [((ADXLinearSystem *) nil_chk(system)) createObjectVariableWithId:widget->mTop_]);
    JreStrongAssign(&((ADXConstraintAnchor *) nil_chk(widget->mBottom_))->mSolverVariable_, [system createObjectVariableWithId:widget->mBottom_]);
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(widget->mTop_))->mSolverVariable_ withInt:top];
    [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(widget->mBottom_))->mSolverVariable_ withInt:bottom];
    if (widget->mBaselineDistance_ > 0 || [widget getVisibility] == ADXConstraintWidget_GONE) {
      JreStrongAssign(&((ADXConstraintAnchor *) nil_chk(widget->mBaseline_))->mSolverVariable_, [system createObjectVariableWithId:widget->mBaseline_]);
      [system addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(widget->mBaseline_))->mSolverVariable_ withInt:top + widget->mBaselineDistance_];
    }
    widget->mVerticalResolution_ = ADXConstraintWidget_DIRECT;
    [widget setVerticalDimensionWithInt:top withInt:bottom];
  }
}

jboolean ADXOptimizer_enabledWithInt_withInt_(jint optimizationLevel, jint optimization) {
  ADXOptimizer_initialize();
  return (optimizationLevel & optimization) == optimization;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXOptimizer)
