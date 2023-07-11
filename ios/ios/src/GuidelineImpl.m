//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSAndroidXConstraintLayoutPlugin\src\main\java\com\ashera\constraintlayout\GuidelineImpl.java
//

#include "AbstractEnumToIntConverter.h"
#include "BaseWidget.h"
#include "ConstraintLayout.h"
#include "ConverterFactory.h"
#include "Guideline.h"
#include "GuidelineImpl.h"
#include "HasWidgets.h"
#include "IAttributable.h"
#include "IFragment.h"
#include "ILifeCycleDecorator.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "IWidget.h"
#include "IWidgetLifeCycleListener.h"
#include "IdGenerator.h"
#include "J2ObjC_source.h"
#include "MeasureEvent.h"
#include "OnLayoutEvent.h"
#include "Rect.h"
#include "View.h"
#include "ViewGroup.h"
#include "ViewImpl.h"
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

@protocol JavaUtilMap;


#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ASGuidelineImpl () {
 @public
  ASGuidelineImpl_GuidelineCommandBuilder *builder_;
  ASGuidelineImpl_GuidelineBean *bean_;
}

- (void)setWidgetOnNativeClass;

- (void)setOrientationWithId:(id)objValue;

- (id)getOrientation;

@end

J2OBJC_FIELD_SETTER(ASGuidelineImpl, builder_, ASGuidelineImpl_GuidelineCommandBuilder *)
J2OBJC_FIELD_SETTER(ASGuidelineImpl, bean_, ASGuidelineImpl_GuidelineBean *)

__attribute__((unused)) static void ASGuidelineImpl_setWidgetOnNativeClass(ASGuidelineImpl *self);

__attribute__((unused)) static void ASGuidelineImpl_setOrientationWithId_(ASGuidelineImpl *self, id objValue);

__attribute__((unused)) static id ASGuidelineImpl_getOrientation(ASGuidelineImpl *self);

@interface ASGuidelineImpl_Orientation () {
 @public
  id<JavaUtilMap> mapping_;
}

@end

J2OBJC_FIELD_SETTER(ASGuidelineImpl_Orientation, mapping_, id<JavaUtilMap>)

@interface ASGuidelineImpl_GuidelineExt () {
 @public
  __unsafe_unretained ASGuidelineImpl *this$0_;
  ASMeasureEvent *measureFinished_;
  ASOnLayoutEvent *onLayoutEvent_;
  jint mMaxWidth_;
  jint mMaxHeight_;
  id<JavaUtilMap> templates_;
}

@end

J2OBJC_FIELD_SETTER(ASGuidelineImpl_GuidelineExt, measureFinished_, ASMeasureEvent *)
J2OBJC_FIELD_SETTER(ASGuidelineImpl_GuidelineExt, onLayoutEvent_, ASOnLayoutEvent *)
J2OBJC_FIELD_SETTER(ASGuidelineImpl_GuidelineExt, templates_, id<JavaUtilMap>)

@interface ASGuidelineImpl_GuidelineCommandBuilder () {
 @public
  ASGuidelineImpl *this$0_;
}

@end

@interface ASGuidelineImpl_GuidelineBean () {
 @public
  ASGuidelineImpl *this$0_;
}

@end

NSString *ASGuidelineImpl_LOCAL_NAME = @"androidx.constraintlayout.widget.Guideline";
NSString *ASGuidelineImpl_GROUP_NAME = @"androidx.constraintlayout.widget.Guideline";

@implementation ASGuidelineImpl

@synthesize uiView = uiView_;

