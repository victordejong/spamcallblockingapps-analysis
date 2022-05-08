package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnw.class */
public enum zzdnw implements zzdry {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: a */
    private static final zzdrx<zzdnw> f14396a = new zzdrx<zzdnw>() { // from class: com.google.android.gms.internal.ads.agg
    };

    /* renamed from: b */
    private final int f14398b;

    zzdnw(int i) {
        this.f14398b = i;
    }

    public static zzdnw zzew(int i) {
        if (i == 0) {
            return UNKNOWN_PREFIX;
        }
        if (i == 1) {
            return TINK;
        }
        if (i == 2) {
            return LEGACY;
        }
        if (i == 3) {
            return RAW;
        }
        if (i != 4) {
            return null;
        }
        return CRUNCHY;
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
            return this.f14398b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
