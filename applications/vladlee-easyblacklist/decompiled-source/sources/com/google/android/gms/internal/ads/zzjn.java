package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjn.class */
public final class zzjn {
    public final int zzanc = 1;
    public final byte[] zzand;

    public zzjn(int i, byte[] bArr) {
        this.zzand = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzjn zzjnVar = (zzjn) obj;
        return this.zzanc == zzjnVar.zzanc && Arrays.equals(this.zzand, zzjnVar.zzand);
    }

    public final int hashCode() {
        return (this.zzanc * 31) + Arrays.hashCode(this.zzand);
    }
}
