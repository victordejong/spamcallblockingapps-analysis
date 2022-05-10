package com.google.android.gms.ads;

import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/zzb.class */
public final class zzb {
    /* renamed from: a */
    public static AdSize m17891a(int i, int i2) {
        AdSize adSize = new AdSize(i, i2);
        adSize.m18134a(true);
        adSize.m18136a(i2);
        return adSize;
    }

    /* renamed from: a */
    public static AdSize m17890a(int i, int i2, String str) {
        return new AdSize(i, i2, str);
    }

    /* renamed from: a */
    public static boolean m17889a(AdSize adSize) {
        return adSize.m18130d();
    }

    /* renamed from: b */
    public static boolean m17888b(AdSize adSize) {
        return adSize.m18129e();
    }

    /* renamed from: c */
    public static int m17887c(AdSize adSize) {
        return adSize.m18128f();
    }
}
