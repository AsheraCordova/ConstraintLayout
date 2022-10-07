//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\ChainRun.java
//

#include "ChainRun.h"
#include "ConstraintAnchor.h"
#include "ConstraintWidget.h"
#include "ConstraintWidgetContainer.h"
#include "Dependency.h"
#include "DependencyNode.h"
#include "DimensionDependency.h"
#include "HorizontalWidgetRun.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "RunGroup.h"
#include "VerticalWidgetRun.h"
#include "WidgetRun.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"


@interface ADXChainRun () {
 @public
  jint chainStyle_;
}

- (void)build;

- (ADXConstraintWidget *)getFirstVisibleWidget;

- (ADXConstraintWidget *)getLastVisibleWidget;

@end

__attribute__((unused)) static void ADXChainRun_build(ADXChainRun *self);

__attribute__((unused)) static ADXConstraintWidget *ADXChainRun_getFirstVisibleWidget(ADXChainRun *self);

__attribute__((unused)) static ADXConstraintWidget *ADXChainRun_getLastVisibleWidget(ADXChainRun *self);

@implementation ADXChainRun

- (instancetype)initWithADXConstraintWidget:(ADXConstraintWidget *)widget
                                    withInt:(jint)orientation {
  ADXChainRun_initWithADXConstraintWidget_withInt_(self, widget, orientation);
  return self;
}

- (NSString *)description {
  JavaLangStringBuilder *log = create_JavaLangStringBuilder_initWithNSString_(@"ChainRun ");
  [log appendWithNSString:(orientation_ == ADXConstraintWidget_HORIZONTAL ? @"horizontal : " : @"vertical : ")];
  for (ADXWidgetRun * __strong run in nil_chk(widgets_)) {
    [log appendWithNSString:@"<"];
    [log appendWithId:run];
    [log appendWithNSString:@"> "];
  }
  return [log description];
}

- (jboolean)supportsWrapComputation {
  jint count = [((JavaUtilArrayList *) nil_chk(widgets_)) size];
  for (jint i = 0; i < count; i++) {
    ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:i]);
    if (![((ADXWidgetRun *) nil_chk(run)) supportsWrapComputation]) {
      return false;
    }
  }
  return true;
}

- (jlong)getWrapDimension {
  jint count = [((JavaUtilArrayList *) nil_chk(widgets_)) size];
  jlong wrapDimension = 0;
  for (jint i = 0; i < count; i++) {
    ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:i]);
    wrapDimension += ((ADXDependencyNode *) nil_chk(((ADXWidgetRun *) nil_chk(run))->start_))->margin_;
    wrapDimension += [run getWrapDimension];
    wrapDimension += ((ADXDependencyNode *) nil_chk(run->end_))->margin_;
  }
  return wrapDimension;
}

- (void)build {
  ADXChainRun_build(self);
}

- (void)clear {
  JreStrongAssign(&runGroup_, nil);
  for (ADXWidgetRun * __strong run in nil_chk(widgets_)) {
    [((ADXWidgetRun *) nil_chk(run)) clear];
  }
}

- (void)reset {
  ((ADXDependencyNode *) nil_chk(start_))->resolved_ = false;
  ((ADXDependencyNode *) nil_chk(end_))->resolved_ = false;
}