- (void)loadAttributesWithNSString:(NSString *)attributeName {
  ASViewImpl_register__WithNSString_(attributeName);
  ASConverterFactory_register__WithNSString_withASIConverter_(@"androidx.constraintlayout.widget.Guideline.orientation", new_ASGuidelineImpl_Orientation_init());
  ASWidgetFactory_registerAttributeWithNSString_withASWidgetAttribute_Builder_(localName_, [((ASWidgetAttribute_Builder *) nil_chk([new_ASWidgetAttribute_Builder_init() withNameWithNSString:@"orientation"])) withTypeWithNSString:@"androidx.constraintlayout.widget.Guideline.orientation"]);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASGuidelineImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)localname {
  ASGuidelineImpl_initWithNSString_(self, localname);
  return self;
}

- (instancetype)initWithNSString:(NSString *)groupName
                    withNSString:(NSString *)localname {
  ASGuidelineImpl_initWithNSString_withNSString_(self, groupName, localname);
  return self;
}

- (IOSClass *)getViewClass {
  return ASGuidelineImpl_GuidelineExt_class_();
}

- (id<ASIWidget>)newInstance {
  return new_ASGuidelineImpl_initWithNSString_withNSString_(groupName_, localName_);
}

- (void)createWithASIFragment:(id<ASIFragment>)fragment
              withJavaUtilMap:(id<JavaUtilMap>)params {
  [super createWithASIFragment:fragment withJavaUtilMap:params];
  guideline_ = new_ASGuidelineImpl_GuidelineExt_initWithASGuidelineImpl_(self);
  [self nativeCreateWithJavaUtilMap:params];
  ASViewImpl_registerCommandConveterWithASIWidget_(self);
  ASGuidelineImpl_setWidgetOnNativeClass(self);
}

