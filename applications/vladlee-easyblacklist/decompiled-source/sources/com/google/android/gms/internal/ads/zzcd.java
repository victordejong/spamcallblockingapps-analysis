package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcd.class */
public enum zzcd implements zzdry {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(1000);
    

    /* renamed from: b */
    private static final zzdrx<zzcd> f12958b = new zzdrx<zzcd>() { // from class: com.google.android.gms.internal.ads.qh
    };

    /* renamed from: c */
    private final int f12960c;

    zzcd(int i) {
        this.f12960c = i;
    }

    public static zzdsa zzaf() {
        return C2188rb.f10401a;
    }

    public static zzcd zzj(int i) {
        if (i == 0) {
            return ENUM_FALSE;
        }
        if (i == 1) {
            return ENUM_TRUE;
        }
        if (i == 2) {
            return ENUM_FAILURE;
        }
        if (i != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f12960c + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdry
    public final int zzae() {
        return this.f12960c;
    }
}
