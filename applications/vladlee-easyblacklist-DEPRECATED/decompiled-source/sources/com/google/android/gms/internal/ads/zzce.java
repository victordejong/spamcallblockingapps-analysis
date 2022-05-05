package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzce.class */
public enum zzce implements zzdry {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);
    

    /* renamed from: e */
    private static final zzdrx<zzce> f13010e = new zzdrx<zzce>() { // from class: com.google.android.gms.internal.ads.sa
    };

    /* renamed from: f */
    private final int f13012f;

    zzce(int i) {
        this.f13012f = i;
    }

    public static zzdsa zzaf() {
        return C2199rm.f10424a;
    }

    public static zzce zzk(int i) {
        if (i == 0) {
            return UNKNOWN_PROTO;
        }
        if (i == 1) {
            return AFMA_SIGNALS;
        }
        if (i == 2) {
            return UNITY_SIGNALS;
        }
        if (i != 3) {
            return null;
        }
        return PARTNER_SIGNALS;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f13012f + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdry
    public final int zzae() {
        return this.f13012f;
    }
}
