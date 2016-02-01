//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/Application/src/shared/java//com/example/android/common/logger/Log.java
//

#ifndef _ComExampleAndroidCommonLoggerLog_H_
#define _ComExampleAndroidCommonLoggerLog_H_

#include "J2ObjC_header.h"

@class JavaLangThrowable;
@protocol ComExampleAndroidCommonLoggerLogNode;

#define ComExampleAndroidCommonLoggerLog_NONE -1
#define ComExampleAndroidCommonLoggerLog_VERBOSE 2
#define ComExampleAndroidCommonLoggerLog_DEBUG 3
#define ComExampleAndroidCommonLoggerLog_INFO 4
#define ComExampleAndroidCommonLoggerLog_WARN 5
#define ComExampleAndroidCommonLoggerLog_ERROR 6
#define ComExampleAndroidCommonLoggerLog_ASSERT 7

@interface ComExampleAndroidCommonLoggerLog : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)msg;

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)msg
withJavaLangThrowable:(JavaLangThrowable *)tr;

+ (void)eWithNSString:(NSString *)tag
         withNSString:(NSString *)msg;

+ (void)eWithNSString:(NSString *)tag
         withNSString:(NSString *)msg
withJavaLangThrowable:(JavaLangThrowable *)tr;

+ (id<ComExampleAndroidCommonLoggerLogNode>)getLogNode;

+ (void)iWithNSString:(NSString *)tag
         withNSString:(NSString *)msg;

+ (void)iWithNSString:(NSString *)tag
         withNSString:(NSString *)msg
withJavaLangThrowable:(JavaLangThrowable *)tr;

+ (void)printlnWithInt:(jint)priority
          withNSString:(NSString *)tag
          withNSString:(NSString *)msg;

+ (void)printlnWithInt:(jint)priority
          withNSString:(NSString *)tag
          withNSString:(NSString *)msg
 withJavaLangThrowable:(JavaLangThrowable *)tr;

+ (void)setLogNodeWithComExampleAndroidCommonLoggerLogNode:(id<ComExampleAndroidCommonLoggerLogNode>)node;

+ (void)vWithNSString:(NSString *)tag
         withNSString:(NSString *)msg;

+ (void)vWithNSString:(NSString *)tag
         withNSString:(NSString *)msg
withJavaLangThrowable:(JavaLangThrowable *)tr;

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)msg;

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)msg
withJavaLangThrowable:(JavaLangThrowable *)tr;

+ (void)wWithNSString:(NSString *)tag
withJavaLangThrowable:(JavaLangThrowable *)tr;

+ (void)wtfWithNSString:(NSString *)tag
           withNSString:(NSString *)msg;

+ (void)wtfWithNSString:(NSString *)tag
           withNSString:(NSString *)msg
  withJavaLangThrowable:(JavaLangThrowable *)tr;

+ (void)wtfWithNSString:(NSString *)tag
  withJavaLangThrowable:(JavaLangThrowable *)tr;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleAndroidCommonLoggerLog)

J2OBJC_STATIC_FIELD_GETTER(ComExampleAndroidCommonLoggerLog, NONE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComExampleAndroidCommonLoggerLog, VERBOSE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComExampleAndroidCommonLoggerLog, DEBUG, jint)

J2OBJC_STATIC_FIELD_GETTER(ComExampleAndroidCommonLoggerLog, INFO, jint)

J2OBJC_STATIC_FIELD_GETTER(ComExampleAndroidCommonLoggerLog, WARN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComExampleAndroidCommonLoggerLog, ERROR, jint)

J2OBJC_STATIC_FIELD_GETTER(ComExampleAndroidCommonLoggerLog, ASSERT, jint)

FOUNDATION_EXPORT id<ComExampleAndroidCommonLoggerLogNode> ComExampleAndroidCommonLoggerLog_getLogNode();

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_setLogNodeWithComExampleAndroidCommonLoggerLogNode_(id<ComExampleAndroidCommonLoggerLogNode> node);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_printlnWithInt_withNSString_withNSString_withJavaLangThrowable_(jint priority, NSString *tag, NSString *msg, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_printlnWithInt_withNSString_withNSString_(jint priority, NSString *tag, NSString *msg);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_vWithNSString_withNSString_withJavaLangThrowable_(NSString *tag, NSString *msg, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_vWithNSString_withNSString_(NSString *tag, NSString *msg);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_dWithNSString_withNSString_withJavaLangThrowable_(NSString *tag, NSString *msg, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_dWithNSString_withNSString_(NSString *tag, NSString *msg);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_iWithNSString_withNSString_withJavaLangThrowable_(NSString *tag, NSString *msg, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_iWithNSString_withNSString_(NSString *tag, NSString *msg);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_wWithNSString_withNSString_withJavaLangThrowable_(NSString *tag, NSString *msg, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_wWithNSString_withNSString_(NSString *tag, NSString *msg);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_wWithNSString_withJavaLangThrowable_(NSString *tag, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_eWithNSString_withNSString_withJavaLangThrowable_(NSString *tag, NSString *msg, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_eWithNSString_withNSString_(NSString *tag, NSString *msg);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_wtfWithNSString_withNSString_withJavaLangThrowable_(NSString *tag, NSString *msg, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_wtfWithNSString_withNSString_(NSString *tag, NSString *msg);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_wtfWithNSString_withJavaLangThrowable_(NSString *tag, JavaLangThrowable *tr);

FOUNDATION_EXPORT void ComExampleAndroidCommonLoggerLog_init(ComExampleAndroidCommonLoggerLog *self);

FOUNDATION_EXPORT ComExampleAndroidCommonLoggerLog *new_ComExampleAndroidCommonLoggerLog_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComExampleAndroidCommonLoggerLog)

#endif // _ComExampleAndroidCommonLoggerLog_H_
