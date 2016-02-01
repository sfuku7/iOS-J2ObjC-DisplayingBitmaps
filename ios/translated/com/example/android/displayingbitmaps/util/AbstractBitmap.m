//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/Application/src/shared/java//com/example/android/displayingbitmaps/util/AbstractBitmap.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/example/android/displayingbitmaps/util/AbstractBitmap.h"
#include "java/io/OutputStream.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

@interface ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap : NSObject

@end

__attribute__((unused)) static void ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initWithNSString_withInt_(ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *new_ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compressWithComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum:withInt:withJavaIoOutputStream:", "compress", "Z", 0x401, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lcom.example.android.displayingbitmaps.util.AbstractBitmap$CompressFormat;"};
  static const J2ObjcClassInfo _ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap = { 2, "AbstractBitmap", "com.example.android.displayingbitmaps.util", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap)

J2OBJC_INITIALIZED_DEFN(ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum)

ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_values_[2];

@implementation ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_values() {
  ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_values_ count:2 type:ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_values();
}

+ (ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *)valueOfWithNSString:(NSString *)name {
  return ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_valueOfWithNSString_(name);
}

ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_valueOfWithNSString_(NSString *name) {
  ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initialize();
  for (int i = 0; i < 2; i++) {
    ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *e = ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum class]) {
    ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_JPEG = new_ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initWithNSString_withInt_(@"JPEG", 0);
    ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_PNG = new_ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initWithNSString_withInt_(@"PNG", 1);
    J2OBJC_SET_INITIALIZED(ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "JPEG", "JPEG", 0x4019, "Lcom.example.android.displayingbitmaps.util.AbstractBitmap$CompressFormat;", &ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_JPEG, NULL, .constantValue.asLong = 0 },
    { "PNG", "PNG", 0x4019, "Lcom.example.android.displayingbitmaps.util.AbstractBitmap$CompressFormat;", &ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_PNG, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lcom.example.android.displayingbitmaps.util.AbstractBitmap$CompressFormat;"};
  static const J2ObjcClassInfo _ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum = { 2, "CompressFormat", "com.example.android.displayingbitmaps.util", "AbstractBitmap", 0x4019, 0, NULL, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lcom/example/android/displayingbitmaps/util/AbstractBitmap$CompressFormat;>;" };
  return &_ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum;
}

@end

void ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initWithNSString_withInt_(ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *new_ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum *self = [ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum alloc];
  ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComExampleAndroidDisplayingbitmapsUtilAbstractBitmap_CompressFormatEnum)
