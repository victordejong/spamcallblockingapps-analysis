package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzng.class */
public final class zzng {

    /* renamed from: a */
    private final zzne[] f15183a;

    /* renamed from: b */
    private int f15184b;
    public final int length;

    public zzng(zzne... zzneVarArr) {
        this.f15183a = zzneVarArr;
        this.length = zzneVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f15183a, ((zzng) obj).f15183a);
    }

    public final int hashCode() {
        if (this.f15184b == 0) {
            this.f15184b = Arrays.hashCode(this.f15183a) + 527;
        }
        return this.f15184b;
    }

    public final zzne zzay(int i) {
        return this.f15183a[i];
    }

    public final zzne[] zzie() {
        return (zzne[]) this.f15183a.clone();
    }
}
