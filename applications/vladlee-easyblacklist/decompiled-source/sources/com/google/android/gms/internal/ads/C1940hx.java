package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* renamed from: com.google.android.gms.internal.ads.hx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hx.class */
final class C1940hx implements zzdws {

    /* renamed from: a */
    private final ByteBuffer f8581a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1940hx(ByteBuffer byteBuffer) {
        this.f8581a = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.zzdws, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final long position() {
        return this.f8581a.position();
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final int read(ByteBuffer byteBuffer) {
        if (this.f8581a.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), this.f8581a.remaining());
        byte[] bArr = new byte[min];
        this.f8581a.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final long size() {
        return this.f8581a.limit();
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final void zzfc(long j) {
        this.f8581a.position((int) j);
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final ByteBuffer zzh(long j, long j2) {
        int position = this.f8581a.position();
        this.f8581a.position((int) j);
        ByteBuffer slice = this.f8581a.slice();
        slice.limit((int) j2);
        this.f8581a.position(position);
        return slice;
    }
}
