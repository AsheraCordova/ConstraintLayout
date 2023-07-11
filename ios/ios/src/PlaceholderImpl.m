//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSAndroidXConstraintLayoutPlugin\src\main\java\com\ashera\constraintlayout\PlaceholderImpl.java
//

#include "AbstractEnumToIntConverter.h"
#include "BaseWidget.h"
#include "ConverterFactory.h"
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
#include "Placeholder.h"
#include "PlaceholderImpl.h"
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

@protocol JavaUtilMap;


#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ASPlaceholderImpl () {
 @public
  ASPlaceholderImpl_PlaceholderCommandBuilder *builder_;
  ASPlaceholderImpl_PlaceholderBean *bean_;
}

- (void)setWidgetOnNativeClass;

- (void)setContentWithId:(id)objValue;

- (id)getContent;

@end

J2OBJC_FIELD_SETTER(ASPlaceholderImpl, builder_, ASPlaceholderImpl_PlaceholderCommandBuilder *)
J2OBJC_FIELD_SETTER(ASPlaceholderImpl, bean_, ASPlaceholderImpl_PlaceholderBean *)

__attribute__((unused)) static void ASPlaceholderImpl_setWidgetOnNativeClass(ASPlaceholderImpl *self);

__attribute__((unused)) static void ASPlaceholderImpl_setContentWithId_(ASPlaceholderImpl *self, id objValue);

__attribute__((unused)) static id ASPlaceholderImpl_getContent(ASPlaceholderImpl *self);

@interface ASPlaceholderImpl_Placeholder_emptyVisibility () {
 @public
  id<JavaUtilMap> mapping_;
}

@end

J2OBJC_FIELD_SETTER(ASPlaceholderImpl_Placeholder_emptyVisibility, mapping_, id<JavaUtilMap>)

@interface ASPlaceholderImpl_PlaceholderExt () {
 @public
  __unsafe_unretained ASPlaceholderImpl *this$0_;
  ASMeasureEvent *measureFinished_;
  ASOnLayoutEvent *onLayoutEvent_;
  jint mMaxWidth_;
  jint mMaxHeight_;
  id<JavaUtilMap> templates_;
}

@end

J2OBJC_FIELD_SETTER(ASPlaceholderImpl_PlaceholderExt, measureFinished_, ASMeasureEvent *)
J2OBJC_FIELD_SETTER(ASPlaceholderImpl_PlaceholderExt, onLayoutEvent_, ASOnLayoutEvent *)
J2OBJC_FIELD_SETTER(ASPlaceholderImpl_PlaceholderExt, templates_, id<JavaUtilMap>)

@interface ASPlaceholderImpl_PlaceholderCommandBuilder () {
 @public
  ASPlaceholderImpl *this$0_;
}

@end

@interface ASPlaceholderImpl_PlaceholderBean () {
 @public
  ASPlaceholderImpl *this$0_;
}

@end

NSString *ASPlaceholderImpl_LOCAL_NAME = @"androidx.constraintlayout.widget.Placeholder";
NSString *ASPlaceholderImpl_GROUP_NAME = @"androidx.constraintlayout.widget.Placeholder";

@implementation ASPlaceholderImpl

@synthesize uiView = uiView_;

- (void)loadAttributesWithNSString:(NSString *)attributeName {
  ASViewImpl_register__WithNSString_(attributeName);
  ASConverterFactory_register__WithNSString_withASIConverter_(@"androidx.constraintlayout.widget.Placeholder.placeholder_emptyVisibility", new_ASPlaceholderImpl_Placeholder_emptyVisibility_init());
  ASWidgetFactory_registerAttributeWithNSString_withASWidgetAttribute_Builder_(localName_, [((ASWidgetAttribute_Builder *) nil_chk([new_ASWidgetAttribute_Builder_init() withNameWithNSString:@"placeholder_emptyVisibility"])) withTypeWithNSString:@"androidx.constraintlayout.widget.Placeholder.placeholder_emptyVisibility"]);
  ASWidgetFactory_registerAttributeWithNSString_withASWidgetAttribute_Builder_(localName_, [((ASWidgetAttribute_Builder *) nil_chk([((ASWidgetAttribute_Builder *) nil_chk([new_ASWidgetAttribute_Builder_init() withNameWithNSString:@"content"])) withTypeWithNSString:@"id"])) withUiFlagWithInt:ASIWidget_UPDATE_UI_REQUEST_LAYOUT]);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASPlaceholderImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)localname {
  ASPlaceholderImpl_initWithNSString_(self, localname);
  return self;
}

