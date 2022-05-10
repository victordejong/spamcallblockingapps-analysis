package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpk.class */
public final class zzpk {

    /* renamed from: a */
    public byte[] f28779a;

    /* renamed from: b */
    public int f28780b;

    /* renamed from: c */
    public int f28781c;

    public zzpk() {
    }

    public zzpk(int i) {
        this.f28779a = new byte[i];
        this.f28781c = i;
    }

    public zzpk(byte[] bArr) {
        this.f28779a = bArr;
        this.f28781c = bArr.length;
    }

    /* renamed from: a */
    public final int m11663a() {
        byte[] bArr = this.f28779a;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    /* renamed from: a */
    public final void m11662a(int i) {
        m11661a(m11663a() < i ? new byte[i] : this.f28779a, i);
    }

    /* renamed from: a */
    public final void m11661a(byte[] bArr, int i) {
        this.f28779a = bArr;
        this.f28781c = i;
        this.f28780b = 0;
    }

    /* renamed from: a */
    public final void m11660a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f28779a, this.f28780b, bArr, i, i2);
        this.f28780b += i2;
    }

    /* renamed from: b */
    public final int m11659b() {
        return this.f28780b;
    }

    /* renamed from: b */
    public final void m11658b(int i) {
        zzoz.m11696a(i >= 0 && i <= this.f28779a.length);
        this.f28781c = i;
    }

    /* renamed from: c */
    public final int m11657c() {
        return this.f28781c;
    }

    /* renamed from: c */
    public final void m11656c(int i) {
        zzoz.m11696a(i >= 0 && i <= this.f28781c);
        this.f28780b = i;
    }

    /* renamed from: d */
    public final int m11655d() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        int i2 = i + 1;
        this.f28780b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f28780b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f28780b = i4;
        byte b3 = bArr[i3];
        this.f28780b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: d */
    public final void m11654d(int i) {
        m11656c(this.f28780b + i);
    }

    /* renamed from: e */
    public final long m11653e() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        int i2 = i + 1;
        this.f28780b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f28780b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f28780b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f28780b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f28780b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f28780b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f28780b = i8;
        long j7 = bArr[i7];
        this.f28780b = i8 + 1;
        return (bArr[i8] & 255) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8);
    }

    /* renamed from: e */
    public final String m11652e(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.f28780b + i) - 1;
        String str = new String(this.f28779a, this.f28780b, (i2 >= this.f28781c || this.f28779a[i2] != 0) ? i : i - 1);
        this.f28780b += i;
        return str;
    }

    /* renamed from: f */
    public final short m11651f() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        int i2 = i + 1;
        this.f28780b = i2;
        byte b = bArr[i];
        this.f28780b = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    /* renamed from: g */
    public final int m11650g() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        this.f28780b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: h */
    public final int m11649h() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        int i2 = i + 1;
        this.f28780b = i2;
        byte b = bArr[i];
        this.f28780b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: i */
    public final void m11648i() {
        this.f28780b = 0;
        this.f28781c = 0;
    }

    /* renamed from: j */
    public final int m11647j() {
        return this.f28781c - this.f28780b;
    }

    /* renamed from: k */
    public final int m11646k() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        int i2 = i + 1;
        this.f28780b = i2;
        byte b = bArr[i];
        this.f28780b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: l */
    public final long m11645l() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        int i2 = i + 1;
        this.f28780b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f28780b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f28780b = i4;
        long j3 = bArr[i3];
        this.f28780b = i4 + 1;
        return (bArr[i4] & 255) | ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8);
    }

    /* renamed from: m */
    public final long m11644m() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        int i2 = i + 1;
        this.f28780b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f28780b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f28780b = i4;
        long j3 = bArr[i3];
        this.f28780b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16);
    }

    /* renamed from: n */
    public final int m11643n() {
        byte[] bArr = this.f28779a;
        int i = this.f28780b;
        int i2 = i + 1;
        this.f28780b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f28780b = i3;
        byte b2 = bArr[i2];
        this.f28780b = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    /* renamed from: o */
    public final int m11642o() {
        int d = m11655d();
        if (d >= 0) {
            return d;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(d);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: p */
    public final long m11641p() {
        long e = m11653e();
        if (e >= 0) {
            return e;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(e);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: q */
    public final String m11640q() {
        if (m11647j() == 0) {
            return null;
        }
        int i = this.f28780b;
        while (i < this.f28781c && this.f28779a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f28779a;
        int i2 = this.f28780b;
        String str = new String(bArr, i2, i - i2);
        this.f28780b = i;
        if (i < this.f28781c) {
            this.f28780b = i + 1;
        }
        return str;
    }
}
