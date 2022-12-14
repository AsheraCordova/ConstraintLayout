//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\ConstraintAnchor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ConstraintAnchor")
#ifdef RESTRICT_ConstraintAnchor
#define INCLUDE_ALL_ConstraintAnchor 0
#else
#define INCLUDE_ALL_ConstraintAnchor 1
#endif
#undef RESTRICT_ConstraintAnchor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ADXConstraintAnchor_) && (INCLUDE_ALL_ConstraintAnchor || defined(INCLUDE_ADXConstraintAnchor))
#define ADXConstraintAnchor_

@class ADXCache;
@class ADXConstraintAnchor_Type;
@class ADXConstraintWidget;
@class ADXSolverVariable;
@class ADXWidgetGroup;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@class JavaUtilHashSet;

/*!
 @brief Model a constraint relation.Widgets contains anchors, and a constraint relation between
  two widgets is made by connecting one anchor to another.
 The anchor will contains a pointer
  to the target anchor if it is connected.
 */
@interface ADXConstraintAnchor : NSObject {
 @public
  __unsafe_unretained ADXConstraintWidget *mOwner_;
  ADXConstraintAnchor_Type *mType_;
  __unsafe_unretained ADXConstraintAnchor *mTarget_;
  jint mMargin_;
  jint mGoneMargin_;
  ADXSolverVariable *mSolverVariable_;
}

#pragma mark Public

/*!
 @brief Constructor
 @param owner the widget owner of this anchor.
 @param type the anchor type.
 */
- (instancetype)initWithADXConstraintWidget:(ADXConstraintWidget *)owner
               withADXConstraintAnchor_Type:(ADXConstraintAnchor_Type *)type;

/*!
 @brief Connects this anchor to another one.
 @param toAnchor
 @param margin
 @return true if the connection succeeds.
 */
- (jboolean)connectWithADXConstraintAnchor:(ADXConstraintAnchor *)toAnchor
                                   withInt:(jint)margin;

/*!
 @brief Connects this anchor to another one.
 @param toAnchor
 @param margin
 @param goneMargin
 @param forceConnection
 @return true if the connection succeeds.
 */
- (jboolean)connectWithADXConstraintAnchor:(ADXConstraintAnchor *)toAnchor
                                   withInt:(jint)margin
                                   withInt:(jint)goneMargin
                               withBoolean:(jboolean)forceConnection;

- (void)copyFromWithADXConstraintAnchor:(ADXConstraintAnchor *)source
                    withJavaUtilHashMap:(JavaUtilHashMap *)map OBJC_METHOD_FAMILY_NONE;

- (void)findDependentsWithInt:(jint)orientation
        withJavaUtilArrayList:(JavaUtilArrayList *)list
           withADXWidgetGroup:(ADXWidgetGroup *)group;

- (JavaUtilHashSet *)getDependents;

- (jint)getFinalValue;

/*!
 @brief Return the connection's margin from this anchor to its target.
 @return the margin value. 0 if not connected.
 */
- (jint)getMargin;

/*!
 @brief Returns the opposite anchor to this one
 @return opposite anchor
 */
- (ADXConstraintAnchor *)getOpposite;

/*!
 @brief Return the anchor's owner
 @return the Widget owning the anchor
 */
- (ADXConstraintWidget *)getOwner;

/*!
 @brief Return the solver variable for this anchor
 */
- (ADXSolverVariable *)getSolverVariable;

/*!
 @brief Return the connection's target (null if not connected)
 @return the ConstraintAnchor target
 */
- (ADXConstraintAnchor *)getTarget;

/*!
 @brief Return the type of the anchor
 @return type of the anchor.
 */
- (ADXConstraintAnchor_Type *)getType;

- (jboolean)hasCenteredDependents;

- (jboolean)hasDependents;

- (jboolean)hasFinalValue;

/*!
 @brief Returns the connection status of this anchor
 @return true if the anchor is connected to another one.
 */
- (jboolean)isConnected;

/*!
 @brief Return true if we can connect this anchor to this target.
 We recursively follow connections in order to detect eventual cycles; if we
  do we disallow the connection.
  We also only allow connections to direct parent, siblings, and descendants.
 @param target the ConstraintWidget we are trying to connect to
 @return true if the connection is allowed, false otherwise
 */
- (jboolean)isConnectionAllowedWithADXConstraintWidget:(ADXConstraintWidget *)target;

/*!
 @brief Return true if we can connect this anchor to this target.
 We recursively follow connections in order to detect eventual cycles; if we
  do we disallow the connection.
  We also only allow connections to direct parent, siblings, and descendants.
 @param target the ConstraintWidget we are trying to connect to
 @param anchor Allow anchor if it loops back to me directly
 @return if the connection is allowed, false otherwise
 */
- (jboolean)isConnectionAllowedWithADXConstraintWidget:(ADXConstraintWidget *)target
                               withADXConstraintAnchor:(ADXConstraintAnchor *)anchor;

