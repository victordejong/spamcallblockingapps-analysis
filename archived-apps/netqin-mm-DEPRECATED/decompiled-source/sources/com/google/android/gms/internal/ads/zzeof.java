package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeof.class */
public abstract class zzeof extends zzeoe implements zzbp {

    /* renamed from: i */
    public int f28109i;

    public zzeof(String str) {
        super(str);
    }

    /* renamed from: b */
    public final long m12215b(ByteBuffer byteBuffer) {
        this.f28109i = zzbq.m15190a(byteBuffer.get());
        zzbq.m15188b(byteBuffer);
        zzbq.m15190a(byteBuffer.get());
        return 4L;
    }

    /* renamed from: c */
    public final int m12214c() {
        if (!this.f28103b) {
            m12216b();
        }
        return this.f28109i;
    }
}
