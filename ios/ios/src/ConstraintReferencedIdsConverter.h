//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSAndroidXConstraintLayoutPlugin\src\main\java\com\ashera\constraintlayout\ConstraintReferencedIdsConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ConstraintReferencedIdsConverter")
#ifdef RESTRICT_ConstraintReferencedIdsConverter
#define INCLUDE_ALL_ConstraintReferencedIdsConverter 0
#else
#define INCLUDE_ALL_ConstraintReferencedIdsConverter 1
#endif
#undef RESTRICT_ConstraintReferencedIdsConverter

#if !defined (ASConstraintReferencedIdsConverter_) && (INCLUDE_ALL_ConstraintReferencedIdsConverter || defined(INCLUDE_ASConstraintReferencedIdsConverter))
#define ASConstraintReferencedIdsConverter_

#define RESTRICT_IConverter 1
#define INCLUDE_ASIConverter 1
#include "IConverter.h"

@class IOSIntArray;
@protocol ASIFragment;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface ASConstraintReferencedIdsConverter : NSObject < ASIConverter >

#pragma mark Public

- (instancetype)init;

- (IOSIntArray *)convertFromWithId:(NSString *)value
                   withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                   withASIFragment:(id<ASIFragment>)fragment;

- (NSString *)convertToWithId:(IOSIntArray *)values
              withASIFragment:(id<ASIFragment>)fragment;

- (id<JavaUtilList>)getDependentAttributes;

@end

J2OBJC_EMPTY_STATIC_INIT(ASConstraintReferencedIdsConverter)

FOUNDATION_EXPORT void ASConstraintReferencedIdsConverter_init(ASConstraintReferencedIdsConverter *self);

FOUNDATION_EXPORT ASConstraintReferencedIdsConverter *new_ASConstraintReferencedIdsConverter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASConstraintReferencedIdsConverter *create_ASConstraintReferencedIdsConverter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASConstraintReferencedIdsConverter)

@compatibility_alias ComAsheraConstraintlayoutConstraintReferencedIdsConverter ASConstraintReferencedIdsConverter;

#endif

#pragma pop_macro("INCLUDE_ALL_ConstraintReferencedIdsConverter")
