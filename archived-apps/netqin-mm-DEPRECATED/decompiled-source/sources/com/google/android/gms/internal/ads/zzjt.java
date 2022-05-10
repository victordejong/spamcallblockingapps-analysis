package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjt.class */
public final class zzjt implements zzke {

    /* renamed from: a */
    public final int f28426a;

    /* renamed from: b */
    public final long[] f28427b;

    /* renamed from: c */
    public final long[] f28428c;

    /* renamed from: d */
    public final long f28429d;

    public zzjt(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f28427b = jArr;
        this.f28428c = jArr3;
        int length = iArr.length;
        this.f28426a = length;
        if (length > 0) {
            this.f28429d = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f28429d = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzke
    /* renamed from: a */
    public final long mo11853a(long j) {
        return this.f28427b[zzpq.m11621a(this.f28428c, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzke
    /* renamed from: b */
    public final boolean mo11848b() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzke
    /* renamed from: c */
    public final long mo11846c() {
        return this.f28429d;
    }
}
