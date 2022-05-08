package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.util.TypeKey;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap.class */
public final class ReadOnlyClassToSerializerMap {
    public final Bucket[] _buckets;
    public final int _mask;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket.class */
    public static final class Bucket {
        public final Class<?> _class;
        public final boolean _isTyped;
        public final JavaType _type;
        public final Bucket next;
        public final JsonSerializer<Object> value;

        public Bucket(Bucket bucket, TypeKey typeKey, JsonSerializer<Object> jsonSerializer) {
            this.next = bucket;
            this.value = jsonSerializer;
            this._isTyped = typeKey.isTyped();
            this._class = typeKey.getRawType();
            this._type = typeKey.getType();
        }

        public boolean matchesTyped(JavaType javaType) {
            return this._isTyped && javaType.equals(this._type);
        }

        public boolean matchesTyped(Class<?> cls) {
            return this._class == cls && this._isTyped;
        }

        public boolean matchesUntyped(JavaType javaType) {
            return !this._isTyped && javaType.equals(this._type);
        }

        public boolean matchesUntyped(Class<?> cls) {
            return this._class == cls && !this._isTyped;
        }
    }

    public ReadOnlyClassToSerializerMap(Map<TypeKey, JsonSerializer<Object>> map) {
        int findSize = findSize(map.size());
        this._mask = findSize - 1;
        Bucket[] bucketArr = new Bucket[findSize];
        for (Map.Entry<TypeKey, JsonSerializer<Object>> entry : map.entrySet()) {
            TypeKey key = entry.getKey();
            int hashCode = key.hashCode() & this._mask;
            bucketArr[hashCode] = new Bucket(bucketArr[hashCode], key, entry.getValue());
        }
        this._buckets = bucketArr;
    }

    public static final int findSize(int i) {
        int i2 = 8;
        while (i2 < (i <= 64 ? i + i : i + (i >> 2))) {
            i2 += i2;
        }
        return i2;
    }

    public static ReadOnlyClassToSerializerMap from(HashMap<TypeKey, JsonSerializer<Object>> hashMap) {
        return new ReadOnlyClassToSerializerMap(hashMap);
    }

    public JsonSerializer<Object> typedValueSerializer(JavaType javaType) {
        Bucket bucket;
        Bucket bucket2 = this._buckets[TypeKey.typedHash(javaType) & this._mask];
        if (bucket2 == null) {
            return null;
        }
        Bucket bucket3 = bucket2;
        if (bucket2.matchesTyped(javaType)) {
            return bucket2.value;
        }
        do {
            bucket = bucket3.next;
            if (bucket == null) {
                return null;
            }
            bucket3 = bucket;
        } while (!bucket.matchesTyped(javaType));
        return bucket.value;
    }

    public JsonSerializer<Object> typedValueSerializer(Class<?> cls) {
        Bucket bucket;
        Bucket bucket2 = this._buckets[TypeKey.typedHash(cls) & this._mask];
        if (bucket2 == null) {
            return null;
        }
        Bucket bucket3 = bucket2;
        if (bucket2.matchesTyped(cls)) {
            return bucket2.value;
        }
        do {
            bucket = bucket3.next;
            if (bucket == null) {
                return null;
            }
            bucket3 = bucket;
        } while (!bucket.matchesTyped(cls));
        return bucket.value;
    }

    public JsonSerializer<Object> untypedValueSerializer(JavaType javaType) {
        Bucket bucket;
        Bucket bucket2 = this._buckets[TypeKey.untypedHash(javaType) & this._mask];
        if (bucket2 == null) {
            return null;
        }
        Bucket bucket3 = bucket2;
        if (bucket2.matchesUntyped(javaType)) {
            return bucket2.value;
        }
        do {
            bucket = bucket3.next;
            if (bucket == null) {
                return null;
            }
            bucket3 = bucket;
        } while (!bucket.matchesUntyped(javaType));
        return bucket.value;
    }

    public JsonSerializer<Object> untypedValueSerializer(Class<?> cls) {
        Bucket bucket;
        Bucket bucket2 = this._buckets[TypeKey.untypedHash(cls) & this._mask];
        if (bucket2 == null) {
            return null;
        }
        Bucket bucket3 = bucket2;
        if (bucket2.matchesUntyped(cls)) {
            return bucket2.value;
        }
        do {
            bucket = bucket3.next;
            if (bucket == null) {
                return null;
            }
            bucket3 = bucket;
        } while (!bucket.matchesUntyped(cls));
        return bucket.value;
    }
}
