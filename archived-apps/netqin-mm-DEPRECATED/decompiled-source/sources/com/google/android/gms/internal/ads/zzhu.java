package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhu.class */
public final class zzhu {

    /* renamed from: d */
    public static final zzhu f28294d = new zzhu(1.0f, 1.0f);

    /* renamed from: a */
    public final float f28295a;

    /* renamed from: b */
    public final float f28296b;

    /* renamed from: c */
    public final int f28297c;

    public zzhu(float f, float f2) {
        this.f28295a = f;
        this.f28296b = f2;
        this.f28297c = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public final long m12016a(long j) {
        return j * this.f28297c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzhu.class != obj.getClass()) {
            return false;
        }
        zzhu zzhuVar = (zzhu) obj;
        return this.f28295a == zzhuVar.f28295a && this.f28296b == zzhuVar.f28296b;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f28295a) + 527) * 31) + Float.floatToRawIntBits(this.f28296b);
    }
}
