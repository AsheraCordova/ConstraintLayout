//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSAndroidXConstraintLayoutPlugin\src\main\java\com\ashera\constraintlayout\BarrierImpl.java
//

#include "AbstractEnumToIntConverter.h"
#include "Barrier.h"
#include "BarrierImpl.h"
#include "BaseWidget.h"
#include "ConstraintReferencedIdsConverter.h"
#include "ConverterFactory.h"
#include "HasWidgets.h"
#include "IFragment.h"
#include "ILifeCycleDecorator.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "IWidget.h"
#include "IWidgetLifeCycleListener.h"
#include "J2ObjC_source.h"
#include "MeasureEvent.h"
#include "OnLayoutEvent.h"
#include "Rect.h"
#include "View.h"
#include "ViewImpl.h"
#include "ViewParent.h"
#include "WidgetAttribute.h"
#include "WidgetFactory.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"

#include "java/lang/Integer.h"
#include "java/lang/Float.h"
#include "java/lang/Boolean.h"
#include <UIKit/UIKit.h>
#include "HasLifeCycleDecorators.h"

#include "ASUIView.h"

@protocol JavaUtilList;
@protocol JavaUtilMap;


@interface ASBarrierImpl ()

- (void)setWidgetOnNativeClass;

@end

__attribute__((unused)) static void ASBarrierImpl_setWidgetOnNativeClass(ASBarrierImpl *self);

@interface ASBarrierImpl_BarrierImpl_barrierDirection () {
 @public
  id<JavaUtilMap> mapping_;
}

@end

J2OBJC_FIELD_SETTER(ASBarrierImpl_BarrierImpl_barrierDirection, mapping_, id<JavaUtilMap>)

@interface ASBarrierImpl_BarrierExt () {
 @public
  __unsafe_unretained ASBarrierImpl *this$0_;
  ASMeasureEvent *measureFinished_;
  ASOnLayoutEvent *onLayoutEvent_;
  id<JavaUtilList> overlays_;
  jint mMaxWidth_;
  jint mMaxHeight_;
  id<JavaUtilMap> templates_;
}

@end

J2OBJC_FIELD_SETTER(ASBarrierImpl_BarrierExt, measureFinished_, ASMeasureEvent *)
J2OBJC_FIELD_SETTER(ASBarrierImpl_BarrierExt, onLayoutEvent_, ASOnLayoutEvent *)
J2OBJC_FIELD_SETTER(ASBarrierImpl_BarrierExt, overlays_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ASBarrierImpl_BarrierExt, templates_, id<JavaUtilMap>)

J2OBJC_INITIALIZED_DEFN(ASBarrierImpl)

NSString *ASBarrierImpl_LOCAL_NAME = @"androidx.constraintlayout.widget.Barrier";
NSString *ASBarrierImpl_GROUP_NAME = @"androidx.constraintlayout.widget.Barrier";

@implementation ASBarrierImpl

@synthesize uiView = uiView_;

- (void)loadAttributesWithNSString:(NSString *)attributeName {
  ASViewImpl_register__WithNSString_(attributeName);
  ASConverterFactory_register__WithNSString_withASIConverter_(@"androidx.constraintlayout.widget.Barrier.BarrierImpl.barrierDirection", new_ASBarrierImpl_BarrierImpl_barrierDirection_init());
  ASWidgetFactory_registerAttributeWithNSString_withASWidgetAttribute_Builder_(localName_, [((ASWidgetAttribute_Builder *) nil_chk([new_ASWidgetAttribute_Builder_init() withNameWithNSString:@"barrierDirection"])) withTypeWithNSString:@"androidx.constraintlayout.widget.Barrier.BarrierImpl.barrierDirection"]);
  ASWidgetFactory_registerAttributeWithNSString_withASWidgetAttribute_Builder_(localName_, [((ASWidgetAttribute_Builder *) nil_chk([new_ASWidgetAttribute_Builder_init() withNameWithNSString:@"constraint_referenced_ids"])) withTypeWithNSString:@"BarrierImpl.constraintReferencedIds"]);
  ASWidgetFactory_registerAttributeWithNSString_withASWidgetAttribute_Builder_(localName_, [((ASWidgetAttribute_Builder *) nil_chk([new_ASWidgetAttribute_Builder_init() withNameWithNSString:@"barrierMargin"])) withTypeWithNSString:@"dimension"]);
  ASWidgetFactory_registerAttributeWithNSString_withASWidgetAttribute_Builder_(localName_, [((ASWidgetAttribute_Builder *) nil_chk([new_ASWidgetAttribute_Builder_init() withNameWithNSString:@"barrierAllowsGoneWidgets"])) withTypeWithNSString:@"boolean"]);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASBarrierImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)localname {
  ASBarrierImpl_initWithNSString_(self, localname);
  return self;
}