- (void)updateWithADXDependency:(id<ADXDependency>)dependency {
  if (!(((ADXDependencyNode *) nil_chk(start_))->resolved_ && ((ADXDependencyNode *) nil_chk(end_))->resolved_)) {
    return;
  }
  ADXConstraintWidget *parent = JreRetainedLocalValue([((ADXConstraintWidget *) nil_chk(widget_)) getParent]);
  jboolean isInRtl = false;
  if ([parent isKindOfClass:[ADXConstraintWidgetContainer class]]) {
    isInRtl = [((ADXConstraintWidgetContainer *) nil_chk(((ADXConstraintWidgetContainer *) parent))) isRtl];
  }
  jint distance = ((ADXDependencyNode *) nil_chk(end_))->value_ - ((ADXDependencyNode *) nil_chk(start_))->value_;
  jint size = 0;
  jint numMatchConstraints = 0;
  jfloat weights = 0;
  jint numVisibleWidgets = 0;
  jint count = [((JavaUtilArrayList *) nil_chk(widgets_)) size];
  jint firstVisibleWidget = -1;
  for (jint i = 0; i < count; i++) {
    ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:i]);
    if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] == ADXConstraintWidget_GONE) {
      continue;
    }
    firstVisibleWidget = i;
    break;
  }
  jint lastVisibleWidget = -1;
  for (jint i = count - 1; i >= 0; i--) {
    ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:i]);
    if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] == ADXConstraintWidget_GONE) {
      continue;
    }
    lastVisibleWidget = i;
    break;
  }
  for (jint j = 0; j < 2; j++) {
    for (jint i = 0; i < count; i++) {
      ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:i]);
      if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] == ADXConstraintWidget_GONE) {
        continue;
      }
      numVisibleWidgets++;
      if (i > 0 && i >= firstVisibleWidget) {
        size += ((ADXDependencyNode *) nil_chk(run->start_))->margin_;
      }
      jint dimension = ((ADXDimensionDependency *) nil_chk(run->dimension_))->value_;
      jboolean treatAsFixed = run->dimensionBehavior_ != JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT);
      if (treatAsFixed) {
        if (orientation_ == ADXConstraintWidget_HORIZONTAL && !((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(run->widget_))->horizontalRun_))->dimension_->resolved_) {
          return;
        }
        if (orientation_ == ADXConstraintWidget_VERTICAL && !((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(run->widget_))->verticalRun_))->dimension_->resolved_) {
          return;
        }
      }
      else if (run->matchConstraintsType_ == ADXConstraintWidget_MATCH_CONSTRAINT_WRAP && j == 0) {
        treatAsFixed = true;
        dimension = run->dimension_->wrapValue_;
        numMatchConstraints++;
      }
      else if (run->dimension_->resolved_) {
        treatAsFixed = true;
      }
      if (!treatAsFixed) {
        numMatchConstraints++;
        jfloat weight = IOSFloatArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(run->widget_))->mWeight_), orientation_);
        if (weight >= 0) {
          JrePlusAssignFloatF(&weights, weight);
        }
      }
      else {
        size += dimension;
      }
      if (i < count - 1 && i < lastVisibleWidget) {
        size += -((ADXDependencyNode *) nil_chk(run->end_))->margin_;
      }
    }
    if (size < distance || numMatchConstraints == 0) {
      break;
    }
    numVisibleWidgets = 0;
    numMatchConstraints = 0;
    size = 0;
    weights = 0;
  }
  jint position = ((ADXDependencyNode *) nil_chk(start_))->value_;
  if (isInRtl) {
    position = ((ADXDependencyNode *) nil_chk(end_))->value_;
  }
  if (size > distance) {
    if (isInRtl) {
      position += JreFpToInt((0.5f + (size - distance) / 2.0f));
    }
    else {
      position -= JreFpToInt((0.5f + (size - distance) / 2.0f));
    }
  }
  jint matchConstraintsDimension = 0;
  if (numMatchConstraints > 0) {
    matchConstraintsDimension = JreFpToInt((0.5f + (distance - size) / (jfloat) numMatchConstraints));
    jint appliedLimits = 0;
    for (jint i = 0; i < count; i++) {
      ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:i]);
      if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] == ADXConstraintWidget_GONE) {
        continue;
      }
      if (run->dimensionBehavior_ == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT) && !((ADXDimensionDependency *) nil_chk(run->dimension_))->resolved_) {
        jint dimension = matchConstraintsDimension;
        if (weights > 0) {
          jfloat weight = IOSFloatArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(run->widget_))->mWeight_), orientation_);
          dimension = JreFpToInt((0.5f + weight * (distance - size) / weights));
        }
        jint max;
        jint min;
        jint value = dimension;
        if (orientation_ == ADXConstraintWidget_HORIZONTAL) {
          max = ((ADXConstraintWidget *) nil_chk(run->widget_))->mMatchConstraintMaxWidth_;
          min = run->widget_->mMatchConstraintMinWidth_;
        }
        else {
          max = ((ADXConstraintWidget *) nil_chk(run->widget_))->mMatchConstraintMaxHeight_;
          min = run->widget_->mMatchConstraintMinHeight_;
        }
        if (run->matchConstraintsType_ == ADXConstraintWidget_MATCH_CONSTRAINT_WRAP) {
          value = JavaLangMath_minWithInt_withInt_(value, ((ADXDimensionDependency *) nil_chk(run->dimension_))->wrapValue_);
        }
        value = JavaLangMath_maxWithInt_withInt_(min, value);
        if (max > 0) {
          value = JavaLangMath_minWithInt_withInt_(max, value);
        }
        if (value != dimension) {
          appliedLimits++;
          dimension = value;
        }
        [((ADXDimensionDependency *) nil_chk(run->dimension_)) resolveWithInt:dimension];
      }
    }
    if (appliedLimits > 0) {
      numMatchConstraints -= appliedLimits;
      size = 0;
      for (jint i = 0; i < count; i++) {
        ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:i]);
        if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] == ADXConstraintWidget_GONE) {
          continue;
        }
        if (i > 0 && i >= firstVisibleWidget) {
          size += ((ADXDependencyNode *) nil_chk(run->start_))->margin_;
        }
        size += ((ADXDimensionDependency *) nil_chk(run->dimension_))->value_;
        if (i < count - 1 && i < lastVisibleWidget) {
          size += -((ADXDependencyNode *) nil_chk(run->end_))->margin_;
        }
      }
    }
    if (chainStyle_ == ADXConstraintWidget_CHAIN_PACKED && appliedLimits == 0) {
      chainStyle_ = ADXConstraintWidget_CHAIN_SPREAD;
    }
  }
  if (size > distance) {
    chainStyle_ = ADXConstraintWidget_CHAIN_PACKED;
  }
  if (numVisibleWidgets > 0 && numMatchConstraints == 0 && firstVisibleWidget == lastVisibleWidget) {
    chainStyle_ = ADXConstraintWidget_CHAIN_PACKED;
  }
  if (chainStyle_ == ADXConstraintWidget_CHAIN_SPREAD_INSIDE) {
    jint gap = 0;
    if (numVisibleWidgets > 1) {
      gap = JreIntDiv((distance - size), (numVisibleWidgets - 1));
    }
    else if (numVisibleWidgets == 1) {
      gap = JreIntDiv((distance - size), 2);
    }
    if (numMatchConstraints > 0) {
      gap = 0;
    }
    for (jint i = 0; i < count; i++) {
      jint index = i;
      if (isInRtl) {
        index = count - (i + 1);
      }
      ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:index]);
      if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] == ADXConstraintWidget_GONE) {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
        continue;
      }
      if (i > 0) {
        if (isInRtl) {
          position -= gap;
        }
        else {
          position += gap;
        }
      }
      if (i > 0 && i >= firstVisibleWidget) {
        if (isInRtl) {
          position -= ((ADXDependencyNode *) nil_chk(run->start_))->margin_;
        }
        else {
          position += ((ADXDependencyNode *) nil_chk(run->start_))->margin_;
        }
      }
      if (isInRtl) {
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
      }
      else {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
      }
      jint dimension = ((ADXDimensionDependency *) nil_chk(run->dimension_))->value_;
      if (run->dimensionBehavior_ == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT) && run->matchConstraintsType_ == ADXConstraintWidget_MATCH_CONSTRAINT_WRAP) {
        dimension = run->dimension_->wrapValue_;
      }
      if (isInRtl) {
        position -= dimension;
      }
      else {
        position += dimension;
      }
      if (isInRtl) {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
      }
      else {
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
      }
      run->resolved_ = true;
      if (i < count - 1 && i < lastVisibleWidget) {
        if (isInRtl) {
          position -= -((ADXDependencyNode *) nil_chk(run->end_))->margin_;
        }
        else {
          position += -((ADXDependencyNode *) nil_chk(run->end_))->margin_;
        }
      }
    }
  }
  else if (chainStyle_ == ADXConstraintWidget_CHAIN_SPREAD) {
    jint gap = JreIntDiv((distance - size), (numVisibleWidgets + 1));
    if (numMatchConstraints > 0) {
      gap = 0;
    }
    for (jint i = 0; i < count; i++) {
      jint index = i;
      if (isInRtl) {
        index = count - (i + 1);
      }
      ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:index]);
      if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] == ADXConstraintWidget_GONE) {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
        continue;
      }
      if (isInRtl) {
        position -= gap;
      }
      else {
        position += gap;
      }
      if (i > 0 && i >= firstVisibleWidget) {
        if (isInRtl) {
          position -= ((ADXDependencyNode *) nil_chk(run->start_))->margin_;
        }
        else {
          position += ((ADXDependencyNode *) nil_chk(run->start_))->margin_;
        }
      }
      if (isInRtl) {
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
      }
      else {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
      }
      jint dimension = ((ADXDimensionDependency *) nil_chk(run->dimension_))->value_;
      if (run->dimensionBehavior_ == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT) && run->matchConstraintsType_ == ADXConstraintWidget_MATCH_CONSTRAINT_WRAP) {
        dimension = JavaLangMath_minWithInt_withInt_(dimension, run->dimension_->wrapValue_);
      }
      if (isInRtl) {
        position -= dimension;
      }
      else {
        position += dimension;
      }
      if (isInRtl) {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
      }
      else {
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
      }
      if (i < count - 1 && i < lastVisibleWidget) {
        if (isInRtl) {
          position -= -((ADXDependencyNode *) nil_chk(run->end_))->margin_;
        }
        else {
          position += -((ADXDependencyNode *) nil_chk(run->end_))->margin_;
        }
      }
    }
  }
  else if (chainStyle_ == ADXConstraintWidget_CHAIN_PACKED) {
    jfloat bias = (orientation_ == ADXConstraintWidget_HORIZONTAL) ? [((ADXConstraintWidget *) nil_chk(widget_)) getHorizontalBiasPercent] : [((ADXConstraintWidget *) nil_chk(widget_)) getVerticalBiasPercent];
    if (isInRtl) {
      bias = 1 - bias;
    }
    jint gap = JreFpToInt((0.5f + (distance - size) * bias));
    if (gap < 0 || numMatchConstraints > 0) {
      gap = 0;
    }
    if (isInRtl) {
      position -= gap;
    }
    else {
      position += gap;
    }
    for (jint i = 0; i < count; i++) {
      jint index = i;
      if (isInRtl) {
        index = count - (i + 1);
      }
      ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:index]);
      if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] == ADXConstraintWidget_GONE) {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
        continue;
      }
      if (i > 0 && i >= firstVisibleWidget) {
        if (isInRtl) {
          position -= ((ADXDependencyNode *) nil_chk(run->start_))->margin_;
        }
        else {
          position += ((ADXDependencyNode *) nil_chk(run->start_))->margin_;
        }
      }
      if (isInRtl) {
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
      }
      else {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
      }
      jint dimension = ((ADXDimensionDependency *) nil_chk(run->dimension_))->value_;
      if (run->dimensionBehavior_ == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT) && run->matchConstraintsType_ == ADXConstraintWidget_MATCH_CONSTRAINT_WRAP) {
        dimension = run->dimension_->wrapValue_;
      }
      if (isInRtl) {
        position -= dimension;
      }
      else {
        position += dimension;
      }
      if (isInRtl) {
        [((ADXDependencyNode *) nil_chk(run->start_)) resolveWithInt:position];
      }
      else {
        [((ADXDependencyNode *) nil_chk(run->end_)) resolveWithInt:position];
      }
      if (i < count - 1 && i < lastVisibleWidget) {
        if (isInRtl) {
          position -= -((ADXDependencyNode *) nil_chk(run->end_))->margin_;
        }
        else {
          position += -((ADXDependencyNode *) nil_chk(run->end_))->margin_;
        }
      }
    }
  }
}