- (instancetype)initWithNSString:(NSString *)groupName
                    withNSString:(NSString *)localname {
  ASPlaceholderImpl_initWithNSString_withNSString_(self, groupName, localname);
  return self;
}

- (IOSClass *)getViewClass {
  return ASPlaceholderImpl_PlaceholderExt_class_();
}

- (id<ASIWidget>)newInstance {
  return new_ASPlaceholderImpl_initWithNSString_withNSString_(groupName_, localName_);
}

- (void)createWithASIFragment:(id<ASIFragment>)fragment
              withJavaUtilMap:(id<JavaUtilMap>)params {
  [super createWithASIFragment:fragment withJavaUtilMap:params];
  placeholder_ = new_ASPlaceholderImpl_PlaceholderExt_initWithASPlaceholderImpl_(self);
  [self nativeCreateWithJavaUtilMap:params];
  ASViewImpl_registerCommandConveterWithASIWidget_(self);
  ASPlaceholderImpl_setWidgetOnNativeClass(self);
}

- (void)setWidgetOnNativeClass {
  ASPlaceholderImpl_setWidgetOnNativeClass(self);
}

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue
                withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator {
  id nativeWidget = [self asNativeWidget];
  ASViewImpl_setAttributeWithASIWidget_withASWidgetAttribute_withNSString_withId_withASILifeCycleDecorator_(self, key, strValue, objValue, decorator);
  switch (JreIndexOfStr([((ASWidgetAttribute *) nil_chk(key)) getAttributeName], (id[]){ @"placeholder_emptyVisibility", @"content" }, 2)) {
    case 0:
    {
      [((ADXPlaceholder *) nil_chk(placeholder_)) setEmptyVisibilityWithInt:[((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(objValue, [JavaLangInteger class]))) intValue]];
    }
    break;
    case 1:
    {
      ASPlaceholderImpl_setContentWithId_(self, objValue);
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
  switch (JreIndexOfStr([((ASWidgetAttribute *) nil_chk(key)) getAttributeName], (id[]){ @"placeholder_emptyVisibility", @"content" }, 2)) {
    case 0:
    {
      return JavaLangInteger_valueOfWithInt_([((ADXPlaceholder *) nil_chk(placeholder_)) getEmptyVisibility]);
    }
    case 1:
    {
      return ASPlaceholderImpl_getContent(self);
    }
  }
  return nil;
}

- (id)asWidget {
  return placeholder_;
}

- (void)setContentWithId:(id)objValue {
  ASPlaceholderImpl_setContentWithId_(self, objValue);
}

- (id)getContent {
  return ASPlaceholderImpl_getContent(self);
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
    [((ADXPlaceholder *) nil_chk(placeholder_)) setIdWithInt:ASIdGenerator_getIdWithNSString_(id_)];
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

- (id)getPluginWithNSString:(NSString *)plugin {
  return [((id<ASIAttributable>) nil_chk(ASWidgetFactory_getAttributableWithNSString_(plugin))) newInstanceWithASIWidget:self];
}

- (ASPlaceholderImpl_PlaceholderBean *)getBean {
  if (bean_ == nil) {
    bean_ = new_ASPlaceholderImpl_PlaceholderBean_initWithASPlaceholderImpl_(self);
  }
  return bean_;
}

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)getBuilder {
  if (builder_ == nil) {
    builder_ = new_ASPlaceholderImpl_PlaceholderCommandBuilder_initWithASPlaceholderImpl_(self);
  }
  return builder_;
}

- (void)nativeCreateWithJavaUtilMap:(id<JavaUtilMap>)params {
  ASUIView* uiView = [ASUIView new];
  uiView.backgroundColor = [UIColor clearColor];
  uiView_ = uiView;
}

- (void)nativeRequestLayout {
  [((id<ADViewParent>) nil_chk([((ADXPlaceholder *) nil_chk(placeholder_)) getParent])) requestLayout];
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
    { NULL, "LASPlaceholderImpl_PlaceholderBean;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASPlaceholderImpl_PlaceholderCommandBuilder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x101, 17, 18, -1, 19, -1, -1 },
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
  methods[11].selector = @selector(setContentWithId:);
  methods[12].selector = @selector(getContent);
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
  methods[23].selector = @selector(nativeRequestLayout);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOCAL_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "GROUP_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "uiView_", "LNSObject;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "placeholder_", "LADXPlaceholder;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "builder_", "LASPlaceholderImpl_PlaceholderCommandBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bean_", "LASPlaceholderImpl_PlaceholderBean;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "loadAttributes", "LNSString;", "LNSString;LNSString;", "create", "LASIFragment;LJavaUtilMap;", "(Lcom/ashera/core/IFragment;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V", "setAttribute", "LASWidgetAttribute;LNSString;LNSObject;LASILifeCycleDecorator;", "getAttribute", "LASWidgetAttribute;LASILifeCycleDecorator;", "setContent", "LNSObject;", "checkIosVersion", "setId", "setVisible", "Z", "getPlugin", "nativeCreate", "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V", &ASPlaceholderImpl_LOCAL_NAME, &ASPlaceholderImpl_GROUP_NAME, "LASPlaceholderImpl_Placeholder_emptyVisibility;LASPlaceholderImpl_PlaceholderExt;LASPlaceholderImpl_PlaceholderCommandBuilder;LASPlaceholderImpl_PlaceholderBean;" };
  static const J2ObjcClassInfo _ASPlaceholderImpl = { "PlaceholderImpl", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 24, 6, -1, 22, -1, -1, -1 };
  return &_ASPlaceholderImpl;
}

@end

void ASPlaceholderImpl_init(ASPlaceholderImpl *self) {
  ASBaseWidget_initWithNSString_withNSString_(self, ASPlaceholderImpl_GROUP_NAME, ASPlaceholderImpl_LOCAL_NAME);
}

ASPlaceholderImpl *new_ASPlaceholderImpl_init() {
  J2OBJC_NEW_IMPL(ASPlaceholderImpl, init)
}

ASPlaceholderImpl *create_ASPlaceholderImpl_init() {
  J2OBJC_CREATE_IMPL(ASPlaceholderImpl, init)
}

void ASPlaceholderImpl_initWithNSString_(ASPlaceholderImpl *self, NSString *localname) {
  ASBaseWidget_initWithNSString_withNSString_(self, ASPlaceholderImpl_GROUP_NAME, localname);
}

ASPlaceholderImpl *new_ASPlaceholderImpl_initWithNSString_(NSString *localname) {
  J2OBJC_NEW_IMPL(ASPlaceholderImpl, initWithNSString_, localname)
}

ASPlaceholderImpl *create_ASPlaceholderImpl_initWithNSString_(NSString *localname) {
  J2OBJC_CREATE_IMPL(ASPlaceholderImpl, initWithNSString_, localname)
}

void ASPlaceholderImpl_initWithNSString_withNSString_(ASPlaceholderImpl *self, NSString *groupName, NSString *localname) {
  ASBaseWidget_initWithNSString_withNSString_(self, groupName, localname);
}

ASPlaceholderImpl *new_ASPlaceholderImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) {
  J2OBJC_NEW_IMPL(ASPlaceholderImpl, initWithNSString_withNSString_, groupName, localname)
}

ASPlaceholderImpl *create_ASPlaceholderImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) {
  J2OBJC_CREATE_IMPL(ASPlaceholderImpl, initWithNSString_withNSString_, groupName, localname)
}