- (instancetype)initWithNSString:(NSString *)groupName
                    withNSString:(NSString *)localname {
  ASBarrierImpl_initWithNSString_withNSString_(self, groupName, localname);
  return self;
}

- (IOSClass *)getViewClass {
  return ASBarrierImpl_BarrierExt_class_();
}

- (id<ASIWidget>)newInstance {
  return new_ASBarrierImpl_initWithNSString_withNSString_(groupName_, localName_);
}

- (void)createWithASIFragment:(id<ASIFragment>)fragment
              withJavaUtilMap:(id<JavaUtilMap>)params {
  [super createWithASIFragment:fragment withJavaUtilMap:params];
  barrier_ = new_ASBarrierImpl_BarrierExt_initWithASBarrierImpl_(self);
  [self nativeCreateWithJavaUtilMap:params];
  ASViewImpl_registerCommandConveterWithASIWidget_(self);
  ASBarrierImpl_setWidgetOnNativeClass(self);
}

- (void)setWidgetOnNativeClass {
  ASBarrierImpl_setWidgetOnNativeClass(self);
}

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue
                withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator {
  id nativeWidget = [self asNativeWidget];
  ASViewImpl_setAttributeWithASIWidget_withASWidgetAttribute_withNSString_withId_withASILifeCycleDecorator_(self, key, strValue, objValue, decorator);
  switch (JreIndexOfStr([((ASWidgetAttribute *) nil_chk(key)) getAttributeName], (id[]){ @"barrierDirection", @"constraint_referenced_ids", @"barrierMargin", @"barrierAllowsGoneWidgets" }, 4)) {
    case 0:
    {
      [((ADXBarrier *) nil_chk(barrier_)) setTypeWithInt:[((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(objValue, [JavaLangInteger class]))) intValue]];
    }
    break;
    case 1:
    {
      [((ADXBarrier *) nil_chk(barrier_)) setReferencedIdsWithIntArray:(IOSIntArray *) cast_chk(objValue, [IOSIntArray class])];
    }
    break;
    case 2:
    {
      [((ADXBarrier *) nil_chk(barrier_)) setMarginWithInt:[((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(objValue, [JavaLangInteger class]))) intValue]];
    }
    break;
    case 3:
    {
      [((ADXBarrier *) nil_chk(barrier_)) setAllowsGoneWidgetWithBoolean:[((JavaLangBoolean *) nil_chk((JavaLangBoolean *) cast_chk(objValue, [JavaLangBoolean class]))) booleanValue]];
    }
    break;
    default:
    break;
  }
}

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
              withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator {
  id nativeWidget = [self asNativeWidget];
  id attributeValue = ASViewImpl_getAttributeWithASIWidget_withId_withASWidgetAttribute_withASILifeCycleDecorator_(self, nativeWidget, key, decorator);
  if (attributeValue != nil) {
    return attributeValue;
  }
  switch (JreIndexOfStr([((ASWidgetAttribute *) nil_chk(key)) getAttributeName], (id[]){ @"barrierDirection", @"constraint_referenced_ids", @"barrierMargin", @"barrierAllowsGoneWidgets" }, 4)) {
    case 0:
    {
      return JavaLangInteger_valueOfWithInt_([((ADXBarrier *) nil_chk(barrier_)) getType]);
    }
    case 1:
    {
      return [((ADXBarrier *) nil_chk(barrier_)) getReferencedIds];
    }
    case 2:
    {
      return JavaLangInteger_valueOfWithInt_([((ADXBarrier *) nil_chk(barrier_)) getMargin]);
    }
    case 3:
    {
      return JavaLangBoolean_valueOfWithBoolean_([((ADXBarrier *) nil_chk(barrier_)) getAllowsGoneWidget]);
    }
  }
  return nil;
}

