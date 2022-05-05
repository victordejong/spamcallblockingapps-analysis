package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmr.class */
public final class zzmr {
    public static final zzmr zzbdd = new zzmr(new zzms[0]);

    /* renamed from: a */
    private final zzms[] f15156a;

    /* renamed from: b */
    private int f15157b;
    public final int length;

    public zzmr(zzms... zzmsVarArr) {
        this.f15156a = zzmsVarArr;
        this.length = zzmsVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzmr zzmrVar = (zzmr) obj;
        return this.length == zzmrVar.length && Arrays.equals(this.f15156a, zzmrVar.f15156a);
    }

    public final int hashCode() {
        if (this.f15157b == 0) {
            this.f15157b = Arrays.hashCode(this.f15156a);
        }
        return this.f15157b;
    }

    public final int zza(zzms zzmsVar) {
        for (int i = 0; i < this.length; i++) {
            if (this.f15156a[i] == zzmsVar) {
                return i;
            }
        }
        return -1;
    }

    public final zzms zzav(int i) {
        return this.f15156a[i];
    }
}
