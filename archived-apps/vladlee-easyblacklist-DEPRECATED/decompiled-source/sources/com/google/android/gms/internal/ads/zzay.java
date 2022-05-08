package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzay.class */
public final class zzay extends ByteArrayOutputStream {

    /* renamed from: a */
    private final zzaj f11518a;

    public zzay(zzaj zzajVar, int i) {
        this.f11518a = zzajVar;
        this.buf = this.f11518a.zzc(Math.max(i, 256));
    }

    /* renamed from: a */
    private final void m4215a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] zzc = this.f11518a.zzc((this.count + i) << 1);
            System.arraycopy(this.buf, 0, zzc, 0, this.count);
            this.f11518a.zza(this.buf);
            this.buf = zzc;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11518a.zza(this.buf);
        this.buf = null;
        super.close();
    }

    public final void finalize() {
        this.f11518a.zza(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            m4215a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m4215a(i2);
            super.write(bArr, i, i2);
        }
    }
}
