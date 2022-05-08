package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbq.class */
public enum zzbq implements zzdry {
    ENUM_SIGNAL_SOURCE_UNKNOWN(0),
    ENUM_SIGNAL_SOURCE_DISABLE(1),
    ENUM_SIGNAL_SOURCE_ADSHIELD(2),
    ENUM_SIGNAL_SOURCE_GASS(3),
    ENUM_SIGNAL_SOURCE_CALLER_PROVIDED(4);
    

    /* renamed from: c */
    private static final zzdrx<zzbq> f12258c = new zzdrx<zzbq>() { // from class: com.google.android.gms.internal.ads.lt
    };

    /* renamed from: d */
    private final int f12260d;

    zzbq(int i) {
        this.f12260d = i;
    }

    public static zzdsa zzaf() {
        return C2069mr.f10218a;
    }

    public static zzbq zze(int i) {
        if (i == 0) {
            return ENUM_SIGNAL_SOURCE_UNKNOWN;
        }
        if (i == 1) {
            return ENUM_SIGNAL_SOURCE_DISABLE;
        }
        if (i == 2) {
            return ENUM_SIGNAL_SOURCE_ADSHIELD;
        }
        if (i == 3) {
            return ENUM_SIGNAL_SOURCE_GASS;
        }
        if (i != 4) {
            return null;
        }
        return ENUM_SIGNAL_SOURCE_CALLER_PROVIDED;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f12260d + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdry
    public final int zzae() {
        return this.f12260d;
    }
}
