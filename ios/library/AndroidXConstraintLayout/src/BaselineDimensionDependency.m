//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\BaselineDimensionDependency.java
//

#include "BaselineDimensionDependency.h"
#include "ConstraintWidget.h"
#include "DependencyNode.h"
#include "DimensionDependency.h"
#include "J2ObjC_source.h"
#include "VerticalWidgetRun.h"
#include "WidgetRun.h"


@implementation ADXBaselineDimensionDependency

- (instancetype)initPackagePrivateWithADXWidgetRun:(ADXWidgetRun *)run {
  ADXBaselineDimensionDependency_initPackagePrivateWithADXWidgetRun_(self, run);
  return self;
}

- (void)updateWithADXDependencyNode:(ADXDependencyNode *)node {
  ADXVerticalWidgetRun *verticalRun = (ADXVerticalWidgetRun *) cast_chk(run_, [ADXVerticalWidgetRun class]);
  ((ADXDependencyNode *) nil_chk(((ADXVerticalWidgetRun *) nil_chk(verticalRun))->baseline_))->margin_ = [((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run_))->widget_)) getBaselineDistance];
  resolved_ = true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithADXWidgetRun:);
  methods[1].selector = @selector(updateWithADXDependencyNode:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADXWidgetRun;", "update", "LADXDependencyNode;" };
  static const J2ObjcClassInfo _ADXBaselineDimensionDependency = { "BaselineDimensionDependency", "androidx.constraintlayout.core.widgets.analyzer", ptrTable, methods, NULL, 7, 0x0, 2, 0, -1, -1, -1, -1, -1 };
  return &_ADXBaselineDimensionDependency;
}

@end

void ADXBaselineDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXBaselineDimensionDependency *self, ADXWidgetRun *run) {
  ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(self, run);
}

ADXBaselineDimensionDependency *new_ADXBaselineDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXWidgetRun *run) {
  J2OBJC_NEW_IMPL(ADXBaselineDimensionDependency, initPackagePrivateWithADXWidgetRun_, run)
}

ADXBaselineDimensionDependency *create_ADXBaselineDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXWidgetRun *run) {
  J2OBJC_CREATE_IMPL(ADXBaselineDimensionDependency, initPackagePrivateWithADXWidgetRun_, run)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXBaselineDimensionDependency)