void ASPlaceholderImpl_setWidgetOnNativeClass(ASPlaceholderImpl *self) {
  ((ASUIView*) self.uiView).widget = self;
}

void ASPlaceholderImpl_setContentWithId_(ASPlaceholderImpl *self, id objValue) {
  [((ADXPlaceholder *) nil_chk(self->placeholder_)) setContentIdWithInt:[((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(objValue, [JavaLangInteger class]))) intValue]];
}

id ASPlaceholderImpl_getContent(ASPlaceholderImpl *self) {
  if ([((ADXPlaceholder *) nil_chk(self->placeholder_)) getContent] == nil) {
    return nil;
  }
  return JavaLangInteger_valueOfWithInt_([((ADView *) nil_chk([((ADXPlaceholder *) nil_chk(self->placeholder_)) getContent])) getId]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASPlaceholderImpl)

@implementation ASPlaceholderImpl_Placeholder_emptyVisibility

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASPlaceholderImpl_Placeholder_emptyVisibility_init(self);
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
  static const void *ptrTable[] = { "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;", "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;", "LASPlaceholderImpl;" };
  static const J2ObjcClassInfo _ASPlaceholderImpl_Placeholder_emptyVisibility = { "Placeholder_emptyVisibility", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x18, 3, 1, 2, -1, -1, -1, -1 };
  return &_ASPlaceholderImpl_Placeholder_emptyVisibility;
}

