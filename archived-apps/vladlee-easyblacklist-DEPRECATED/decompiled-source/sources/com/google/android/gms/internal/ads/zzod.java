package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzod.class */
public final class zzod {

    /* renamed from: a */
    private int f15230a;

    /* renamed from: b */
    private long[] f15231b;

    public zzod() {
        this((byte) 0);
    }

    private zzod(byte b) {
        this.f15231b = new long[32];
    }

    public final void add(long j) {
        int i = this.f15230a;
        long[] jArr = this.f15231b;
        if (i == jArr.length) {
            this.f15231b = Arrays.copyOf(jArr, i << 1);
        }
        long[] jArr2 = this.f15231b;
        int i2 = this.f15230a;
        this.f15230a = i2 + 1;
        jArr2[i2] = j;
    }

    public final long get(int i) {
        if (i >= 0 && i < this.f15230a) {
            return this.f15231b[i];
        }
        int i2 = this.f15230a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i);
        sb.append(", size is ");
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final int size() {
        return this.f15230a;
    }
}