- (id)asWidget {
  return barrier_;
}

- (id)asNativeWidget {
  return uiView_;
}

- (jboolean)checkIosVersionWithNSString:(NSString *)v {
  return ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending);
}

- (void)setIdWithNSString:(NSString *)id_ {
  if (id_ != nil && ![id_ isEqual:@""]) {
    [super setIdWithNSString:id_];
    [((ADXBarrier *) nil_chk(barrier_)) setIdWithInt:[((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk([self quickConvertWithId:id_ withNSString:@"id"], [JavaLangInteger class]))) intValue]];
  }
}

- (void)setVisibleWithBoolean:(jboolean)b {
  [((ADView *) nil_chk(((ADView *) cast_chk([self asWidget], [ADView class])))) setVisibilityWithInt:b ? ADView_VISIBLE : ADView_GONE];
}

- (void)requestLayout {
  if ([self isInitialised]) {
    ASViewImpl_requestLayoutWithASIWidget_withId_(self, [self asNativeWidget]);
    [self nativeRequestLayout];
  }
}

- (void)invalidate {
  if ([self isInitialised]) {
    ASViewImpl_invalidateWithASIWidget_withId_(self, [self asNativeWidget]);
  }
}

- (void)nativeCreateWithJavaUtilMap:(id<JavaUtilMap>)params {
  ASUIView* uiView = [ASUIView new];
  uiView.backgroundColor = [UIColor clearColor];
  uiView_ = uiView;
}

- (void)initialized {
  [super initialized];
  [((ADXBarrier *) nil_chk(barrier_)) validateParams];
}

