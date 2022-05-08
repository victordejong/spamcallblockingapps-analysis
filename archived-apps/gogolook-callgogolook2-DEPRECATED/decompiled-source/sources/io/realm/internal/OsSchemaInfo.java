package io.realm.internal;

import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/OsSchemaInfo.class */
public class OsSchemaInfo implements NativeObject {
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public long nativePtr;
    public final OsSharedRealm sharedRealm;

    public OsSchemaInfo(long j, OsSharedRealm osSharedRealm) {
        this.nativePtr = j;
        this.sharedRealm = osSharedRealm;
    }

    public OsSchemaInfo(Collection<OsObjectSchemaInfo> collection) {
        this.nativePtr = nativeCreateFromList(convertObjectSchemaInfoListToNativePointerArray(collection));
        NativeContext.dummyContext.addReference(this);
        this.sharedRealm = null;
    }

    public static long[] convertObjectSchemaInfoListToNativePointerArray(Collection<OsObjectSchemaInfo> collection) {
        long[] jArr = new long[collection.size()];
        int i = 0;
        for (OsObjectSchemaInfo osObjectSchemaInfo : collection) {
            jArr[i] = osObjectSchemaInfo.getNativePtr();
            i++;
        }
        return jArr;
    }

    public static native long nativeCreateFromList(long[] jArr);

    public static native long nativeGetFinalizerPtr();

    public static native long nativeGetObjectSchemaInfo(long j, String str);

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public OsObjectSchemaInfo getObjectSchemaInfo(String str) {
        return new OsObjectSchemaInfo(nativeGetObjectSchemaInfo(this.nativePtr, str));
    }
}
