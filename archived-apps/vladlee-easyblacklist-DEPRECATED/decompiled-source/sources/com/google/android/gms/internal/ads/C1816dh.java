package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.google.android.gms.internal.ads.dh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dh.class */
final class C1816dh extends FilterInputStream {

    /* renamed from: a */
    private final long f8382a;

    /* renamed from: b */
    private long f8383b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1816dh(InputStream inputStream, long j) {
        super(inputStream);
        this.f8382a = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final long m4736a() {
        return this.f8382a - this.f8383b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.f8383b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f8383b += read;
        }
        return read;
    }
}
