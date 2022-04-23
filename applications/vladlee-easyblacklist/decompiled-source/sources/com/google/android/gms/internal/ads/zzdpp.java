package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpp.class */
public final class zzdpp {
    public static boolean zzaxh() {
        boolean z = false;
        try {
            Class.forName("android.app.Application", false, null);
            z = true;
        } catch (Exception e) {
        }
        return z;
    }
}
