package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjb.class */
public final class zzjb implements zzjm {

    /* renamed from: a */
    private final int f14951a;

    /* renamed from: b */
    private final int[] f14952b;

    /* renamed from: c */
    private final long[] f14953c;

    /* renamed from: d */
    private final long[] f14954d;

    /* renamed from: e */
    private final long[] f14955e;

    /* renamed from: f */
    private final long f14956f;

    public zzjb(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f14952b = iArr;
        this.f14953c = jArr;
        this.f14954d = jArr2;
        this.f14955e = jArr3;
        this.f14951a = iArr.length;
        int i = this.f14951a;
        if (i > 0) {
            this.f14956f = jArr2[i - 1] + jArr3[i - 1];
        } else {
            this.f14956f = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjm
    public final long getDurationUs() {
        return this.f14956f;
    }

    @Override // com.google.android.gms.internal.ads.zzjm
    public final long zzdz(long j) {
        return this.f14953c[zzoq.zza(this.f14955e, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzjm
    public final boolean zzgh() {
        return true;
    }
}
