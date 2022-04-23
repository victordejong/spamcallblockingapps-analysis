package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmt.class */
public enum zzdmt implements zzdry {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: c */
    private static final zzdrx<zzdmt> f14385c = new zzdrx<zzdmt>() { // from class: com.google.android.gms.internal.ads.afq
    };

    /* renamed from: d */
    private final int f14387d;

    zzdmt(int i) {
        this.f14387d = i;
    }

    public static zzdmt zzem(int i) {
        if (i == 0) {
            return UNKNOWN_HASH;
        }
        if (i == 1) {
            return SHA1;
        }
        if (i == 2) {
            return SHA384;
        }
        if (i == 3) {
            return SHA256;
        }
        if (i != 4) {
            return null;
        }
        return SHA512;
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
            return this.f14387d;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