- (void)setWidgetOnNativeClass {
  ASGuidelineImpl_setWidgetOnNativeClass(self);
}

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue
                withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator {
  id nativeWidget = [self asNativeWidget];
  ASViewImpl_setAttributeWithASIWidget_withASWidgetAttribute_withNSString_withId_withASILifeCycleDecorator_(self, key, strValue, objValue, decorator);
  switch (JreIndexOfStr([((ASWidgetAttribute *) nil_chk(key)) getAttributeName], (id[]){ @"orientation" }, 1)) {
    case 0:
    {
      ASGuidelineImpl_setOrientationWithId_(self, objValue);
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
  switch (JreIndexOfStr([((ASWidgetAttribute *) nil_chk(key)) getAttributeName], (id[]){ @"orientation" }, 1)) {
    case 0:
    {
      return ASGuidelineImpl_getOrientation(self);
    }
  }
  return nil;
}

- (id)asWidget {
  return guideline_;
}

- (void)setOrientationWithId:(id)objValue {
  ASGuidelineImpl_setOrientationWithId_(self, objValue);
}

- (id)getOrientation {
  return ASGuidelineImpl_getOrientation(self);
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
    [((ADXGuideline *) nil_chk(guideline_)) setIdWithInt:ASIdGenerator_getIdWithNSString_(id_)];
  }
}

- (void)setVisibleWithBoolean:(jboolean)b {
  [((ADView *) nil_chk(((ADView *) cast_chk([self asWidget], [ADView class])))) setVisibilityWithInt:b ? ADView_VISIBLE : ADView_GONE];
}

- (void)requestLayout {
  if ([self isInitialised]) {
    ASViewImpl_requestLayoutWithASIWidget_withId_(self, [self asNativeWidget]);
  }
}

- (void)invalidate {
  if ([self isInitialised]) {
    ASViewImpl_invalidateWithASIWidget_withId_(self, [self asNativeWidget]);
  }
}

- (id)getPluginWithNSString:(NSString *)plugin {
  return [((id<ASIAttributable>) nil_chk(ASWidgetFactory_getAttributableWithNSString_(plugin))) newInstanceWithASIWidget:self];
}

- (ASGuidelineImpl_GuidelineBean *)getBean {
  if (bean_ == nil) {
    bean_ = new_ASGuidelineImpl_GuidelineBean_initWithASGuidelineImpl_(self);
  }
  return bean_;
}

- (ASGuidelineImpl_GuidelineCommandBuilder *)getBuilder {
  if (builder_ == nil) {
    builder_ = new_ASGuidelineImpl_GuidelineCommandBuilder_initWithASGuidelineImpl_(self);
  }
  return builder_;
}

- (void)nativeCreateWithJavaUtilMap:(id<JavaUtilMap>)params {
  ASUIView* uiView = [ASUIView new];
  uiView.backgroundColor = [UIColor clearColor];
  uiView_ = uiView;
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
    { NULL, "V", 0x2, 10, 11, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x101, 12, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 16, 1, -1, -1, -1, -1 },
    { NULL, "LASGuidelineImpl_GuidelineBean;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASGuidelineImpl_GuidelineCommandBuilder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x101, 17, 18, -1, 19, -1, -1 },
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
  methods[11].selector = @selector(setOrientationWithId:);
  methods[12].selector = @selector(getOrientation);
  methods[13].selector = @selector(asNativeWidget);
  methods[14].selector = @selector(checkIosVersionWithNSString:);
  methods[15].selector = @selector(setIdWithNSString:);
  methods[16].selector = @selector(setVisibleWithBoolean:);
  methods[17].selector = @selector(requestLayout);
  methods[18].selector = @selector(invalidate);
  methods[19].selector = @selector(getPluginWithNSString:);
  methods[20].selector = @selector(getBean);
  methods[21].selector = @selector(getBuilder);
  methods[22].selector = @selector(nativeCreateWithJavaUtilMap:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOCAL_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "GROUP_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "uiView_", "LNSObject;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "guideline_", "LADXGuideline;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "builder_", "LASGuidelineImpl_GuidelineCommandBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bean_", "LASGuidelineImpl_GuidelineBean;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "loadAttributes", "LNSString;", "LNSString;LNSString;", "create", "LASIFragment;LJavaUtilMap;", "(Lcom/ashera/core/IFragment;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V", "setAttribute", "LASWidgetAttribute;LNSString;LNSObject;LASILifeCycleDecorator;", "getAttribute", "LASWidgetAttribute;LASILifeCycleDecorator;", "setOrientation", "LNSObject;", "checkIosVersion", "setId", "setVisible", "Z", "getPlugin", "nativeCreate", "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V", &ASGuidelineImpl_LOCAL_NAME, &ASGuidelineImpl_GROUP_NAME, "LASGuidelineImpl_Orientation;LASGuidelineImpl_GuidelineExt;LASGuidelineImpl_GuidelineCommandBuilder;LASGuidelineImpl_GuidelineBean;" };
  static const J2ObjcClassInfo _ASGuidelineImpl = { "GuidelineImpl", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 23, 6, -1, 22, -1, -1, -1 };
  return &_ASGuidelineImpl;
}

@end

void ASGuidelineImpl_init(ASGuidelineImpl *self) {
  ASBaseWidget_initWithNSString_withNSString_(self, ASGuidelineImpl_GROUP_NAME, ASGuidelineImpl_LOCAL_NAME);
}

ASGuidelineImpl *new_ASGuidelineImpl_init() {
  J2OBJC_NEW_IMPL(ASGuidelineImpl, init)
}

ASGuidelineImpl *create_ASGuidelineImpl_init() {
  J2OBJC_CREATE_IMPL(ASGuidelineImpl, init)
}

void ASGuidelineImpl_initWithNSString_(ASGuidelineImpl *self, NSString *localname) {
  ASBaseWidget_initWithNSString_withNSString_(self, ASGuidelineImpl_GROUP_NAME, localname);
}

ASGuidelineImpl *new_ASGuidelineImpl_initWithNSString_(NSString *localname) {
  J2OBJC_NEW_IMPL(ASGuidelineImpl, initWithNSString_, localname)
}

ASGuidelineImpl *create_ASGuidelineImpl_initWithNSString_(NSString *localname) {
  J2OBJC_CREATE_IMPL(ASGuidelineImpl, initWithNSString_, localname)
}

void ASGuidelineImpl_initWithNSString_withNSString_(ASGuidelineImpl *self, NSString *groupName, NSString *localname) {
  ASBaseWidget_initWithNSString_withNSString_(self, groupName, localname);
}

ASGuidelineImpl *new_ASGuidelineImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) {
  J2OBJC_NEW_IMPL(ASGuidelineImpl, initWithNSString_withNSString_, groupName, localname)
}

ASGuidelineImpl *create_ASGuidelineImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) {
  J2OBJC_CREATE_IMPL(ASGuidelineImpl, initWithNSString_withNSString_, groupName, localname)
}

