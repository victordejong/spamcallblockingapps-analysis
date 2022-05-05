package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcee.class */
public final class zzcee {
    /* renamed from: a */
    private static <T> Set<zzbsu<T>> m3803a(T t, Executor executor) {
        return zzabc.zzctx.get().booleanValue() ? Collections.singleton(new zzbsu(t, executor)) : Collections.emptySet();
    }

    public static Set<zzbsu<zzbph>> zza(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }

    public static Set<zzbsu<AppEventListener>> zzb(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }

    public static Set<zzbsu<zzbqb>> zzc(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }

    public static Set<zzbsu<zzbow>> zzd(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }

    public static Set<zzbsu<zzbov>> zze(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }

    public static Set<zzbsu<zzbpe>> zzf(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }

    public static Set<zzbsu<zzty>> zzg(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }

    public static Set<zzbsu<zzdcx>> zzh(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }

    public static Set<zzbsu<zzbqx>> zzi(zzceo zzceoVar, Executor executor) {
        return m3803a(zzceoVar, executor);
    }
}
