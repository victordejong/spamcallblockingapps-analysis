package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatp.class */
public final class zzatp {
    public static boolean isEnabled() {
        return zzabf.zzcud.get().booleanValue();
    }

    public static void zzea(String str) {
        if (zzabf.zzcud.get().booleanValue()) {
            zzavs.zzea(str);
        }
    }
}
