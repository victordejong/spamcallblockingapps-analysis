package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclw.class */
public final class zzclw<AdT> implements zzdxg<zzclu<AdT>> {
    public static <AdT> zzclu<AdT> zza(zzdcr zzdcrVar, zzclp zzclpVar, zzbou zzbouVar, zzdda zzddaVar, zzbmi<AdT> zzbmiVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        return new zzclu<>(zzdcrVar, zzclpVar, zzbouVar, zzddaVar, zzbmiVar, executor, scheduledExecutorService);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
