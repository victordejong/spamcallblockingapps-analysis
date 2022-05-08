package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwy.class */
public abstract class zzdwy {
    public static zzdwy zzn(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzdwr(cls.getSimpleName()) : new zzdwt(cls.getSimpleName());
    }

    public abstract void zzhp(String str);
}