- (void)nativeRequestLayout {
  [((id<ADViewParent>) nil_chk([((ADXBarrier *) nil_chk(barrier_)) getParent])) requestLayout];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASIWidget;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, 5, -1, -1 },
    { NULL, "V", 0x102, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x101, 10, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x101, 14, 15, -1, 16, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(loadAttributesWithNSString:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithNSString:);
  methods[3].selector = @selector(initWithNSString:withNSString:);
  methods[4].selector = @selector(getViewClass);
  methods[5].selector = @selector(newInstance);
  methods[6].selector = @selector(createWithASIFragment:withJavaUtilMap:);
  methods[7].selector = @selector(setWidgetOnNativeClass);
  methods[8].selector = @selector(setAttributeWithASWidgetAttribute:withNSString:withId:withASILifeCycleDecorator:);
  methods[9].selector = @selector(getAttributeWithASWidgetAttribute:withASILifeCycleDecorator:);
  methods[10].selector = @selector(asWidget);
  methods[11].selector = @selector(asNativeWidget);
  methods[12].selector = @selector(checkIosVersionWithNSString:);
  methods[13].selector = @selector(setIdWithNSString:);
  methods[14].selector = @selector(setVisibleWithBoolean:);
  methods[15].selector = @selector(requestLayout);
  methods[16].selector = @selector(invalidate);
  methods[17].selector = @selector(nativeCreateWithJavaUtilMap:);
  methods[18].selector = @selector(initialized);
  methods[19].selector = @selector(nativeRequestLayout);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOCAL_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "GROUP_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "uiView_", "LNSObject;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "barrier_", "LADXBarrier;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "loadAttributes", "LNSString;", "LNSString;LNSString;", "create", "LASIFragment;LJavaUtilMap;", "(Lcom/ashera/core/IFragment;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V", "setAttribute", "LASWidgetAttribute;LNSString;LNSObject;LASILifeCycleDecorator;", "getAttribute", "LASWidgetAttribute;LASILifeCycleDecorator;", "checkIosVersion", "setId", "setVisible", "Z", "nativeCreate", "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V", &ASBarrierImpl_LOCAL_NAME, &ASBarrierImpl_GROUP_NAME, "LASBarrierImpl_BarrierImpl_barrierDirection;LASBarrierImpl_BarrierExt;" };
  static const J2ObjcClassInfo _ASBarrierImpl = { "BarrierImpl", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 20, 4, -1, 19, -1, -1, -1 };
  return &_ASBarrierImpl;
}

+ (void)initialize {
  if (self == [ASBarrierImpl class]) {
    {
      ASConverterFactory_register__WithNSString_withASIConverter_(@"BarrierImpl.constraintReferencedIds", new_ASConstraintReferencedIdsConverter_init());
    }
    J2OBJC_SET_INITIALIZED(ASBarrierImpl)
  }
}

@end

void ASBarrierImpl_init(ASBarrierImpl *self) {
  ASBaseWidget_initWithNSString_withNSString_(self, ASBarrierImpl_GROUP_NAME, ASBarrierImpl_LOCAL_NAME);
}

ASBarrierImpl *new_ASBarrierImpl_init() {
  J2OBJC_NEW_IMPL(ASBarrierImpl, init)
}

ASBarrierImpl *create_ASBarrierImpl_init() {
  J2OBJC_CREATE_IMPL(ASBarrierImpl, init)
}

void ASBarrierImpl_initWithNSString_(ASBarrierImpl *self, NSString *localname) {
  ASBaseWidget_initWithNSString_withNSString_(self, ASBarrierImpl_GROUP_NAME, localname);
}

ASBarrierImpl *new_ASBarrierImpl_initWithNSString_(NSString *localname) {
  J2OBJC_NEW_IMPL(ASBarrierImpl, initWithNSString_, localname)
}

ASBarrierImpl *create_ASBarrierImpl_initWithNSString_(NSString *localname) {
  J2OBJC_CREATE_IMPL(ASBarrierImpl, initWithNSString_, localname)
}

void ASBarrierImpl_initWithNSString_withNSString_(ASBarrierImpl *self, NSString *groupName, NSString *localname) {
  ASBaseWidget_initWithNSString_withNSString_(self, groupName, localname);
}

ASBarrierImpl *new_ASBarrierImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) {
  J2OBJC_NEW_IMPL(ASBarrierImpl, initWithNSString_withNSString_, groupName, localname)
}

ASBarrierImpl *create_ASBarrierImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) {
  J2OBJC_CREATE_IMPL(ASBarrierImpl, initWithNSString_withNSString_, groupName, localname)
}

void ASBarrierImpl_setWidgetOnNativeClass(ASBarrierImpl *self) {
  ((ASUIView*) self.uiView).widget = self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASBarrierImpl)

@implementation ASBarrierImpl_BarrierImpl_barrierDirection

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASBarrierImpl_BarrierImpl_barrierDirection_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaUtilMap>)getMapping {
  return mapping_;
}

- (JavaLangInteger *)getDefault {
  return JavaLangInteger_valueOfWithInt_(0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getMapping);
  methods[2].selector = @selector(getDefault);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mapping_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 1, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;", "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;", "LASBarrierImpl;" };
  static const J2ObjcClassInfo _ASBarrierImpl_BarrierImpl_barrierDirection = { "BarrierImpl_barrierDirection", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x18, 3, 1, 2, -1, -1, -1, -1 };
  return &_ASBarrierImpl_BarrierImpl_barrierDirection;
}

@end

