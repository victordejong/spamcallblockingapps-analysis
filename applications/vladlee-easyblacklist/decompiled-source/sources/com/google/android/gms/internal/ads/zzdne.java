package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdne.class */
public enum zzdne implements zzdry {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);
    

    /* renamed from: c */
    private static final zzdrx<zzdne> f14393c = new zzdrx<zzdne>() { // from class: com.google.android.gms.internal.ads.afx
    };

    /* renamed from: d */
    private final int f14395d;

    zzdne(int i) {
        this.f14395d = i;
    }

    public static zzdne zzep(int i) {
        if (i == 0) {
            return UNKNOWN_STATUS;
        }
        if (i == 1) {
            return ENABLED;
        }
        if (i == 2) {
            return DISABLED;
        }
        if (i != 3) {
            return null;
        }
        return DESTROYED;
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
            return this.f14395d;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
