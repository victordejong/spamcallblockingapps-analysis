package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzte.class */
public enum zzte implements zzdry {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);
    

    /* renamed from: a */
    private static final zzdrx<zzte> f15498a = new zzdrx<zzte>() { // from class: com.google.android.gms.internal.ads.aqy
    };

    /* renamed from: b */
    private final int f15500b;

    zzte(int i) {
        this.f15500b = i;
    }

    public static zzdsa zzaf() {
        return aqz.f8189a;
    }

    public static zzte zzbx(int i) {
        if (i == 0) {
            return ENUM_FALSE;
        }
        if (i == 1) {
            return ENUM_TRUE;
        }
        if (i != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f15500b + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdry
    public final int zzae() {
        return this.f15500b;
    }
}
