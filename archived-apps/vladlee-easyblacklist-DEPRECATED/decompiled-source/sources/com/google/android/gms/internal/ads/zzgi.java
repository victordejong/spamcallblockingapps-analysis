package com.google.android.gms.internal.ads;

import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgi.class */
public final class zzgi {
    public static final int CHANNEL_OUT_7POINT1_SURROUND;

    /* renamed from: a */
    private static final UUID f14810a;

    /* renamed from: b */
    private static final UUID f14811b;

    /* renamed from: c */
    private static final UUID f14812c;
    public static final UUID zzacb;

    static {
        CHANNEL_OUT_7POINT1_SURROUND = zzoq.SDK_INT < 23 ? 1020 : 6396;
        zzacb = new UUID(0L, 0L);
        f14810a = new UUID(1186680826959645954L, -5988876978535335093L);
        f14811b = new UUID(-1301668207276963122L, -6645017420763422227L);
        f14812c = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long zzdm(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    public static long zzdn(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }
}
