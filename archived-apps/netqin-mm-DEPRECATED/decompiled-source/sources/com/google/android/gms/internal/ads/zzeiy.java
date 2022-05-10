package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeiy.class */
public final class zzeiy extends OutputStream {

    /* renamed from: f */
    public static final byte[] f28048f = new byte[0];

    /* renamed from: c */
    public int f28051c;

    /* renamed from: e */
    public int f28053e;

    /* renamed from: a */
    public final int f28049a = 128;

    /* renamed from: b */
    public final ArrayList<zzeip> f28050b = new ArrayList<>();

    /* renamed from: d */
    public byte[] f28052d = new byte[128];

    public zzeiy(int i) {
    }

    /* renamed from: a */
    public final zzeip m12533a() {
        zzeip zzl;
        synchronized (this) {
            if (this.f28053e >= this.f28052d.length) {
                this.f28050b.add(new zzeiz(this.f28052d));
                this.f28052d = f28048f;
            } else if (this.f28053e > 0) {
                byte[] bArr = this.f28052d;
                int i = this.f28053e;
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
                this.f28050b.add(new zzeiz(bArr2));
            }
            this.f28051c += this.f28053e;
            this.f28053e = 0;
            zzl = zzeip.zzl(this.f28050b);
        }
        return zzl;
    }

    /* renamed from: a */
    public final void m12532a(int i) {
        this.f28050b.add(new zzeiz(this.f28052d));
        int length = this.f28051c + this.f28052d.length;
        this.f28051c = length;
        this.f28052d = new byte[Math.max(this.f28049a, Math.max(i, length >>> 1))];
        this.f28053e = 0;
    }

    public final int size() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f28051c;
            i2 = this.f28053e;
        }
        return i + i2;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (this.f28053e == this.f28052d.length) {
                m12532a(1);
            }
            byte[] bArr = this.f28052d;
            int i2 = this.f28053e;
            this.f28053e = i2 + 1;
            bArr[i2] = (byte) i;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            if (i2 <= this.f28052d.length - this.f28053e) {
                System.arraycopy(bArr, i, this.f28052d, this.f28053e, i2);
                this.f28053e += i2;
                return;
            }
            int length = this.f28052d.length - this.f28053e;
            System.arraycopy(bArr, i, this.f28052d, this.f28053e, length);
            int i3 = i2 - length;
            m12532a(i3);
            System.arraycopy(bArr, i + length, this.f28052d, 0, i3);
            this.f28053e = i3;
        }
    }
}