void ASBarrierImpl_BarrierImpl_barrierDirection_init(ASBarrierImpl_BarrierImpl_barrierDirection *self) {
  ASAbstractEnumToIntConverter_init(self);
  self->mapping_ = new_JavaUtilHashMap_init();
  {
    (void) [self->mapping_ putWithId:@"start" withId:JavaLangInteger_valueOfWithInt_((jint) 0x5)];
    (void) [((id<JavaUtilMap>) nil_chk(self->mapping_)) putWithId:@"end" withId:JavaLangInteger_valueOfWithInt_((jint) 0x6)];
    (void) [((id<JavaUtilMap>) nil_chk(self->mapping_)) putWithId:@"left" withId:JavaLangInteger_valueOfWithInt_((jint) 0x0)];
    (void) [((id<JavaUtilMap>) nil_chk(self->mapping_)) putWithId:@"right" withId:JavaLangInteger_valueOfWithInt_((jint) 0x1)];
    (void) [((id<JavaUtilMap>) nil_chk(self->mapping_)) putWithId:@"top" withId:JavaLangInteger_valueOfWithInt_((jint) 0x2)];
    (void) [((id<JavaUtilMap>) nil_chk(self->mapping_)) putWithId:@"bottom" withId:JavaLangInteger_valueOfWithInt_((jint) 0x3)];
  }
}

ASBarrierImpl_BarrierImpl_barrierDirection *new_ASBarrierImpl_BarrierImpl_barrierDirection_init() {
  J2OBJC_NEW_IMPL(ASBarrierImpl_BarrierImpl_barrierDirection, init)
}

ASBarrierImpl_BarrierImpl_barrierDirection *create_ASBarrierImpl_BarrierImpl_barrierDirection_init() {
  J2OBJC_CREATE_IMPL(ASBarrierImpl_BarrierImpl_barrierDirection, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASBarrierImpl_BarrierImpl_barrierDirection)

@implementation ASBarrierImpl_BarrierExt

- (id<ASIWidget>)getWidget {
  return this$0_;
}

- (void)setMaxWidthWithInt:(jint)width {
  mMaxWidth_ = width;
}

- (void)setMaxHeightWithInt:(jint)height {
  mMaxHeight_ = height;
}

- (jint)getMaxWidth {
  return mMaxWidth_;
}

- (jint)getMaxHeight {
  return mMaxHeight_;
}

- (instancetype)initWithASBarrierImpl:(ASBarrierImpl *)outer$ {
  ASBarrierImpl_BarrierExt_initWithASBarrierImpl_(self, outer$);
  return self;
}

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec {
  if (mMaxWidth_ > 0) {
    widthMeasureSpec = ADView_MeasureSpec_makeMeasureSpecWithInt_withInt_(mMaxWidth_, ADView_MeasureSpec_AT_MOST);
  }
  if (mMaxHeight_ > 0) {
    heightMeasureSpec = ADView_MeasureSpec_makeMeasureSpecWithInt_withInt_(mMaxHeight_, ADView_MeasureSpec_AT_MOST);
  }
  [super onMeasureWithInt:widthMeasureSpec withInt:heightMeasureSpec];
  id<ASIWidgetLifeCycleListener> listener = [this$0_ getListener];
  if (listener != nil) {
    [((ASMeasureEvent *) nil_chk(measureFinished_)) setWidthWithInt:[self getMeasuredWidth]];
    [((ASMeasureEvent *) nil_chk(measureFinished_)) setHeightWithInt:[self getMeasuredHeight]];
    [listener eventOccurredWithASIWidgetLifeCycleListener_EventId:JreLoadEnum(ASIWidgetLifeCycleListener_EventId, measureFinished) withASWidgetEvent:measureFinished_];
  }
}

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)l
                    withInt:(jint)t
                    withInt:(jint)r
                    withInt:(jint)b {
  [super onLayoutWithBoolean:changed withInt:l withInt:t withInt:r withInt:b];
  ASViewImpl_setDrawableBoundsWithASIWidget_withInt_withInt_withInt_withInt_(this$0_, l, t, r, b);
  if (![self isOverlay]) {
    ASViewImpl_nativeMakeFrameWithId_withInt_withInt_withInt_withInt_([this$0_ asNativeWidget], l, t, r, b);
  }
  [this$0_ replayBufferedEvents];
  ASViewImpl_redrawDrawablesWithASIWidget_(this$0_);
  overlays_ = ASViewImpl_drawOverlayWithASIWidget_withJavaUtilList_(this$0_, overlays_);
  id<ASIWidgetLifeCycleListener> listener = [this$0_ getListener];
  if (listener != nil) {
    [((ASOnLayoutEvent *) nil_chk(onLayoutEvent_)) setBWithInt:b];
    [((ASOnLayoutEvent *) nil_chk(onLayoutEvent_)) setLWithInt:l];
    [((ASOnLayoutEvent *) nil_chk(onLayoutEvent_)) setRWithInt:r];
    [((ASOnLayoutEvent *) nil_chk(onLayoutEvent_)) setTWithInt:t];
    [((ASOnLayoutEvent *) nil_chk(onLayoutEvent_)) setChangedWithBoolean:changed];
    [listener eventOccurredWithASIWidgetLifeCycleListener_EventId:JreLoadEnum(ASIWidgetLifeCycleListener_EventId, onLayout) withASWidgetEvent:onLayoutEvent_];
  }
  if ([this$0_ isInvalidateOnFrameChange] && [this$0_ isInitialised]) {
    [this$0_ invalidate];
  }
}

