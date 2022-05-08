package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmr.class */
public enum zzdmr implements zzdry {
    UNKNOWN_CURVE(0),
    NIST_P256(2),
    NIST_P384(3),
    NIST_P521(4),
    CURVE25519(5),
    UNRECOGNIZED(-1);
    

    /* renamed from: c */
    private static final zzdrx<zzdmr> f14380c = new zzdrx<zzdmr>() { // from class: com.google.android.gms.internal.ads.afp
    };

    /* renamed from: d */
    private final int f14382d;

    zzdmr(int i) {
        this.f14382d = i;
    }

    public static zzdmr zzel(int i) {
        if (i == 0) {
            return UNKNOWN_CURVE;
        }
        if (i == 2) {
            return NIST_P256;
        }
        if (i == 3) {
            return NIST_P384;
        }
        if (i == 4) {
            return NIST_P521;
        }
        if (i != 5) {
            return null;
        }
        return CURVE25519;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(zzae());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdry
    public final int zzae() {
        if (this != UNRECOGNIZED) {
            return this.f14382d;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
