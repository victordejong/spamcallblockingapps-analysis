package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhc.class */
public final class zzhc {
    public static final zzhc zzagb = new zzhc(1.0f, 1.0f);

    /* renamed from: a */
    private final int f14836a;
    public final float zzagc;
    public final float zzagd;

    public zzhc(float f, float f2) {
        this.zzagc = f;
        this.zzagd = f2;
        this.f14836a = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzhc zzhcVar = (zzhc) obj;
        return this.zzagc == zzhcVar.zzagc && this.zzagd == zzhcVar.zzagd;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.zzagc) + 527) * 31) + Float.floatToRawIntBits(this.zzagd);
    }

    public final long zzdu(long j) {
        return j * this.f14836a;
    }
}