- (void)executeWithNSString:(NSString *)method
          withNSObjectArray:(IOSObjectArray *)canvas {
}

- (void)updateMeasuredDimensionWithInt:(jint)width
                               withInt:(jint)height {
  [self setMeasuredDimensionWithInt:width withInt:height];
}

- (id<ASILifeCycleDecorator>)newInstanceWithASIWidget:(id<ASIWidget>)widget {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (id<JavaUtilList>)getMethods {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (void)initialized {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (void)drawableStateChanged {
  [super drawableStateChanged];
  if (![this$0_ isWidgetDisposed]) {
    ASViewImpl_drawableStateChangedWithASIWidget_(this$0_);
  }
}

- (ADView *)inflateViewWithNSString:(NSString *)layout {
  if (templates_ == nil) {
    templates_ = new_JavaUtilHashMap_init();
  }
  id<ASIWidget> template_ = [templates_ getWithId:layout];
  if (template_ == nil) {
    template_ = (id<ASIWidget>) cast_check([this$0_ quickConvertWithId:layout withNSString:@"template"], ASIWidget_class_());
    (void) [((id<JavaUtilMap>) nil_chk(templates_)) putWithId:layout withId:template_];
  }
  id<ASIWidget> widget = [((id<ASIWidget>) nil_chk(template_)) loadLazyWidgetsWithASHasWidgets:[this$0_ getParent]];
  return (ADView *) cast_chk([((id<ASIWidget>) nil_chk(widget)) asWidget], [ADView class]);
}

- (void)remeasure {
  if ([this$0_ getFragment] != nil) {
    [((id<ASIFragment>) nil_chk([this$0_ getFragment])) remeasure];
  }
}

- (void)removeFromParent {
  [((id<ASHasWidgets>) nil_chk([this$0_ getParent])) removeWithASIWidget:this$0_];
}

- (void)getLocationOnScreenWithIntArray:(IOSIntArray *)appScreenLocation {
  *IOSIntArray_GetRef(nil_chk(appScreenLocation), 0) = ASViewImpl_getLocationXOnScreenWithId_([this$0_ asNativeWidget]);
  *IOSIntArray_GetRef(appScreenLocation, 1) = ASViewImpl_getLocationYOnScreenWithId_([this$0_ asNativeWidget]);
}

- (void)getWindowVisibleDisplayFrameWithADRect:(ADRect *)displayFrame {
  ((ADRect *) nil_chk(displayFrame))->left_ = ASViewImpl_getLocationXOnScreenWithId_([this$0_ asNativeWidget]);
  displayFrame->top_ = ASViewImpl_getLocationYOnScreenWithId_([this$0_ asNativeWidget]);
  displayFrame->right_ = displayFrame->left_ + [self getWidth];
  displayFrame->bottom_ = displayFrame->top_ + [self getHeight];
}

- (void)offsetTopAndBottomWithInt:(jint)offset {
  [super offsetTopAndBottomWithInt:offset];
  ASViewImpl_nativeMakeFrameWithId_withInt_withInt_withInt_withInt_([this$0_ asNativeWidget], [self getLeft], [self getTop], [self getRight], [self getBottom]);
}

- (void)offsetLeftAndRightWithInt:(jint)offset {
  [super offsetLeftAndRightWithInt:offset];
  ASViewImpl_nativeMakeFrameWithId_withInt_withInt_withInt_withInt_([this$0_ asNativeWidget], [self getLeft], [self getTop], [self getRight], [self getBottom]);
}

- (void)setMyAttributeWithNSString:(NSString *)name
                            withId:(id)value {
  if ([((NSString *) nil_chk(name)) isEqual:@"state0"]) {
    [self setState0WithId:value];
    return;
  }
  if ([name isEqual:@"state1"]) {
    [self setState1WithId:value];
    return;
  }
  if ([name isEqual:@"state2"]) {
    [self setState2WithId:value];
    return;
  }
  if ([name isEqual:@"state3"]) {
    [self setState3WithId:value];
    return;
  }
  if ([name isEqual:@"state4"]) {
    [self setState4WithId:value];
    return;
  }
  [this$0_ setAttributeWithNSString:name withId:value withBoolean:!([value isKindOfClass:[NSString class]])];
}

- (void)setVisibilityWithInt:(jint)visibility {
  [super setVisibilityWithInt:visibility];
  ASViewImpl_nativeSetVisibilityWithId_withBoolean_([this$0_ asNativeWidget], visibility != ADView_VISIBLE);
}

- (void)setState0WithId:(id)value {
  ASViewImpl_setStateWithASIWidget_withInt_withId_(this$0_, 0, value);
}

- (void)setState1WithId:(id)value {
  ASViewImpl_setStateWithASIWidget_withInt_withId_(this$0_, 1, value);
}

- (void)setState2WithId:(id)value {
  ASViewImpl_setStateWithASIWidget_withInt_withId_(this$0_, 2, value);
}

- (void)setState3WithId:(id)value {
  ASViewImpl_setStateWithASIWidget_withInt_withId_(this$0_, 3, value);
}

- (void)setState4WithId:(id)value {
  ASViewImpl_setStateWithASIWidget_withInt_withId_(this$0_, 4, value);
}

- (void)state0 {
  ASViewImpl_stateWithASIWidget_withInt_(this$0_, 0);
}

- (void)state1 {
  ASViewImpl_stateWithASIWidget_withInt_(this$0_, 1);
}

- (void)state2 {
  ASViewImpl_stateWithASIWidget_withInt_(this$0_, 2);
}

- (void)state3 {
  ASViewImpl_stateWithASIWidget_withInt_(this$0_, 3);
}

- (void)state4 {
  ASViewImpl_stateWithASIWidget_withInt_(this$0_, 4);
}

- (void)stateYes {
  ASViewImpl_stateYesWithASIWidget_(this$0_);
}

- (void)stateNo {
  ASViewImpl_stateNoWithASIWidget_(this$0_);
}

- (void)__javaClone:(ASBarrierImpl_BarrierExt *)original {
  [super __javaClone:original];
  JreRelease(this$0_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LASIWidget;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 5, -1, -1, -1, -1 },
    { NULL, "LASILifeCycleDecorator;", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 15, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADView;", 0x1, 18, 19, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 20, 21, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 22, 23, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 24, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 25, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 26, 27, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 28, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 29, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 32, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 33, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 34, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getWidget);
  methods[1].selector = @selector(setMaxWidthWithInt:);
  methods[2].selector = @selector(setMaxHeightWithInt:);
  methods[3].selector = @selector(getMaxWidth);
  methods[4].selector = @selector(getMaxHeight);
  methods[5].selector = @selector(initWithASBarrierImpl:);
  methods[6].selector = @selector(onMeasureWithInt:withInt:);
  methods[7].selector = @selector(onLayoutWithBoolean:withInt:withInt:withInt:withInt:);
  methods[8].selector = @selector(executeWithNSString:withNSObjectArray:);
  methods[9].selector = @selector(updateMeasuredDimensionWithInt:withInt:);
  methods[10].selector = @selector(newInstanceWithASIWidget:);
  methods[11].selector = @selector(setAttributeWithASWidgetAttribute:withNSString:withId:);
  methods[12].selector = @selector(getMethods);
  methods[13].selector = @selector(initialized);
  methods[14].selector = @selector(getAttributeWithASWidgetAttribute:);
  methods[15].selector = @selector(drawableStateChanged);
  methods[16].selector = @selector(inflateViewWithNSString:);
  methods[17].selector = @selector(remeasure);
  methods[18].selector = @selector(removeFromParent);
  methods[19].selector = @selector(getLocationOnScreenWithIntArray:);
  methods[20].selector = @selector(getWindowVisibleDisplayFrameWithADRect:);
  methods[21].selector = @selector(offsetTopAndBottomWithInt:);
  methods[22].selector = @selector(offsetLeftAndRightWithInt:);
  methods[23].selector = @selector(setMyAttributeWithNSString:withId:);
  methods[24].selector = @selector(setVisibilityWithInt:);
  methods[25].selector = @selector(setState0WithId:);
  methods[26].selector = @selector(setState1WithId:);
  methods[27].selector = @selector(setState2WithId:);
  methods[28].selector = @selector(setState3WithId:);
  methods[29].selector = @selector(setState4WithId:);
  methods[30].selector = @selector(state0);
  methods[31].selector = @selector(state1);
  methods[32].selector = @selector(state2);
  methods[33].selector = @selector(state3);
  methods[34].selector = @selector(state4);
  methods[35].selector = @selector(stateYes);
  methods[36].selector = @selector(stateNo);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LASBarrierImpl;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "measureFinished_", "LASMeasureEvent;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "onLayoutEvent_", "LASOnLayoutEvent;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "overlays_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 35, -1 },
    { "mMaxWidth_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaxHeight_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "templates_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 36, -1 },
  };
  static const void *ptrTable[] = { "setMaxWidth", "I", "setMaxHeight", "LASBarrierImpl;", "onMeasure", "II", "onLayout", "ZIIII", "execute", "LNSString;[LNSObject;", "updateMeasuredDimension", "newInstance", "LASIWidget;", "setAttribute", "LASWidgetAttribute;LNSString;LNSObject;", "()Ljava/util/List<Ljava/lang/String;>;", "getAttribute", "LASWidgetAttribute;", "inflateView", "LNSString;", "getLocationOnScreen", "[I", "getWindowVisibleDisplayFrame", "LADRect;", "offsetTopAndBottom", "offsetLeftAndRight", "setMyAttribute", "LNSString;LNSObject;", "setVisibility", "setState0", "LNSObject;", "setState1", "setState2", "setState3", "setState4", "Ljava/util/List<Lcom/ashera/widget/IWidget;>;", "Ljava/util/Map<Ljava/lang/String;Lcom/ashera/widget/IWidget;>;" };
  static const J2ObjcClassInfo _ASBarrierImpl_BarrierExt = { "BarrierExt", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 37, 7, 3, -1, -1, -1, -1 };
  return &_ASBarrierImpl_BarrierExt;
}

@end

void ASBarrierImpl_BarrierExt_initWithASBarrierImpl_(ASBarrierImpl_BarrierExt *self, ASBarrierImpl *outer$) {
  self->this$0_ = outer$;
  ADXBarrier_init(self);
  self->measureFinished_ = new_ASMeasureEvent_init();
  self->onLayoutEvent_ = new_ASOnLayoutEvent_init();
  self->mMaxWidth_ = -1;
  self->mMaxHeight_ = -1;
}

ASBarrierImpl_BarrierExt *new_ASBarrierImpl_BarrierExt_initWithASBarrierImpl_(ASBarrierImpl *outer$) {
  J2OBJC_NEW_IMPL(ASBarrierImpl_BarrierExt, initWithASBarrierImpl_, outer$)
}

ASBarrierImpl_BarrierExt *create_ASBarrierImpl_BarrierExt_initWithASBarrierImpl_(ASBarrierImpl *outer$) {
  J2OBJC_CREATE_IMPL(ASBarrierImpl_BarrierExt, initWithASBarrierImpl_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASBarrierImpl_BarrierExt)
