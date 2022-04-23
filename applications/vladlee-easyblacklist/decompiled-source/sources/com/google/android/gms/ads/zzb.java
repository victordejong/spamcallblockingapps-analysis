package com.google.android.gms.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/zzb.class */
public final class zzb {
    public static AdSize zza(int i, int i2) {
        AdSize adSize = new AdSize(i, 0);
        adSize.m6099c();
        adSize.m6101a(i2);
        return adSize;
    }

    public static AdSize zza(int i, int i2, String str) {
        return new AdSize(i, i2, str);
    }

    public static boolean zza(AdSize adSize) {
        return adSize.m6102a();
    }

    public static boolean zzb(AdSize adSize) {
        return adSize.m6100b();
    }

    public static int zzc(AdSize adSize) {
        return adSize.m6098d();
    }
}
