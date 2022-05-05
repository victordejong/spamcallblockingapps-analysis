package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* renamed from: com.google.android.gms.internal.ads.hb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hb.class */
final class C1918hb extends ThreadLocal<ByteBuffer> {
    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ ByteBuffer initialValue() {
        return ByteBuffer.allocate(32);
    }
}
