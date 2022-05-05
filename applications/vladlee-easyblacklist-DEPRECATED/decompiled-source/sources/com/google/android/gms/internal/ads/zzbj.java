package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbj.class */
public final class zzbj extends zzdwl {

    /* renamed from: b */
    private ByteBuffer f11950b;

    public zzbj(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzdwl
    public final void zzg(ByteBuffer byteBuffer) {
        this.f11950b = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
