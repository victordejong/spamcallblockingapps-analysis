package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznp.class */
public final class zznp {

    /* renamed from: d */
    public static final zznp f28685d = new zznp(new zznq[0]);

    /* renamed from: a */
    public final int f28686a;

    /* renamed from: b */
    public final zznq[] f28687b;

    /* renamed from: c */
    public int f28688c;

    public zznp(zznq... zznqVarArr) {
        this.f28687b = zznqVarArr;
        this.f28686a = zznqVarArr.length;
    }

    /* renamed from: a */
    public final int m11753a(zznq zznqVar) {
        for (int i = 0; i < this.f28686a; i++) {
            if (this.f28687b[i] == zznqVar) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final zznq m11754a(int i) {
        return this.f28687b[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zznp.class != obj.getClass()) {
            return false;
        }
        zznp zznpVar = (zznp) obj;
        return this.f28686a == zznpVar.f28686a && Arrays.equals(this.f28687b, zznpVar.f28687b);
    }

    public final int hashCode() {
        if (this.f28688c == 0) {
            this.f28688c = Arrays.hashCode(this.f28687b);
        }
        return this.f28688c;
    }
}
