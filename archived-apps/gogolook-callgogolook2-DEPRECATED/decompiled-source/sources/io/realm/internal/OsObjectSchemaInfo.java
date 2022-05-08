package io.realm.internal;

import io.realm.RealmFieldType;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/OsObjectSchemaInfo.class */
public class OsObjectSchemaInfo implements NativeObject {
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public long nativePtr;

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsObjectSchemaInfo$Builder.class */
    public static class Builder {
        public final String className;
        public final long[] computedPropertyPtrArray;
        public final long[] persistedPropertyPtrArray;
        public int persistedPropertyPtrCurPos = 0;
        public int computedPropertyPtrCurPos = 0;

        public Builder(String str, int i, int i2) {
            this.className = str;
            this.persistedPropertyPtrArray = new long[i];
            this.computedPropertyPtrArray = new long[i2];
        }

        public Builder addComputedLinkProperty(String str, String str2, String str3) {
            long nativeCreateComputedLinkProperty = Property.nativeCreateComputedLinkProperty(str, str2, str3);
            long[] jArr = this.computedPropertyPtrArray;
            int i = this.computedPropertyPtrCurPos;
            jArr[i] = nativeCreateComputedLinkProperty;
            this.computedPropertyPtrCurPos = i + 1;
            return this;
        }

        public Builder addPersistedLinkProperty(String str, RealmFieldType realmFieldType, String str2) {
            long nativeCreatePersistedLinkProperty = Property.nativeCreatePersistedLinkProperty(str, Property.convertFromRealmFieldType(realmFieldType, false), str2);
            long[] jArr = this.persistedPropertyPtrArray;
            int i = this.persistedPropertyPtrCurPos;
            jArr[i] = nativeCreatePersistedLinkProperty;
            this.persistedPropertyPtrCurPos = i + 1;
            return this;
        }

        public Builder addPersistedProperty(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
            long nativeCreatePersistedProperty = Property.nativeCreatePersistedProperty(str, Property.convertFromRealmFieldType(realmFieldType, z3), z, z2);
            long[] jArr = this.persistedPropertyPtrArray;
            int i = this.persistedPropertyPtrCurPos;
            jArr[i] = nativeCreatePersistedProperty;
            this.persistedPropertyPtrCurPos = i + 1;
            return this;
        }

        public Builder addPersistedValueListProperty(String str, RealmFieldType realmFieldType, boolean z) {
            long nativeCreatePersistedProperty = Property.nativeCreatePersistedProperty(str, Property.convertFromRealmFieldType(realmFieldType, z), false, false);
            long[] jArr = this.persistedPropertyPtrArray;
            int i = this.persistedPropertyPtrCurPos;
            jArr[i] = nativeCreatePersistedProperty;
            this.persistedPropertyPtrCurPos = i + 1;
            return this;
        }

        public OsObjectSchemaInfo build() {
            if (this.persistedPropertyPtrCurPos == -1 || this.computedPropertyPtrCurPos == -1) {
                throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
            }
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo(this.className);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.nativePtr, this.persistedPropertyPtrArray, this.computedPropertyPtrArray);
            this.persistedPropertyPtrCurPos = -1;
            this.computedPropertyPtrCurPos = -1;
            return osObjectSchemaInfo;
        }
    }

    public OsObjectSchemaInfo(long j) {
        this.nativePtr = j;
        NativeContext.dummyContext.addReference(this);
    }

    public OsObjectSchemaInfo(String str) {
        this(nativeCreateRealmObjectSchema(str));
    }

    public static native void nativeAddProperties(long j, long[] jArr, long[] jArr2);

    public static native long nativeCreateRealmObjectSchema(String str);

    public static native String nativeGetClassName(long j);

    public static native long nativeGetFinalizerPtr();

    public static native long nativeGetMaxColumnIndex(long j);

    public static native long nativeGetPrimaryKeyProperty(long j);

    public static native long nativeGetProperty(long j, String str);

    public String getClassName() {
        return nativeGetClassName(this.nativePtr);
    }

    public long getMaxColumnIndex() {
        return nativeGetMaxColumnIndex(this.nativePtr);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Nullable
    public Property getPrimaryKeyProperty() {
        return nativeGetPrimaryKeyProperty(this.nativePtr) == 0 ? null : new Property(nativeGetPrimaryKeyProperty(this.nativePtr));
    }

    public Property getProperty(String str) {
        return new Property(nativeGetProperty(this.nativePtr, str));
    }
}