- (void)applyToWidget {
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(widgets_)) size]; i++) {
    ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:i]);
    [((ADXWidgetRun *) nil_chk(run)) applyToWidget];
  }
}

- (ADXConstraintWidget *)getFirstVisibleWidget {
  return ADXChainRun_getFirstVisibleWidget(self);
}

- (ADXConstraintWidget *)getLastVisibleWidget {
  return ADXChainRun_getLastVisibleWidget(self);
}

- (void)apply {
  for (ADXWidgetRun * __strong run in nil_chk(widgets_)) {
    [((ADXWidgetRun *) nil_chk(run)) apply];
  }
  jint count = [widgets_ size];
  if (count < 1) {
    return;
  }
  ADXConstraintWidget *firstWidget = JreRetainedLocalValue(((ADXWidgetRun *) nil_chk([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:0]))->widget_);
  ADXConstraintWidget *lastWidget = JreRetainedLocalValue(((ADXWidgetRun *) nil_chk([((JavaUtilArrayList *) nil_chk(widgets_)) getWithInt:count - 1]))->widget_);
  if (orientation_ == ADXConstraintWidget_HORIZONTAL) {
    ADXConstraintAnchor *startAnchor = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(firstWidget))->mLeft_);
    ADXConstraintAnchor *endAnchor = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(lastWidget))->mRight_);
    ADXDependencyNode *startTarget = JreRetainedLocalValue([self getTargetWithADXConstraintAnchor:startAnchor withInt:ADXConstraintWidget_HORIZONTAL]);
    jint startMargin = [((ADXConstraintAnchor *) nil_chk(startAnchor)) getMargin];
    ADXConstraintWidget *firstVisibleWidget = ADXChainRun_getFirstVisibleWidget(self);
    if (firstVisibleWidget != nil) {
      startMargin = [((ADXConstraintAnchor *) nil_chk(firstVisibleWidget->mLeft_)) getMargin];
    }
    if (startTarget != nil) {
      [self addTargetWithADXDependencyNode:start_ withADXDependencyNode:startTarget withInt:startMargin];
    }
    ADXDependencyNode *endTarget = JreRetainedLocalValue([self getTargetWithADXConstraintAnchor:endAnchor withInt:ADXConstraintWidget_HORIZONTAL]);
    jint endMargin = [((ADXConstraintAnchor *) nil_chk(endAnchor)) getMargin];
    ADXConstraintWidget *lastVisibleWidget = ADXChainRun_getLastVisibleWidget(self);
    if (lastVisibleWidget != nil) {
      endMargin = [((ADXConstraintAnchor *) nil_chk(lastVisibleWidget->mRight_)) getMargin];
    }
    if (endTarget != nil) {
      [self addTargetWithADXDependencyNode:end_ withADXDependencyNode:endTarget withInt:-endMargin];
    }
  }
  else {
    ADXConstraintAnchor *startAnchor = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(firstWidget))->mTop_);
    ADXConstraintAnchor *endAnchor = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(lastWidget))->mBottom_);
    ADXDependencyNode *startTarget = JreRetainedLocalValue([self getTargetWithADXConstraintAnchor:startAnchor withInt:ADXConstraintWidget_VERTICAL]);
    jint startMargin = [((ADXConstraintAnchor *) nil_chk(startAnchor)) getMargin];
    ADXConstraintWidget *firstVisibleWidget = ADXChainRun_getFirstVisibleWidget(self);
    if (firstVisibleWidget != nil) {
      startMargin = [((ADXConstraintAnchor *) nil_chk(firstVisibleWidget->mTop_)) getMargin];
    }
    if (startTarget != nil) {
      [self addTargetWithADXDependencyNode:start_ withADXDependencyNode:startTarget withInt:startMargin];
    }
    ADXDependencyNode *endTarget = JreRetainedLocalValue([self getTargetWithADXConstraintAnchor:endAnchor withInt:ADXConstraintWidget_VERTICAL]);
    jint endMargin = [((ADXConstraintAnchor *) nil_chk(endAnchor)) getMargin];
    ADXConstraintWidget *lastVisibleWidget = ADXChainRun_getLastVisibleWidget(self);
    if (lastVisibleWidget != nil) {
      endMargin = [((ADXConstraintAnchor *) nil_chk(lastVisibleWidget->mBottom_)) getMargin];
    }
    if (endTarget != nil) {
      [self addTargetWithADXDependencyNode:end_ withADXDependencyNode:endTarget withInt:-endMargin];
    }
  }
  JreStrongAssign(&((ADXDependencyNode *) nil_chk(start_))->updateDelegate_, self);
  JreStrongAssign(&((ADXDependencyNode *) nil_chk(end_))->updateDelegate_, self);
}