@end

void ASPlaceholderImpl_Placeholder_emptyVisibility_init(ASPlaceholderImpl_Placeholder_emptyVisibility *self) {
  ASAbstractEnumToIntConverter_init(self);
  self->mapping_ = new_JavaUtilHashMap_init();
  {
    (void) [self->mapping_ putWithId:@"visible" withId:JavaLangInteger_valueOfWithInt_((jint) 0x0)];
    (void) [((id<JavaUtilMap>) nil_chk(self->mapping_)) putWithId:@"invisible" withId:JavaLangInteger_valueOfWithInt_((jint) 0x4)];
    (void) [((id<JavaUtilMap>) nil_chk(self->mapping_)) putWithId:@"gone" withId:JavaLangInteger_valueOfWithInt_((jint) 0x8)];
  }
}

ASPlaceholderImpl_Placeholder_emptyVisibility *new_ASPlaceholderImpl_Placeholder_emptyVisibility_init() {
  J2OBJC_NEW_IMPL(ASPlaceholderImpl_Placeholder_emptyVisibility, init)
}

ASPlaceholderImpl_Placeholder_emptyVisibility *create_ASPlaceholderImpl_Placeholder_emptyVisibility_init() {
  J2OBJC_CREATE_IMPL(ASPlaceholderImpl_Placeholder_emptyVisibility, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASPlaceholderImpl_Placeholder_emptyVisibility)

@implementation ASPlaceholderImpl_PlaceholderExt

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

- (instancetype)initWithASPlaceholderImpl:(ASPlaceholderImpl *)outer$ {
  ASPlaceholderImpl_PlaceholderExt_initWithASPlaceholderImpl_(self, outer$);
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

- (void)__javaClone:(ASPlaceholderImpl_PlaceholderExt *)original {
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
  methods[4].selector = @selector(initWithASPlaceholderImpl:);
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
    { "this$0_", "LASPlaceholderImpl;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "measureFinished_", "LASMeasureEvent;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "onLayoutEvent_", "LASOnLayoutEvent;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaxWidth_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaxHeight_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "templates_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 29, -1 },
  };
  static const void *ptrTable[] = { "setMaxWidth", "I", "setMaxHeight", "LASPlaceholderImpl;", "onMeasure", "II", "onLayout", "ZIIII", "execute", "LNSString;[LNSObject;", "updateMeasuredDimension", "newInstance", "LASIWidget;", "setAttribute", "LASWidgetAttribute;LNSString;LNSObject;", "()Ljava/util/List<Ljava/lang/String;>;", "getAttribute", "LASWidgetAttribute;", "inflateView", "LNSString;", "getLocationOnScreen", "[I", "getWindowVisibleDisplayFrame", "LADRect;", "offsetTopAndBottom", "offsetLeftAndRight", "setMyAttribute", "LNSString;LNSObject;", "setVisibility", "Ljava/util/Map<Ljava/lang/String;Lcom/ashera/widget/IWidget;>;" };
  static const J2ObjcClassInfo _ASPlaceholderImpl_PlaceholderExt = { "PlaceholderExt", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 24, 6, 3, -1, -1, -1, -1 };
  return &_ASPlaceholderImpl_PlaceholderExt;
}

@end

void ASPlaceholderImpl_PlaceholderExt_initWithASPlaceholderImpl_(ASPlaceholderImpl_PlaceholderExt *self, ASPlaceholderImpl *outer$) {
  self->this$0_ = outer$;
  ADXPlaceholder_init(self);
  self->measureFinished_ = new_ASMeasureEvent_init();
  self->onLayoutEvent_ = new_ASOnLayoutEvent_init();
  self->mMaxWidth_ = -1;
  self->mMaxHeight_ = -1;
}

ASPlaceholderImpl_PlaceholderExt *new_ASPlaceholderImpl_PlaceholderExt_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) {
  J2OBJC_NEW_IMPL(ASPlaceholderImpl_PlaceholderExt, initWithASPlaceholderImpl_, outer$)
}

