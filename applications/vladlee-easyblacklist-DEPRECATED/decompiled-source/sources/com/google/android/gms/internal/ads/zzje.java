package com.google.android.gms.internal.ads;

import com.crashlytics.android.core.CodedOutputStream;
import java.io.EOFException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzje.class */
public final class zzje implements zzjg {

    /* renamed from: a */
    private static final byte[] f14957a = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];

    /* renamed from: b */
    private final zznl f14958b;

    /* renamed from: c */
    private final long f14959c;

    /* renamed from: d */
    private long f14960d;

    /* renamed from: e */
    private byte[] f14961e = new byte[65536];

    /* renamed from: f */
    private int f14962f;

    /* renamed from: g */
    private int f14963g;

    public zzje(zznl zznlVar, long j, long j2) {
        this.f14958b = zznlVar;
        this.f14960d = j;
        this.f14959c = j2;
    }

    /* renamed from: a */
    private final int m3224a(byte[] bArr, int i, int i2) {
        int i3 = this.f14963g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f14961e, 0, bArr, i, min);
        m3221c(min);
        return min;
    }

    /* renamed from: a */
    private final int m3223a(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int read = this.f14958b.read(bArr, i + i3, i2 - i3);
            if (read != -1) {
                return i3 + read;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    /* renamed from: a */
    private final boolean m3225a(int i) {
        int i2 = this.f14962f + i;
        byte[] bArr = this.f14961e;
        if (i2 > bArr.length) {
            this.f14961e = Arrays.copyOf(this.f14961e, zzoq.zzd(bArr.length << 1, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.f14963g - this.f14962f, i);
        while (min < i) {
            int a = m3223a(this.f14961e, this.f14962f, i, min, false);
            min = a;
            if (a == -1) {
                return false;
            }
        }
        this.f14962f += i;
        this.f14963g = Math.max(this.f14963g, this.f14962f);
        return true;
    }

    /* renamed from: b */
    private final int m3222b(int i) {
        int min = Math.min(this.f14963g, i);
        m3221c(min);
        return min;
    }

    /* renamed from: c */
    private final void m3221c(int i) {
        this.f14963g -= i;
        this.f14962f = 0;
        byte[] bArr = this.f14961e;
        int i2 = this.f14963g;
        byte[] bArr2 = bArr;
        if (i2 < bArr.length - 524288) {
            bArr2 = new byte[i2 + 65536];
        }
        System.arraycopy(this.f14961e, i, bArr2, 0, this.f14963g);
        this.f14961e = bArr2;
    }

    /* renamed from: d */
    private final void m3220d(int i) {
        if (i != -1) {
            this.f14960d += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final long getLength() {
        return this.f14959c;
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final long getPosition() {
        return this.f14960d;
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final int read(byte[] bArr, int i, int i2) {
        int a = m3224a(bArr, i, i2);
        int i3 = a;
        if (a == 0) {
            i3 = m3223a(bArr, i, i2, 0, true);
        }
        m3220d(i3);
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final void readFully(byte[] bArr, int i, int i2) {
        zza(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final void zza(byte[] bArr, int i, int i2) {
        if (m3225a(i2)) {
            System.arraycopy(this.f14961e, this.f14962f - i2, bArr, i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final boolean zza(byte[] bArr, int i, int i2, boolean z) {
        int a = m3224a(bArr, i, i2);
        while (a < i2 && a != -1) {
            a = m3223a(bArr, i, i2, a, z);
        }
        m3220d(a);
        return a != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final int zzab(int i) {
        int b = m3222b(i);
        int i2 = b;
        if (b == 0) {
            byte[] bArr = f14957a;
            i2 = m3223a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m3220d(i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final void zzac(int i) {
        int b = m3222b(i);
        while (b < i && b != -1) {
            byte[] bArr = f14957a;
            b = m3223a(bArr, -b, Math.min(i, bArr.length + b), b, false);
        }
        m3220d(b);
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final void zzad(int i) {
        m3225a(i);
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final void zzgi() {
        this.f14962f = 0;
    }
}
