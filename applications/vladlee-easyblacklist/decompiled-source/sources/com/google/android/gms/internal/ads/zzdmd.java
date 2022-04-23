package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmd.class */
public enum zzdmd implements zzdry {
    UNKNOWN_FORMAT(0),
    UNCOMPRESSED(1),
    COMPRESSED(2),
    DO_NOT_USE_CRUNCHY_UNCOMPRESSED(3),
    UNRECOGNIZED(-1);
    

    /* renamed from: a */
    private static final zzdrx<zzdmd> f14375a = new zzdrx<zzdmd>() { // from class: com.google.android.gms.internal.ads.afi
    };

    /* renamed from: b */
    private final int f14377b;

    zzdmd(int i) {
        this.f14377b = i;
    }

    public static zzdmd zzei(int i) {
        if (i == 0) {
            return UNKNOWN_FORMAT;
        }
        if (i == 1) {
            return UNCOMPRESSED;
        }
        if (i == 2) {
            return COMPRESSED;
        }
        if (i != 3) {
            return null;
        }
        return DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
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
            return this.f14377b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