ASPlaceholderImpl_PlaceholderExt *create_ASPlaceholderImpl_PlaceholderExt_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) {
  J2OBJC_CREATE_IMPL(ASPlaceholderImpl_PlaceholderExt, initWithASPlaceholderImpl_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASPlaceholderImpl_PlaceholderExt)

@implementation ASPlaceholderImpl_PlaceholderCommandBuilder

- (instancetype)initWithASPlaceholderImpl:(ASPlaceholderImpl *)outer$ {
  ASPlaceholderImpl_PlaceholderCommandBuilder_initWithASPlaceholderImpl_(self, outer$);
  return self;
}

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)executeWithBoolean:(jboolean)setter {
  if (setter) {
    [this$0_ executeCommandWithJavaUtilMap:command_ withASIWidget_CommandCallBack:nil withInt:ASIWidget_COMMAND_EXEC_SETTER_METHOD];
    [((id<ASIFragment>) nil_chk([this$0_ getFragment])) remeasure];
  }
  [this$0_ executeCommandWithJavaUtilMap:command_ withASIWidget_CommandCallBack:nil withInt:ASIWidget_COMMAND_EXEC_GETTER_METHOD];
  return self;
}

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetPlaceholder_emptyVisibility {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"placeholder_emptyVisibility"];
  (void) [((id<JavaUtilMap>) nil_chk(attrs)) putWithId:@"type" withId:@"attribute"];
  (void) [attrs putWithId:@"getter" withId:JavaLangBoolean_valueOfWithBoolean_(true)];
  (void) [attrs putWithId:@"orderGet" withId:JavaLangInteger_valueOfWithInt_(++orderGet_)];
  return self;
}

- (id)getPlaceholder_emptyVisibility {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"placeholder_emptyVisibility"];
  return [((id<JavaUtilMap>) nil_chk(attrs)) getWithId:@"commandReturnValue"];
}

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setPlaceholder_emptyVisibilityWithNSString:(NSString *)value {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"placeholder_emptyVisibility"];
  (void) [((id<JavaUtilMap>) nil_chk(attrs)) putWithId:@"type" withId:@"attribute"];
  (void) [attrs putWithId:@"setter" withId:JavaLangBoolean_valueOfWithBoolean_(true)];
  (void) [attrs putWithId:@"orderSet" withId:JavaLangInteger_valueOfWithInt_(++orderSet_)];
  (void) [attrs putWithId:@"value" withId:value];
  return self;
}

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)tryGetContent {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"content"];
  (void) [((id<JavaUtilMap>) nil_chk(attrs)) putWithId:@"type" withId:@"attribute"];
  (void) [attrs putWithId:@"getter" withId:JavaLangBoolean_valueOfWithBoolean_(true)];
  (void) [attrs putWithId:@"orderGet" withId:JavaLangInteger_valueOfWithInt_(++orderGet_)];
  return self;
}

- (id)getContent {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"content"];
  return [((id<JavaUtilMap>) nil_chk(attrs)) getWithId:@"commandReturnValue"];
}

- (ASPlaceholderImpl_PlaceholderCommandBuilder *)setContentWithNSString:(NSString *)value {
  id<JavaUtilMap> attrs = [self initCommandWithNSString:@"content"];
  (void) [((id<JavaUtilMap>) nil_chk(attrs)) putWithId:@"type" withId:@"attribute"];
  (void) [attrs putWithId:@"setter" withId:JavaLangBoolean_valueOfWithBoolean_(true)];
  (void) [attrs putWithId:@"orderSet" withId:JavaLangInteger_valueOfWithInt_(++orderSet_)];
  (void) [attrs putWithId:@"value" withId:value];
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LASPlaceholderImpl_PlaceholderCommandBuilder;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LASPlaceholderImpl_PlaceholderCommandBuilder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASPlaceholderImpl_PlaceholderCommandBuilder;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LASPlaceholderImpl_PlaceholderCommandBuilder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASPlaceholderImpl_PlaceholderCommandBuilder;", 0x1, 5, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithASPlaceholderImpl:);
  methods[1].selector = @selector(executeWithBoolean:);
  methods[2].selector = @selector(tryGetPlaceholder_emptyVisibility);
  methods[3].selector = @selector(getPlaceholder_emptyVisibility);
  methods[4].selector = @selector(setPlaceholder_emptyVisibilityWithNSString:);
  methods[5].selector = @selector(tryGetContent);
  methods[6].selector = @selector(getContent);
  methods[7].selector = @selector(setContentWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LASPlaceholderImpl;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LASPlaceholderImpl;", "execute", "Z", "setPlaceholder_emptyVisibility", "LNSString;", "setContent", "Lcom/ashera/layout/ViewImpl$ViewCommandBuilder<Lcom/ashera/constraintlayout/PlaceholderImpl$PlaceholderCommandBuilder;>;" };
  static const J2ObjcClassInfo _ASPlaceholderImpl_PlaceholderCommandBuilder = { "PlaceholderCommandBuilder", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 8, 1, 0, -1, -1, 6, -1 };
  return &_ASPlaceholderImpl_PlaceholderCommandBuilder;
}

@end

void ASPlaceholderImpl_PlaceholderCommandBuilder_initWithASPlaceholderImpl_(ASPlaceholderImpl_PlaceholderCommandBuilder *self, ASPlaceholderImpl *outer$) {
  self->this$0_ = outer$;
  ASViewImpl_ViewCommandBuilder_init(self);
}

ASPlaceholderImpl_PlaceholderCommandBuilder *new_ASPlaceholderImpl_PlaceholderCommandBuilder_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) {
  J2OBJC_NEW_IMPL(ASPlaceholderImpl_PlaceholderCommandBuilder, initWithASPlaceholderImpl_, outer$)
}

