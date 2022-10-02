//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\TypedBundle.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_TypedBundle")
#ifdef RESTRICT_TypedBundle
#define INCLUDE_ALL_TypedBundle 0
#else
#define INCLUDE_ALL_TypedBundle 1
#endif
#undef RESTRICT_TypedBundle

#if !defined (ADXTypedBundle_) && (INCLUDE_ALL_TypedBundle || defined(INCLUDE_ADXTypedBundle))
#define ADXTypedBundle_

@class IOSBooleanArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSObjectArray;
@protocol ADXTypedValues;

@interface ADXTypedBundle : NSObject {
 @public
  IOSIntArray *mTypeInt_;
  IOSIntArray *mValueInt_;
  jint mCountInt_;
  IOSIntArray *mTypeFloat_;
  IOSFloatArray *mValueFloat_;
  jint mCountFloat_;
  IOSIntArray *mTypeString_;
  IOSObjectArray *mValueString_;
  jint mCountString_;
  IOSIntArray *mTypeBoolean_;
  IOSBooleanArray *mValueBoolean_;
  jint mCountBoolean_;
}

#pragma mark Public

- (instancetype)init;

- (void)addWithInt:(jint)type
       withBoolean:(jboolean)value;

- (void)addWithInt:(jint)type
         withFloat:(jfloat)value;

- (void)addWithInt:(jint)type
           withInt:(jint)value;

- (void)addWithInt:(jint)type
      withNSString:(NSString *)value;

- (void)addIfNotNullWithInt:(jint)type
               withNSString:(NSString *)value;

- (void)applyDeltaWithADXTypedValues:(id<ADXTypedValues>)values;

- (void)clear;

- (jint)getIntegerWithInt:(jint)type;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXTypedBundle)

J2OBJC_FIELD_SETTER(ADXTypedBundle, mTypeInt_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXTypedBundle, mValueInt_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXTypedBundle, mTypeFloat_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXTypedBundle, mValueFloat_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(ADXTypedBundle, mTypeString_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXTypedBundle, mValueString_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ADXTypedBundle, mTypeBoolean_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXTypedBundle, mValueBoolean_, IOSBooleanArray *)

FOUNDATION_EXPORT void ADXTypedBundle_init(ADXTypedBundle *self);

FOUNDATION_EXPORT ADXTypedBundle *new_ADXTypedBundle_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXTypedBundle *create_ADXTypedBundle_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXTypedBundle)

@compatibility_alias AndroidxConstraintlayoutCoreMotionUtilsTypedBundle ADXTypedBundle;

#endif

#pragma pop_macro("INCLUDE_ALL_TypedBundle")
