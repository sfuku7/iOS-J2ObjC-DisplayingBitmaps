//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: stub-classes//android/support/v4/util/LruCache.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/support/v4/util/LruCache.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface AndroidSupportV4UtilLruCache () {
 @public
  JavaUtilLinkedHashMap *map_;
  jint size_;
  jint maxSize_;
  jint putCount_;
  jint createCount_;
  jint evictionCount_;
  jint hitCount_;
  jint missCount_;
}

- (jint)safeSizeOfWithId:(id)key
                  withId:(id)value;

@end

J2OBJC_FIELD_SETTER(AndroidSupportV4UtilLruCache, map_, JavaUtilLinkedHashMap *)

__attribute__((unused)) static jint AndroidSupportV4UtilLruCache_safeSizeOfWithId_withId_(AndroidSupportV4UtilLruCache *self, id key, id value);

@implementation AndroidSupportV4UtilLruCache

- (instancetype)initWithInt:(jint)maxSize {
  AndroidSupportV4UtilLruCache_initWithInt_(self, maxSize);
  return self;
}

- (void)resizeWithInt:(jint)maxSize {
  if (maxSize <= 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"maxSize <= 0") autorelease];
  }
  @synchronized(self) {
    self->maxSize_ = maxSize;
  }
  [self trimToSizeWithInt:maxSize];
}

- (id)getWithId:(id)key {
  if (key == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"key == null") autorelease];
  }
  id mapValue;
  @synchronized(self) {
    mapValue = [((JavaUtilLinkedHashMap *) nil_chk(map_)) getWithId:key];
    if (mapValue != nil) {
      hitCount_++;
      return mapValue;
    }
    missCount_++;
  }
  id createdValue = [self createWithId:key];
  if (createdValue == nil) {
    return nil;
  }
  @synchronized(self) {
    createCount_++;
    mapValue = [map_ putWithId:key withId:createdValue];
    if (mapValue != nil) {
      [map_ putWithId:key withId:mapValue];
    }
    else {
      size_ += AndroidSupportV4UtilLruCache_safeSizeOfWithId_withId_(self, key, createdValue);
    }
  }
  if (mapValue != nil) {
    [self entryRemovedWithBoolean:false withId:key withId:createdValue withId:mapValue];
    return mapValue;
  }
  else {
    [self trimToSizeWithInt:maxSize_];
    return createdValue;
  }
}

- (id)putWithId:(id)key
         withId:(id)value {
  if (key == nil || value == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"key == null || value == null") autorelease];
  }
  id previous;
  @synchronized(self) {
    putCount_++;
    size_ += AndroidSupportV4UtilLruCache_safeSizeOfWithId_withId_(self, key, value);
    previous = [((JavaUtilLinkedHashMap *) nil_chk(map_)) putWithId:key withId:value];
    if (previous != nil) {
      size_ -= AndroidSupportV4UtilLruCache_safeSizeOfWithId_withId_(self, key, previous);
    }
  }
  if (previous != nil) {
    [self entryRemovedWithBoolean:false withId:key withId:previous withId:value];
  }
  [self trimToSizeWithInt:maxSize_];
  return previous;
}

- (void)trimToSizeWithInt:(jint)maxSize {
  while (true) {
    id key;
    id value;
    @synchronized(self) {
      if (size_ < 0 || ([((JavaUtilLinkedHashMap *) nil_chk(map_)) isEmpty] && size_ != 0)) {
        @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$", [[self getClass] getName], @".sizeOf() is reporting inconsistent results!")) autorelease];
      }
      if (size_ <= maxSize || [((JavaUtilLinkedHashMap *) nil_chk(map_)) isEmpty]) {
        break;
      }
      id<JavaUtilMap_Entry> toEvict = [((id<JavaUtilIterator>) nil_chk([((id<JavaUtilSet>) nil_chk([((JavaUtilLinkedHashMap *) nil_chk(map_)) entrySet])) iterator])) next];
      key = [((id<JavaUtilMap_Entry>) nil_chk(toEvict)) getKey];
      value = [toEvict getValue];
      [map_ removeWithId:key];
      size_ -= AndroidSupportV4UtilLruCache_safeSizeOfWithId_withId_(self, key, value);
      evictionCount_++;
    }
    [self entryRemovedWithBoolean:true withId:key withId:value withId:nil];
  }
}

- (id)removeWithId:(id)key {
  if (key == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"key == null") autorelease];
  }
  id previous;
  @synchronized(self) {
    previous = [((JavaUtilLinkedHashMap *) nil_chk(map_)) removeWithId:key];
    if (previous != nil) {
      size_ -= AndroidSupportV4UtilLruCache_safeSizeOfWithId_withId_(self, key, previous);
    }
  }
  if (previous != nil) {
    [self entryRemovedWithBoolean:false withId:key withId:previous withId:nil];
  }
  return previous;
}

- (void)entryRemovedWithBoolean:(jboolean)evicted
                         withId:(id)key
                         withId:(id)oldValue
                         withId:(id)newValue {
}

- (id)createWithId:(id)key {
  return nil;
}