- (void)dealloc {
  RELEASE_(widgets_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXConstraintWidget;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXConstraintWidget;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXConstraintWidget:withInt:);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(supportsWrapComputation);
  methods[3].selector = @selector(getWrapDimension);
  methods[4].selector = @selector(build);
  methods[5].selector = @selector(clear);
  methods[6].selector = @selector(reset);
  methods[7].selector = @selector(updateWithADXDependency:);
  methods[8].selector = @selector(applyToWidget);
  methods[9].selector = @selector(getFirstVisibleWidget);
  methods[10].selector = @selector(getLastVisibleWidget);
  methods[11].selector = @selector(apply);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "widgets_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 4, -1 },
    { "chainStyle_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXConstraintWidget;I", "toString", "update", "LADXDependency;", "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;>;" };
  static const J2ObjcClassInfo _ADXChainRun = { "ChainRun", "androidx.constraintlayout.core.widgets.analyzer", ptrTable, methods, fields, 7, 0x1, 12, 2, -1, -1, -1, -1, -1 };
  return &_ADXChainRun;
}

@end

void ADXChainRun_initWithADXConstraintWidget_withInt_(ADXChainRun *self, ADXConstraintWidget *widget, jint orientation) {
  ADXWidgetRun_initWithADXConstraintWidget_(self, widget);
  JreStrongAssignAndConsume(&self->widgets_, new_JavaUtilArrayList_init());
  self->orientation_ = orientation;
  ADXChainRun_build(self);
}

