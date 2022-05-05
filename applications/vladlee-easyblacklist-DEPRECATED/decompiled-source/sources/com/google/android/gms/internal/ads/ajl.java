package com.google.android.gms.internal.ads;

import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajl.class */
final class ajl extends InputStream {

    /* renamed from: a */
    private ajm f7482a;

    /* renamed from: b */
    private ahl f7483b;

    /* renamed from: c */
    private int f7484c;

    /* renamed from: d */
    private int f7485d;

    /* renamed from: e */
    private int f7486e;

    /* renamed from: f */
    private int f7487f;

    /* renamed from: g */
    private final /* synthetic */ ajh f7488g;

    public ajl(ajh ajhVar) {
        this.f7488g = ajhVar;
        m5189a();
    }

    /* renamed from: a */
    private final int m5188a(byte[] bArr, int i, int i2) {
        int i3 = i;
        int i4 = i2;
        while (true) {
            if (i4 <= 0) {
                break;
            }
            m5187b();
            if (this.f7483b != null) {
                int min = Math.min(this.f7484c - this.f7485d, i4);
                i3 = i3;
                if (bArr != null) {
                    this.f7483b.zza(bArr, this.f7485d, i3, min);
                    i3 += min;
                }
                this.f7485d += min;
                i4 -= min;
            } else if (i4 == i2) {
                return -1;
            }
        }
        return i2 - i4;
    }

    /* renamed from: a */
    private final void m5189a() {
        this.f7482a = new ajm(this.f7488g, (byte) 0);
        this.f7483b = (ahl) this.f7482a.next();
        this.f7484c = this.f7483b.size();
        this.f7485d = 0;
        this.f7486e = 0;
    }

    /* renamed from: b */
    private final void m5187b() {
        if (this.f7483b != null) {
            int i = this.f7485d;
            int i2 = this.f7484c;
            if (i == i2) {
                this.f7486e += i2;
                this.f7485d = 0;
                if (this.f7482a.hasNext()) {
                    this.f7483b = (ahl) this.f7482a.next();
                    this.f7484c = this.f7483b.size();
                    return;
                }
                this.f7483b = null;
                this.f7484c = 0;
            }
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f7488g.size() - (this.f7486e + this.f7485d);
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f7487f = this.f7486e + this.f7485d;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        m5187b();
        ahl ahlVar = this.f7483b;
        if (ahlVar == null) {
            return -1;
        }
        int i = this.f7485d;
        this.f7485d = i + 1;
        return ahlVar.zzfe(i) & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException();
        } else if (i >= 0 && i2 >= 0 && i2 <= bArr.length - i) {
            return m5188a(bArr, i, i2);
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // java.io.InputStream
    public final void reset() {
        synchronized (this) {
            m5189a();
            m5188a(null, 0, this.f7487f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            long j2 = j;
            if (j > 2147483647L) {
                j2 = 2147483647;
            }
            return m5188a(null, 0, (int) j2);
        }
        throw new IndexOutOfBoundsException();
    }
}
