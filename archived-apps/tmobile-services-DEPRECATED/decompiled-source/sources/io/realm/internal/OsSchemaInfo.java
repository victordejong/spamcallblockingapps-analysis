package io.realm.internal;

import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsSchemaInfo.class */
public class OsSchemaInfo implements NativeObject {

    /* renamed from: h */
    private static final long f20155h = nativeGetFinalizerPtr();

    /* renamed from: f */
    private long f20156f;

    /* renamed from: g */
    private final OsSharedRealm f20157g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OsSchemaInfo(long j, OsSharedRealm osSharedRealm) {
        this.f20156f = j;
        this.f20157g = osSharedRealm;
    }

    public OsSchemaInfo(Collection<OsObjectSchemaInfo> collection) {
        this.f20156f = nativeCreateFromList(m2702a(collection));
        NativeContext.f20097c.m2829a(this);
    }

    /* renamed from: a */
    private static long[] m2702a(Collection<OsObjectSchemaInfo> collection) {
        long[] jArr = new long[collection.size()];
        int i = 0;
        for (OsObjectSchemaInfo osObjectSchemaInfo : collection) {
            jArr[i] = osObjectSchemaInfo.getNativePtr();
            i++;
        }
        return jArr;
    }

    private static native long nativeCreateFromList(long[] jArr);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetObjectSchemaInfo(long j, String str);

    /* renamed from: b */
    public OsObjectSchemaInfo m2701b(String str) {
        return new OsObjectSchemaInfo(nativeGetObjectSchemaInfo(this.f20156f, str));
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20155h;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20156f;
    }
}
