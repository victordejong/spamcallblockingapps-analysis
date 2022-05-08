package com.google.android.gms.analytics.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzo.class */
public enum zzo {
    NONE,
    GZIP;

    public static zzo zzbQ(String str) {
        return "GZIP".equalsIgnoreCase(str) ? GZIP : NONE;
    }
}
