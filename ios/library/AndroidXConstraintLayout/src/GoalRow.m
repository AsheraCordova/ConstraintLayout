//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\GoalRow.java
//

#include "ArrayRow.h"
#include "Cache.h"
#include "GoalRow.h"
#include "J2ObjC_source.h"
#include "SolverVariable.h"


@implementation ADXGoalRow

- (instancetype)initWithADXCache:(ADXCache *)cache {
  ADXGoalRow_initWithADXCache_(self, cache);
  return self;
}

- (void)addErrorWithADXSolverVariable:(ADXSolverVariable *)error {
  [super addErrorWithADXSolverVariable:error];
  ((ADXSolverVariable *) nil_chk(error))->usageInRowCount_--;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXCache:);
  methods[1].selector = @selector(addErrorWithADXSolverVariable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADXCache;", "addError", "LADXSolverVariable;" };
  static const J2ObjcClassInfo _ADXGoalRow = { "GoalRow", "androidx.constraintlayout.core", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_ADXGoalRow;
}

@end

void ADXGoalRow_initWithADXCache_(ADXGoalRow *self, ADXCache *cache) {
  ADXArrayRow_initWithADXCache_(self, cache);
}

ADXGoalRow *new_ADXGoalRow_initWithADXCache_(ADXCache *cache) {
  J2OBJC_NEW_IMPL(ADXGoalRow, initWithADXCache_, cache)
}

ADXGoalRow *create_ADXGoalRow_initWithADXCache_(ADXCache *cache) {
  J2OBJC_CREATE_IMPL(ADXGoalRow, initWithADXCache_, cache)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXGoalRow)
