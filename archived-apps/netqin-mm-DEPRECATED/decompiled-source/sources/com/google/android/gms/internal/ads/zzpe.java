package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpe.class */
public final class zzpe {

    /* renamed from: a */
    public int f28762a;

    /* renamed from: b */
    public long[] f28763b;

    public zzpe() {
        this(32);
    }

    public zzpe(int i) {
        this.f28763b = new long[32];
    }

    /* renamed from: a */
    public final int m11682a() {
        return this.f28762a;
    }

    /* renamed from: a */
    public final long m11681a(int i) {
        if (i >= 0 && i < this.f28762a) {
            return this.f28763b[i];
        }
        int i2 = this.f28762a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i);
        sb.append(", size is ");
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    /* renamed from: a */
    public final void m11680a(long j) {
        int i = this.f28762a;
        long[] jArr = this.f28763b;
        if (i == jArr.length) {
            this.f28763b = Arrays.copyOf(jArr, i << 1);
        }
        long[] jArr2 = this.f28763b;
        int i2 = this.f28762a;
        this.f28762a = i2 + 1;
        jArr2[i2] = j;
    }
}
