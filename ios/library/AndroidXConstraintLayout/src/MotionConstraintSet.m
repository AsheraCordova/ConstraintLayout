//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\key\MotionConstraintSet.java
//

#include "J2ObjC_source.h"
#include "MotionConstraintSet.h"


@interface ADXMotionConstraintSet () {
 @public
  jboolean mValidate_;
}

@end

inline NSString *ADXMotionConstraintSet_get_ERROR_MESSAGE(void);
static NSString *ADXMotionConstraintSet_ERROR_MESSAGE = @"XML parser error must be within a Constraint ";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXMotionConstraintSet, ERROR_MESSAGE, NSString *)

inline jint ADXMotionConstraintSet_get_INTERNAL_MATCH_PARENT(void);
#define ADXMotionConstraintSet_INTERNAL_MATCH_PARENT -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionConstraintSet, INTERNAL_MATCH_PARENT, jint)

inline jint ADXMotionConstraintSet_get_INTERNAL_WRAP_CONTENT(void);
#define ADXMotionConstraintSet_INTERNAL_WRAP_CONTENT -2
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionConstraintSet, INTERNAL_WRAP_CONTENT, jint)

inline jint ADXMotionConstraintSet_get_INTERNAL_MATCH_CONSTRAINT(void);
#define ADXMotionConstraintSet_INTERNAL_MATCH_CONSTRAINT -3
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionConstraintSet, INTERNAL_MATCH_CONSTRAINT, jint)

inline jint ADXMotionConstraintSet_get_INTERNAL_WRAP_CONTENT_CONSTRAINED(void);
#define ADXMotionConstraintSet_INTERNAL_WRAP_CONTENT_CONSTRAINED -4
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionConstraintSet, INTERNAL_WRAP_CONTENT_CONSTRAINED, jint)

@implementation ADXMotionConstraintSet

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXMotionConstraintSet_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(mIdString_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ERROR_MESSAGE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 0, -1, -1 },
    { "INTERNAL_MATCH_PARENT", "I", .constantValue.asInt = ADXMotionConstraintSet_INTERNAL_MATCH_PARENT, 0x1a, -1, -1, -1, -1 },
    { "INTERNAL_WRAP_CONTENT", "I", .constantValue.asInt = ADXMotionConstraintSet_INTERNAL_WRAP_CONTENT, 0x1a, -1, -1, -1, -1 },
    { "INTERNAL_MATCH_CONSTRAINT", "I", .constantValue.asInt = ADXMotionConstraintSet_INTERNAL_MATCH_CONSTRAINT, 0x1a, -1, -1, -1, -1 },
    { "INTERNAL_WRAP_CONTENT_CONSTRAINED", "I", .constantValue.asInt = ADXMotionConstraintSet_INTERNAL_WRAP_CONTENT_CONSTRAINED, 0x1a, -1, -1, -1, -1 },
    { "mValidate_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mIdString_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "ROTATE_NONE", "I", .constantValue.asInt = ADXMotionConstraintSet_ROTATE_NONE, 0x19, -1, -1, -1, -1 },
    { "ROTATE_PORTRATE_OF_RIGHT", "I", .constantValue.asInt = ADXMotionConstraintSet_ROTATE_PORTRATE_OF_RIGHT, 0x19, -1, -1, -1, -1 },
    { "ROTATE_PORTRATE_OF_LEFT", "I", .constantValue.asInt = ADXMotionConstraintSet_ROTATE_PORTRATE_OF_LEFT, 0x19, -1, -1, -1, -1 },
    { "ROTATE_RIGHT_OF_PORTRATE", "I", .constantValue.asInt = ADXMotionConstraintSet_ROTATE_RIGHT_OF_PORTRATE, 0x19, -1, -1, -1, -1 },
    { "ROTATE_LEFT_OF_PORTRATE", "I", .constantValue.asInt = ADXMotionConstraintSet_ROTATE_LEFT_OF_PORTRATE, 0x19, -1, -1, -1, -1 },
    { "mRotate_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { &ADXMotionConstraintSet_ERROR_MESSAGE };
  static const J2ObjcClassInfo _ADXMotionConstraintSet = { "MotionConstraintSet", "androidx.constraintlayout.core.motion.key", ptrTable, methods, fields, 7, 0x1, 1, 13, -1, -1, -1, -1, -1 };
  return &_ADXMotionConstraintSet;
}

@end

void ADXMotionConstraintSet_init(ADXMotionConstraintSet *self) {
  NSObject_init(self);
  self->mRotate_ = 0;
}

ADXMotionConstraintSet *new_ADXMotionConstraintSet_init() {
  J2OBJC_NEW_IMPL(ADXMotionConstraintSet, init)
}

ADXMotionConstraintSet *create_ADXMotionConstraintSet_init() {
  J2OBJC_CREATE_IMPL(ADXMotionConstraintSet, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXMotionConstraintSet)