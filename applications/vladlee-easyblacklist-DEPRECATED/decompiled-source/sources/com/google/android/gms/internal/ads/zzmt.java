package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmt.class */
public class zzmt implements zzne {

    /* renamed from: a */
    private final zzms f15160a;

    /* renamed from: b */
    private final int f15161b;

    /* renamed from: c */
    private final int[] f15162c;

    /* renamed from: d */
    private final zzgw[] f15163d;

    /* renamed from: e */
    private final long[] f15164e;

    /* renamed from: f */
    private int f15165f;

    public zzmt(zzms zzmsVar, int... iArr) {
        int i = 0;
        zzoc.checkState(iArr.length > 0);
        this.f15160a = (zzms) zzoc.checkNotNull(zzmsVar);
        this.f15161b = iArr.length;
        this.f15163d = new zzgw[this.f15161b];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f15163d[i2] = zzmsVar.zzaw(iArr[i2]);
        }
        Arrays.sort(this.f15163d, new aox((byte) 0));
        this.f15162c = new int[this.f15161b];
        while (true) {
            int i3 = this.f15161b;
            if (i < i3) {
                this.f15162c[i] = zzmsVar.zzh(this.f15163d[i]);
                i++;
            } else {
                this.f15164e = new long[i3];
                return;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzmt zzmtVar = (zzmt) obj;
        return this.f15160a == zzmtVar.f15160a && Arrays.equals(this.f15162c, zzmtVar.f15162c);
    }

    public int hashCode() {
        if (this.f15165f == 0) {
            this.f15165f = (System.identityHashCode(this.f15160a) * 31) + Arrays.hashCode(this.f15162c);
        }
        return this.f15165f;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final int length() {
        return this.f15162c.length;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final zzgw zzaw(int i) {
        return this.f15163d[i];
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final int zzax(int i) {
        return this.f15162c[0];
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final zzms zzid() {
        return this.f15160a;
    }
}