void ASGuidelineImpl_setWidgetOnNativeClass(ASGuidelineImpl *self) {
  ((ASUIView*) self.uiView).widget = self;
}

void ASGuidelineImpl_setOrientationWithId_(ASGuidelineImpl *self, id objValue) {
  ((ADXConstraintLayout_LayoutParams *) nil_chk(((ADXConstraintLayout_LayoutParams *) cast_chk([((ADXGuideline *) nil_chk(self->guideline_)) getLayoutParams], [ADXConstraintLayout_LayoutParams class]))))->orientation_ = [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(objValue, [JavaLangInteger class]))) intValue];
  [((ADXConstraintLayout_LayoutParams *) nil_chk(((ADXConstraintLayout_LayoutParams *) cast_chk([((ADXGuideline *) nil_chk(self->guideline_)) getLayoutParams], [ADXConstraintLayout_LayoutParams class])))) validate];
}

id ASGuidelineImpl_getOrientation(ASGuidelineImpl *self) {
  return JavaLangInteger_valueOfWithInt_(((ADXConstraintLayout_LayoutParams *) nil_chk(((ADXConstraintLayout_LayoutParams *) cast_chk([((ADXGuideline *) nil_chk(self->guideline_)) getLayoutParams], [ADXConstraintLayout_LayoutParams class]))))->orientation_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASGuidelineImpl)

@implementation ASGuidelineImpl_Orientation

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASGuidelineImpl_Orientation_init(self);
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
  static const void *ptrTable[] = { "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;", "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;", "LASGuidelineImpl;" };
  static const J2ObjcClassInfo _ASGuidelineImpl_Orientation = { "Orientation", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x18, 3, 1, 2, -1, -1, -1, -1 };
  return &_ASGuidelineImpl_Orientation;
}

@end

void ASGuidelineImpl_Orientation_init(ASGuidelineImpl_Orientation *self) {
  ASAbstractEnumToIntConverter_init(self);
  self->mapping_ = new_JavaUtilHashMap_init();
  {
    (void) [self->mapping_ putWithId:@"horizontal" withId:JavaLangInteger_valueOfWithInt_((jint) 0x0)];
    (void) [((id<JavaUtilMap>) nil_chk(self->mapping_)) putWithId:@"vertical" withId:JavaLangInteger_valueOfWithInt_((jint) 0x1)];
  }
}

ASGuidelineImpl_Orientation *new_ASGuidelineImpl_Orientation_init() {
  J2OBJC_NEW_IMPL(ASGuidelineImpl_Orientation, init)
}