ASPlaceholderImpl_PlaceholderCommandBuilder *create_ASPlaceholderImpl_PlaceholderCommandBuilder_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) {
  J2OBJC_CREATE_IMPL(ASPlaceholderImpl_PlaceholderCommandBuilder, initWithASPlaceholderImpl_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASPlaceholderImpl_PlaceholderCommandBuilder)

@implementation ASPlaceholderImpl_PlaceholderBean

- (instancetype)initWithASPlaceholderImpl:(ASPlaceholderImpl *)outer$ {
  ASPlaceholderImpl_PlaceholderBean_initWithASPlaceholderImpl_(self, outer$);
  return self;
}

- (id)getPlaceholder_emptyVisibility {
  return [((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([this$0_ getBuilder])) reset])) tryGetPlaceholder_emptyVisibility])) executeWithBoolean:false])) getPlaceholder_emptyVisibility];
}

- (void)setPlaceholder_emptyVisibilityWithNSString:(NSString *)value {
  (void) [((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([this$0_ getBuilder])) reset])) setPlaceholder_emptyVisibilityWithNSString:value])) executeWithBoolean:true];
}

- (id)getContent {
  return [((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([this$0_ getBuilder])) reset])) tryGetContent])) executeWithBoolean:false])) getContent];
}

- (void)setContentWithNSString:(NSString *)value {
  (void) [((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([((ASPlaceholderImpl_PlaceholderCommandBuilder *) nil_chk([this$0_ getBuilder])) reset])) setContentWithNSString:value])) executeWithBoolean:true];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithASPlaceholderImpl:);
  methods[1].selector = @selector(getPlaceholder_emptyVisibility);
  methods[2].selector = @selector(setPlaceholder_emptyVisibilityWithNSString:);
  methods[3].selector = @selector(getContent);
  methods[4].selector = @selector(setContentWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LASPlaceholderImpl;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LASPlaceholderImpl;", "setPlaceholder_emptyVisibility", "LNSString;", "setContent" };
  static const J2ObjcClassInfo _ASPlaceholderImpl_PlaceholderBean = { "PlaceholderBean", "com.ashera.constraintlayout", ptrTable, methods, fields, 7, 0x1, 5, 1, 0, -1, -1, -1, -1 };
  return &_ASPlaceholderImpl_PlaceholderBean;
}

@end

void ASPlaceholderImpl_PlaceholderBean_initWithASPlaceholderImpl_(ASPlaceholderImpl_PlaceholderBean *self, ASPlaceholderImpl *outer$) {
  self->this$0_ = outer$;
  ASViewImpl_ViewBean_initWithASIWidget_(self, outer$);
}

ASPlaceholderImpl_PlaceholderBean *new_ASPlaceholderImpl_PlaceholderBean_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) {
  J2OBJC_NEW_IMPL(ASPlaceholderImpl_PlaceholderBean, initWithASPlaceholderImpl_, outer$)
}

ASPlaceholderImpl_PlaceholderBean *create_ASPlaceholderImpl_PlaceholderBean_initWithASPlaceholderImpl_(ASPlaceholderImpl *outer$) {
  J2OBJC_CREATE_IMPL(ASPlaceholderImpl_PlaceholderBean, initWithASPlaceholderImpl_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASPlaceholderImpl_PlaceholderBean)
