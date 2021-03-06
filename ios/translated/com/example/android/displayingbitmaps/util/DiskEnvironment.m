//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/Application/src/shared/java//com/example/android/displayingbitmaps/util/DiskEnvironment.java
//

#include "J2ObjC_source.h"
#include "com/example/android/displayingbitmaps/util/DiskEnvironment.h"
#include "java/io/File.h"

@implementation ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment

- (NSString *)getDiskCacheDirPathWithNSString:(NSString *)uniqueName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getUsableSpaceWithNSString:(NSString *)path {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaIoFile *)getDiskCacheDirWithNSString:(NSString *)uniqueName {
  return [new_JavaIoFile_initWithNSString_([self getDiskCacheDirPathWithNSString:uniqueName]) autorelease];
}

- (jlong)getUsableSpaceWithJavaIoFile:(JavaIoFile *)path {
  return [self getUsableSpaceWithNSString:[((JavaIoFile *) nil_chk(path)) description]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDiskCacheDirPathWithNSString:", "getDiskCacheDirPath", "Ljava.lang.String;", 0x404, NULL, NULL },
    { "getUsableSpaceWithNSString:", "getUsableSpace", "J", 0x404, NULL, NULL },
    { "init", "DiskEnvironment", NULL, 0x0, NULL, NULL },
    { "getDiskCacheDirWithNSString:", "getDiskCacheDir", "Ljava.io.File;", 0x1, NULL, NULL },
    { "getUsableSpaceWithJavaIoFile:", "getUsableSpace", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment = { 2, "DiskEnvironment", "com.example.android.displayingbitmaps.util", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment;
}

@end

void ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment_init(ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment *self) {
  NSObject_init(self);
  ;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComExampleAndroidDisplayingbitmapsUtilDiskEnvironment)