/*!
 @brief Return true if this anchor is a side anchor
 @return true if side anchor
 */
- (jboolean)isSideAnchor;

/*!
 @brief Return true if the connection to the given anchor is in the
  same dimension (horizontal or vertical)
 @param anchor the anchor we want to connect to
 @return true if it's an anchor on the same dimension
 */
- (jboolean)isSimilarDimensionConnectionWithADXConstraintAnchor:(ADXConstraintAnchor *)anchor;

/*!
 @brief Checks if the connection to a given anchor is valid.
 @param anchor the anchor we want to connect to
 @return true if it's a compatible anchor
 */
- (jboolean)isValidConnectionWithADXConstraintAnchor:(ADXConstraintAnchor *)anchor;

/*!
 @brief Utility function returning true if this anchor is a vertical one.
 @return true if vertical anchor, false otherwise
 */
- (jboolean)isVerticalAnchor;

/*!
 @brief Resets the anchor's connection.
 */
- (void)reset;

- (void)resetFinalResolution;

/*!
 @brief Reset the solver variable
 */
- (void)resetSolverVariableWithADXCache:(ADXCache *)cache;

- (void)setFinalValueWithInt:(jint)finalValue;

/*!
 @brief Set the gone margin of the connection (if there's one)
 @param margin the new margin of the connection
 */
- (void)setGoneMarginWithInt:(jint)margin;

/*!
 @brief Set the margin of the connection (if there's one)
 @param margin the new margin of the connection
 */
- (void)setMarginWithInt:(jint)margin;

/*!
 @brief Return a string representation of this anchor
 @return string representation of the anchor
 */
- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXConstraintAnchor)

J2OBJC_FIELD_SETTER(ADXConstraintAnchor, mType_, ADXConstraintAnchor_Type *)
J2OBJC_FIELD_SETTER(ADXConstraintAnchor, mSolverVariable_, ADXSolverVariable *)

FOUNDATION_EXPORT void ADXConstraintAnchor_initWithADXConstraintWidget_withADXConstraintAnchor_Type_(ADXConstraintAnchor *self, ADXConstraintWidget *owner, ADXConstraintAnchor_Type *type);

FOUNDATION_EXPORT ADXConstraintAnchor *new_ADXConstraintAnchor_initWithADXConstraintWidget_withADXConstraintAnchor_Type_(ADXConstraintWidget *owner, ADXConstraintAnchor_Type *type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXConstraintAnchor *create_ADXConstraintAnchor_initWithADXConstraintWidget_withADXConstraintAnchor_Type_(ADXConstraintWidget *owner, ADXConstraintAnchor_Type *type);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintAnchor)

@compatibility_alias AndroidxConstraintlayoutCoreWidgetsConstraintAnchor ADXConstraintAnchor;

#endif

#if !defined (ADXConstraintAnchor_Type_) && (INCLUDE_ALL_ConstraintAnchor || defined(INCLUDE_ADXConstraintAnchor_Type))
#define ADXConstraintAnchor_Type_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ADXConstraintAnchor_Type_Enum) {
  ADXConstraintAnchor_Type_Enum_NONE = 0,
  ADXConstraintAnchor_Type_Enum_LEFT = 1,
  ADXConstraintAnchor_Type_Enum_TOP = 2,
  ADXConstraintAnchor_Type_Enum_RIGHT = 3,
  ADXConstraintAnchor_Type_Enum_BOTTOM = 4,
  ADXConstraintAnchor_Type_Enum_BASELINE = 5,
  ADXConstraintAnchor_Type_Enum_CENTER = 6,
  ADXConstraintAnchor_Type_Enum_CENTER_X = 7,
  ADXConstraintAnchor_Type_Enum_CENTER_Y = 8,
};

/*!
 @brief Define the type of anchor
 */
@interface ADXConstraintAnchor_Type : JavaLangEnum

#pragma mark Public

+ (ADXConstraintAnchor_Type *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ADXConstraintAnchor_Type_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ADXConstraintAnchor_Type)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_values_[];

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_NONE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, NONE)

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_LEFT(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, LEFT)

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_TOP(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, TOP)

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_RIGHT(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, RIGHT)

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_BOTTOM(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, BOTTOM)

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_BASELINE(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, BASELINE)

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_CENTER(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, CENTER)

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_CENTER_X(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, CENTER_X)

inline ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_get_CENTER_Y(void);
J2OBJC_ENUM_CONSTANT(ADXConstraintAnchor_Type, CENTER_Y)

FOUNDATION_EXPORT IOSObjectArray *ADXConstraintAnchor_Type_values(void);

FOUNDATION_EXPORT ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ADXConstraintAnchor_Type *ADXConstraintAnchor_Type_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ADXConstraintAnchor_Type)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ConstraintAnchor")