- (jint)safeSizeOfWithId:(id)key
                  withId:(id)value {
  return AndroidSupportV4UtilLruCache_safeSizeOfWithId_withId_(self, key, value);
}

- (jint)sizeOfWithId:(id)key
              withId:(id)value {
  return 1;
}

- (void)evictAll {
  [self trimToSizeWithInt:-1];
}

- (jint)size {
  @synchronized(self) {
    return size_;
  }
}

- (jint)maxSize {
  @synchronized(self) {
    return maxSize_;
  }
}

- (jint)hitCount {
  @synchronized(self) {
    return hitCount_;
  }
}

- (jint)missCount {
  @synchronized(self) {
    return missCount_;
  }
}

- (jint)createCount {
  @synchronized(self) {
    return createCount_;
  }
}

- (jint)putCount {
  @synchronized(self) {
    return putCount_;
  }
}

- (jint)evictionCount {
  @synchronized(self) {
    return evictionCount_;
  }
}

- (id<JavaUtilMap>)snapshot {
  @synchronized(self) {
    return [new_JavaUtilLinkedHashMap_initWithJavaUtilMap_(map_) autorelease];
  }
}

- (NSString *)description {
  @synchronized(self) {
    jint accesses = hitCount_ + missCount_;
    jint hitPercent = accesses != 0 ? (100 * hitCount_ / accesses) : 0;
    return NSString_formatWithNSString_withNSObjectArray_(@"LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", [IOSObjectArray arrayWithObjects:(id[]){ JavaLangInteger_valueOfWithInt_(maxSize_), JavaLangInteger_valueOfWithInt_(hitCount_), JavaLangInteger_valueOfWithInt_(missCount_), JavaLangInteger_valueOfWithInt_(hitPercent) } count:4 type:NSObject_class_()]);
  }
}

- (void)dealloc {
  RELEASE_(map_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "LruCache", NULL, 0x1, NULL, NULL },
    { "resizeWithInt:", "resize", "V", 0x1, NULL, NULL },
    { "getWithId:", "get", "TV;", 0x11, NULL, "(TK;)TV;" },
    { "putWithId:withId:", "put", "TV;", 0x11, NULL, "(TK;TV;)TV;" },
    { "trimToSizeWithInt:", "trimToSize", "V", 0x1, NULL, NULL },
    { "removeWithId:", "remove", "TV;", 0x11, NULL, "(TK;)TV;" },
    { "entryRemovedWithBoolean:withId:withId:withId:", "entryRemoved", "V", 0x4, NULL, "(ZTK;TV;TV;)V" },
    { "createWithId:", "create", "TV;", 0x4, NULL, "(TK;)TV;" },
    { "safeSizeOfWithId:withId:", "safeSizeOf", "I", 0x2, NULL, "(TK;TV;)I" },
    { "sizeOfWithId:withId:", "sizeOf", "I", 0x4, NULL, "(TK;TV;)I" },
    { "evictAll", NULL, "V", 0x11, NULL, NULL },
    { "size", NULL, "I", 0x31, NULL, NULL },
    { "maxSize", NULL, "I", 0x31, NULL, NULL },
    { "hitCount", NULL, "I", 0x31, NULL, NULL },
    { "missCount", NULL, "I", 0x31, NULL, NULL },
    { "createCount", NULL, "I", 0x31, NULL, NULL },
    { "putCount", NULL, "I", 0x31, NULL, NULL },
    { "evictionCount", NULL, "I", 0x31, NULL, NULL },
    { "snapshot", NULL, "Ljava.util.Map;", 0x31, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x31, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "map_", NULL, 0x12, "Ljava.util.LinkedHashMap;", NULL, "Ljava/util/LinkedHashMap<TK;TV;>;", .constantValue.asLong = 0 },
    { "size_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "putCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "createCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "evictionCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "hitCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "missCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _AndroidSupportV4UtilLruCache = { 2, "LruCache", "android.support.v4.util", NULL, 0x1, 20, methods, 8, fields, 0, NULL, 0, NULL, NULL, "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_AndroidSupportV4UtilLruCache;
}

@end

void AndroidSupportV4UtilLruCache_initWithInt_(AndroidSupportV4UtilLruCache *self, jint maxSize) {
  NSObject_init(self);
  if (maxSize <= 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"maxSize <= 0") autorelease];
  }
  self->maxSize_ = maxSize;
  JreStrongAssignAndConsume(&self->map_, new_JavaUtilLinkedHashMap_initWithInt_withFloat_withBoolean_(0, 0.75f, true));
}

AndroidSupportV4UtilLruCache *new_AndroidSupportV4UtilLruCache_initWithInt_(jint maxSize) {
  AndroidSupportV4UtilLruCache *self = [AndroidSupportV4UtilLruCache alloc];
  AndroidSupportV4UtilLruCache_initWithInt_(self, maxSize);
  return self;
}

jint AndroidSupportV4UtilLruCache_safeSizeOfWithId_withId_(AndroidSupportV4UtilLruCache *self, id key, id value) {
  jint result = [self sizeOfWithId:key withId:value];
  if (result < 0) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@C@", @"Negative size: ", key, '=', value)) autorelease];
  }
  return result;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidSupportV4UtilLruCache)
