package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzms.class */
public final class zzms {

    /* renamed from: a */
    private final zzgw[] f15158a;

    /* renamed from: b */
    private int f15159b;
    public final int length;

    public zzms(zzgw... zzgwVarArr) {
        zzoc.checkState(zzgwVarArr.length > 0);
        this.f15158a = zzgwVarArr;
        this.length = zzgwVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzms zzmsVar = (zzms) obj;
        return this.length == zzmsVar.length && Arrays.equals(this.f15158a, zzmsVar.f15158a);
    }

    public final int hashCode() {
        if (this.f15159b == 0) {
            this.f15159b = Arrays.hashCode(this.f15158a) + 527;
        }
        return this.f15159b;
    }

    public final zzgw zzaw(int i) {
        return this.f15158a[i];
    }

    public final int zzh(zzgw zzgwVar) {
        int i = 0;
        while (true) {
            zzgw[] zzgwVarArr = this.f15158a;
            if (i >= zzgwVarArr.length) {
                return -1;
            }
            if (zzgwVar == zzgwVarArr[i]) {
                return i;
            }
            i++;
        }
    }
}