ADXChainRun *new_ADXChainRun_initWithADXConstraintWidget_withInt_(ADXConstraintWidget *widget, jint orientation) {
  J2OBJC_NEW_IMPL(ADXChainRun, initWithADXConstraintWidget_withInt_, widget, orientation)
}

ADXChainRun *create_ADXChainRun_initWithADXConstraintWidget_withInt_(ADXConstraintWidget *widget, jint orientation) {
  J2OBJC_CREATE_IMPL(ADXChainRun, initWithADXConstraintWidget_withInt_, widget, orientation)
}

void ADXChainRun_build(ADXChainRun *self) {
  ADXConstraintWidget *current = JreRetainedLocalValue(self->widget_);
  ADXConstraintWidget *previous = JreRetainedLocalValue([((ADXConstraintWidget *) nil_chk(current)) getPreviousChainMemberWithInt:self->orientation_]);
  while (previous != nil) {
    current = previous;
    previous = [current getPreviousChainMemberWithInt:self->orientation_];
  }
  JreStrongAssign(&self->widget_, current);
  [((JavaUtilArrayList *) nil_chk(self->widgets_)) addWithId:[current getRunWithInt:self->orientation_]];
  ADXConstraintWidget *next = JreRetainedLocalValue([current getNextChainMemberWithInt:self->orientation_]);
  while (next != nil) {
    current = next;
    [((JavaUtilArrayList *) nil_chk(self->widgets_)) addWithId:[current getRunWithInt:self->orientation_]];
    next = [current getNextChainMemberWithInt:self->orientation_];
  }
  for (ADXWidgetRun * __strong run in nil_chk(self->widgets_)) {
    if (self->orientation_ == ADXConstraintWidget_HORIZONTAL) {
      JreStrongAssign(&((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_))->horizontalChainRun_, self);
    }
    else if (self->orientation_ == ADXConstraintWidget_VERTICAL) {
      JreStrongAssign(&((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_))->verticalChainRun_, self);
    }
  }
  jboolean isInRtl = (self->orientation_ == ADXConstraintWidget_HORIZONTAL) && [((ADXConstraintWidgetContainer *) nil_chk(((ADXConstraintWidgetContainer *) cast_chk([((ADXConstraintWidget *) nil_chk(self->widget_)) getParent], [ADXConstraintWidgetContainer class])))) isRtl];
  if (isInRtl && [((JavaUtilArrayList *) nil_chk(self->widgets_)) size] > 1) {
    JreStrongAssign(&self->widget_, ((ADXWidgetRun *) nil_chk([((JavaUtilArrayList *) nil_chk(self->widgets_)) getWithInt:[self->widgets_ size] - 1]))->widget_);
  }
  self->chainStyle_ = self->orientation_ == ADXConstraintWidget_HORIZONTAL ? [((ADXConstraintWidget *) nil_chk(self->widget_)) getHorizontalChainStyle] : [((ADXConstraintWidget *) nil_chk(self->widget_)) getVerticalChainStyle];
}

ADXConstraintWidget *ADXChainRun_getFirstVisibleWidget(ADXChainRun *self) {
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(self->widgets_)) size]; i++) {
    ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(self->widgets_)) getWithInt:i]);
    if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] != ADXConstraintWidget_GONE) {
      return run->widget_;
    }
  }
  return nil;
}

ADXConstraintWidget *ADXChainRun_getLastVisibleWidget(ADXChainRun *self) {
  for (jint i = [((JavaUtilArrayList *) nil_chk(self->widgets_)) size] - 1; i >= 0; i--) {
    ADXWidgetRun *run = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(self->widgets_)) getWithInt:i]);
    if ([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run))->widget_)) getVisibility] != ADXConstraintWidget_GONE) {
      return run->widget_;
    }
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXChainRun)