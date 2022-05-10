package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzkf.class */
public final class zzkf {

    /* renamed from: a */
    public final int f28442a = 1;

    /* renamed from: b */
    public final byte[] f28443b;

    public zzkf(int i, byte[] bArr) {
        this.f28443b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzkf.class != obj.getClass()) {
            return false;
        }
        zzkf zzkfVar = (zzkf) obj;
        return this.f28442a == zzkfVar.f28442a && Arrays.equals(this.f28443b, zzkfVar.f28443b);
    }

    public final int hashCode() {
        return (this.f28442a * 31) + Arrays.hashCode(this.f28443b);
    }
}
