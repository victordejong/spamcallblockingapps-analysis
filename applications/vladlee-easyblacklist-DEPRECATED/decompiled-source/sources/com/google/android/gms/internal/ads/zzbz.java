package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbz.class */
public enum zzbz implements zzdry {
    UNKNOWN_ENCRYPTION_METHOD(0),
    BITSLICER(1),
    TINK_HYBRID(2),
    UNENCRYPTED(3);
    

    /* renamed from: d */
    private static final zzdrx<zzbz> f12746d = new zzdrx<zzbz>() { // from class: com.google.android.gms.internal.ads.pv
    };

    /* renamed from: e */
    private final int f12748e;

    zzbz(int i) {
        this.f12748e = i;
    }

    public static zzdsa zzaf() {
        return C2143pk.f10327a;
    }

    public static zzbz zzi(int i) {
        if (i == 0) {
            return UNKNOWN_ENCRYPTION_METHOD;
        }
        if (i == 1) {
            return BITSLICER;
        }
        if (i == 2) {
            return TINK_HYBRID;
        }
        if (i != 3) {
            return null;
        }
        return UNENCRYPTED;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f12748e + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdry
    public final int zzae() {
        return this.f12748e;
    }
}
