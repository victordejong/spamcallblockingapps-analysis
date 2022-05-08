package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aob.class */
final class aob {

    /* renamed from: a */
    public final int f7982a;

    /* renamed from: b */
    public final long[] f7983b;

    /* renamed from: c */
    public final int[] f7984c;

    /* renamed from: d */
    public final int f7985d;

    /* renamed from: e */
    public final long[] f7986e;

    /* renamed from: f */
    public final int[] f7987f;

    public aob(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        boolean z = true;
        zzoc.checkArgument(iArr.length == jArr2.length);
        zzoc.checkArgument(jArr.length == jArr2.length);
        if (iArr2.length != jArr2.length) {
            z = false;
        }
        zzoc.checkArgument(z);
        this.f7983b = jArr;
        this.f7984c = iArr;
        this.f7985d = i;
        this.f7986e = jArr2;
        this.f7987f = iArr2;
        this.f7982a = jArr.length;
    }

    /* renamed from: a */
    public final int m4822a(long j) {
        for (int zza = zzoq.zza(this.f7986e, j, true, false); zza >= 0; zza--) {
            if ((this.f7987f[zza] & 1) != 0) {
                return zza;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m4821b(long j) {
        for (int zzb = zzoq.zzb(this.f7986e, j, true, false); zzb < this.f7986e.length; zzb++) {
            if ((this.f7987f[zzb] & 1) != 0) {
                return zzb;
            }
        }
        return -1;
    }
}