ASGuidelineImpl_Orientation *create_ASGuidelineImpl_Orientation_init() {
  J2OBJC_CREATE_IMPL(ASGuidelineImpl_Orientation, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASGuidelineImpl_Orientation)

@implementation ASGuidelineImpl_GuidelineExt

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

- (instancetype)initWithASGuidelineImpl:(ASGuidelineImpl *)outer$ {
  ASGuidelineImpl_GuidelineExt_initWithASGuidelineImpl_(self, outer$);
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
  ASViewImpl_nativeMakeFrameWithId_withInt_withInt_withInt_withInt_([this$0_ asNativeWidget], l, t, r, b);
  [this$0_ replayBufferedEvents];
  ASViewImpl_redrawDrawablesWithASIWidget_(this$0_);
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
  ASViewImpl_drawableStateChangedWithASIWidget_(this$0_);
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
  [((id<ASIFragment>) nil_chk([this$0_ getFragment])) remeasure];
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
  [this$0_ setAttributeWithNSString:name withId:value withBoolean:true];
}

- (void)setVisibilityWithInt:(jint)visibility {
  [super setVisibilityWithInt:visibility];
  ASViewImpl_nativeSetVisibilityWithId_withBoolean_([this$0_ asNativeWidget], visibility != ADView_VISIBLE);
}

- (void)__javaClone:(ASGuidelineImpl_GuidelineExt *)original {
  [super __javaClone:original];
  JreRelease(this$0_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
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
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(setMaxWidthWithInt:);
  methods[1].selector = @selector(setMaxHeightWithInt:);
  methods[2].selector = @selector(getMaxWidth);
  methods[3].selector = @selector(getMaxHeight);
  methods[4].selector = @selector(initWithASGuidelineImpl:);
  methods[5].selector = @selector(onMeasureWithInt:withInt:);
  methods[6].selector = @selector(onLayoutWithBoolean:withInt:withInt:withInt:withInt:);
  methods[7].selector = @selector(executeWithNSString:withNSObjectArray:);
  methods[8].selector = @selector(updateMeasuredDimensionWithInt:withInt:);
  methods[9].selector = @selector(newInstanceWithASIWidget:);
  methods[10].selector = @selector(setAttributeWithASWidgetAttribute:withNSString:withId:);
  methods[11].selector = @selector(getMethods);
  methods[12].selector = @selector(initialized);
  methods[13].selector = @selector(getAttributeWithASWidgetAttribute:);
  methods[14].selector = @selector(drawableStateChanged);
  methods[15].selector = @selector(inflateViewWithNSString:);
  methods[16].selector = @selector(remeasure);
  methods[17].selector = @selector(removeFromParent);
  methods[18].selector = @selector(getLocationOnScreenWithIntArray:);
  methods[19].selector = @selector(getWindowVisibleDisplayFrameWithADRect:);
  methods[20].selector = @selector(offsetTopAndBottomWithInt:);
  methods[21].selector = @selector(offsetLeftAndRightWithInt:);
  methods[22].selector = @selector(setMyAttributeWithNSString:withId:);
  methods[23].selector = @selector(setVisibilityWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LASGuidelineImpl;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "measureFinished_", "LASMeasureEvent;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "onLayoutEvent_", "LASOnLayoutEvent;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaxWidth_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaxHeight_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "templates_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 29, -1 },
  };
  static const void *ptrTable[] = { "setMaxWidth", "I", "setMaxHeight", "LASGuidelineImpl;", "onMeasure", "II", "onLayout", "ZIIII", "execute", "LNSString;[LNSObject;", "updateMeasuredDimension", "newInstance", "LASIWidget;", "setAttribute", "LASWidgetAttribute;LNSString;LNSObject;", "()Ljava/util/List<Ljava/lang/String;>;", "getAttribute", "LASWidgetAttribute;", "inflateView", "LNSString;", "getLocationOnScreen", "[I", "getWindowVisibleDisplayFrame", "LADRect;", "offsetTopAndBottom", "offsetLeftAndRight", "setMyAttribute", "LNSString;LNSObject;", "setVisibility", "Ljava/util/Map<Ljava/lang/String;Lcom/ashera/widget/IWidget;>;" };
  static const J2ObjcClassInfo _ASGuidelineImpl_GuidelineExt = { "GuidelineExt", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 24, 6, 3, -1, -1, -1, -1 };
  return &_ASGuidelineImpl_GuidelineExt;
}

@end

void ASGuidelineImpl_GuidelineExt_initWithASGuidelineImpl_(ASGuidelineImpl_GuidelineExt *self, ASGuidelineImpl *outer$) {
  self->this$0_ = outer$;
  ADXGuideline_init(self);
  self->measureFinished_ = new_ASMeasureEvent_init();
  self->onLayoutEvent_ = new_ASOnLayoutEvent_init();
  self->mMaxWidth_ = -1;
  self->mMaxHeight_ = -1;
}

ASGuidelineImpl_GuidelineExt *new_ASGuidelineImpl_GuidelineExt_initWithASGuidelineImpl_(ASGuidelineImpl *outer$) {
  J2OBJC_NEW_IMPL(ASGuidelineImpl_GuidelineExt, initWithASGuidelineImpl_, outer$)
}

ASGuidelineImpl_GuidelineExt *create_ASGuidelineImpl_GuidelineExt_initWithASGuidelineImpl_(ASGuidelineImpl *outer$) {
  J2OBJC_CREATE_IMPL(ASGuidelineImpl_GuidelineExt, initWithASGuidelineImpl_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASGuidelineImpl_GuidelineExt)

@implementation ASGuidelineImpl_GuidelineCommandBuilder

- (instancetype)initWithASGuidelineImpl:(ASGuidelineImpl *)outer$ {
  ASGuidelineImpl_GuidelineCommandBuilder_initWithASGuidelineImpl_(self, outer$);
  return self;
}

- (ASGuidelineImpl_GuidelineCommandBuilder *)executeWithBoolean:(jboolean)setter {
  if (setter) {
    [this$0_ executeCommandWithJavaUtilMap:command_ withASIWidget_CommandCallBack:nil withInt:ASIWidget_COMMAND_EXEC_SETTER_METHOD];
    [((id<ASIFragment>) nil_chk([this$0_ getFragment])) remeasure];
  }
  [this$0_ executeCommandWithJavaUtilMap:command_ withASIWidget_CommandCallBack:nil withInt:ASIWidget_COMMAND_EXEC_GETTER_METHOD];
  return self;
}

- (ASGuidelineImpl_GuidelineCommandBuilder *)tryGetOrientation {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"orientation"];
  (void) [((id<JavaUtilMap>) nil_chk(attrs)) putWithId:@"type" withId:@"attribute"];
  (void) [attrs putWithId:@"getter" withId:JavaLangBoolean_valueOfWithBoolean_(true)];
  (void) [attrs putWithId:@"orderGet" withId:JavaLangInteger_valueOfWithInt_(++orderGet_)];
  return self;
}

- (id)getOrientation {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"orientation"];
  return [((id<JavaUtilMap>) nil_chk(attrs)) getWithId:@"commandReturnValue"];
}

- (ASGuidelineImpl_GuidelineCommandBuilder *)setOrientationWithNSString:(NSString *)value {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"orientation"];
  (void) [((id<JavaUtilMap>) nil_chk(attrs)) putWithId:@"type" withId:@"attribute"];
  (void) [attrs putWithId:@"setter" withId:JavaLangBoolean_valueOfWithBoolean_(true)];
  (void) [attrs putWithId:@"orderSet" withId:JavaLangInteger_valueOfWithInt_(++orderSet_)];
  (void) [attrs putWithId:@"value" withId:value];
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LASGuidelineImpl_GuidelineCommandBuilder;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LASGuidelineImpl_GuidelineCommandBuilder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASGuidelineImpl_GuidelineCommandBuilder;", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithASGuidelineImpl:);
  methods[1].selector = @selector(executeWithBoolean:);
  methods[2].selector = @selector(tryGetOrientation);
  methods[3].selector = @selector(getOrientation);
  methods[4].selector = @selector(setOrientationWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LASGuidelineImpl;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LASGuidelineImpl;", "execute", "Z", "setOrientation", "LNSString;", "Lcom/ashera/layout/ViewImpl$ViewCommandBuilder<Lcom/ashera/constraintlayout/GuidelineImpl$GuidelineCommandBuilder;>;" };
  static const J2ObjcClassInfo _ASGuidelineImpl_GuidelineCommandBuilder = { "GuidelineCommandBuilder", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 5, 1, 0, -1, -1, 5, -1 };
  return &_ASGuidelineImpl_GuidelineCommandBuilder;
}

@end

void ASGuidelineImpl_GuidelineCommandBuilder_initWithASGuidelineImpl_(ASGuidelineImpl_GuidelineCommandBuilder *self, ASGuidelineImpl *outer$) {
  self->this$0_ = outer$;
  ASViewImpl_ViewCommandBuilder_init(self);
}

ASGuidelineImpl_GuidelineCommandBuilder *new_ASGuidelineImpl_GuidelineCommandBuilder_initWithASGuidelineImpl_(ASGuidelineImpl *outer$) {
  J2OBJC_NEW_IMPL(ASGuidelineImpl_GuidelineCommandBuilder, initWithASGuidelineImpl_, outer$)
}

ASGuidelineImpl_GuidelineCommandBuilder *create_ASGuidelineImpl_GuidelineCommandBuilder_initWithASGuidelineImpl_(ASGuidelineImpl *outer$) {
  J2OBJC_CREATE_IMPL(ASGuidelineImpl_GuidelineCommandBuilder, initWithASGuidelineImpl_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASGuidelineImpl_GuidelineCommandBuilder)

@implementation ASGuidelineImpl_GuidelineBean

- (instancetype)initWithASGuidelineImpl:(ASGuidelineImpl *)outer$ {
  ASGuidelineImpl_GuidelineBean_initWithASGuidelineImpl_(self, outer$);
  return self;
}

- (id)getOrientation {
  return [((ASGuidelineImpl_GuidelineCommandBuilder *) nil_chk([((ASGuidelineImpl_GuidelineCommandBuilder *) nil_chk([((ASGuidelineImpl_GuidelineCommandBuilder *) nil_chk([((ASGuidelineImpl_GuidelineCommandBuilder *) nil_chk([this$0_ getBuilder])) reset])) tryGetOrientation])) executeWithBoolean:false])) getOrientation];
}

- (void)setOrientationWithNSString:(NSString *)value {
  (void) [((ASGuidelineImpl_GuidelineCommandBuilder *) nil_chk([((ASGuidelineImpl_GuidelineCommandBuilder *) nil_chk([((ASGuidelineImpl_GuidelineCommandBuilder *) nil_chk([this$0_ getBuilder])) reset])) setOrientationWithNSString:value])) executeWithBoolean:true];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithASGuidelineImpl:);
  methods[1].selector = @selector(getOrientation);
  methods[2].selector = @selector(setOrientationWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LASGuidelineImpl;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LASGuidelineImpl;", "setOrientation", "LNSString;" };
  static const J2ObjcClassInfo _ASGuidelineImpl_GuidelineBean = { "GuidelineBean", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 3, 1, 0, -1, -1, -1, -1 };
  return &_ASGuidelineImpl_GuidelineBean;
}

@end

void ASGuidelineImpl_GuidelineBean_initWithASGuidelineImpl_(ASGuidelineImpl_GuidelineBean *self, ASGuidelineImpl *outer$) {
  self->this$0_ = outer$;
  ASViewImpl_ViewBean_initWithASIWidget_(self, outer$);
}

ASGuidelineImpl_GuidelineBean *new_ASGuidelineImpl_GuidelineBean_initWithASGuidelineImpl_(ASGuidelineImpl *outer$) {
  J2OBJC_NEW_IMPL(ASGuidelineImpl_GuidelineBean, initWithASGuidelineImpl_, outer$)
}

ASGuidelineImpl_GuidelineBean *create_ASGuidelineImpl_GuidelineBean_initWithASGuidelineImpl_(ASGuidelineImpl *outer$) {
  J2OBJC_CREATE_IMPL(ASGuidelineImpl_GuidelineBean, initWithASGuidelineImpl_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASGuidelineImpl_GuidelineBean)
