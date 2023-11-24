//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\motion\widget\KeyFrames.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_KeyFrames")
#ifdef RESTRICT_KeyFrames
#define INCLUDE_ALL_KeyFrames 0
#else
#define INCLUDE_ALL_KeyFrames 1
#endif
#undef RESTRICT_KeyFrames

#if !defined (ADXKeyFrames_) && (INCLUDE_ALL_KeyFrames || defined(INCLUDE_ADXKeyFrames))
#define ADXKeyFrames_

@class ADContext;
@class ADXKey;
@class ADXMotionController;
@class JavaUtilArrayList;
@protocol JavaUtilSet;

/*!
 @brief The parses the KeyFrame structure in a MotionScene xml
 */
@interface ADXKeyFrames : NSObject

#pragma mark Public

- (instancetype)init;

- (void)addAllFramesWithADXMotionController:(ADXMotionController *)motionController;

- (void)addFramesWithADXMotionController:(ADXMotionController *)motionController;

- (void)addKeyWithADXKey:(ADXKey *)key;

- (JavaUtilArrayList *)getKeyFramesForViewWithInt:(jint)id_;

- (id<JavaUtilSet>)getKeys;

#pragma mark Package-Private

+ (NSString *)nameWithInt:(jint)viewId
            withADContext:(ADContext *)context;

@end

J2OBJC_STATIC_INIT(ADXKeyFrames)

inline jint ADXKeyFrames_get_UNSET(void);
#define ADXKeyFrames_UNSET -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXKeyFrames, UNSET, jint)

FOUNDATION_EXPORT void ADXKeyFrames_init(ADXKeyFrames *self);

FOUNDATION_EXPORT ADXKeyFrames *new_ADXKeyFrames_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXKeyFrames *create_ADXKeyFrames_init(void);

FOUNDATION_EXPORT NSString *ADXKeyFrames_nameWithInt_withADContext_(jint viewId, ADContext *context);

J2OBJC_TYPE_LITERAL_HEADER(ADXKeyFrames)

@compatibility_alias AndroidxConstraintlayoutMotionWidgetKeyFrames ADXKeyFrames;

#endif

#pragma pop_macro("INCLUDE_ALL_KeyFrames")
