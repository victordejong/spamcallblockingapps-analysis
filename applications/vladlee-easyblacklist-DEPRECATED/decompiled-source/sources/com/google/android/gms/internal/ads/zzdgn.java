package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgn.class */
public class zzdgn<V> extends acn<V> {
    public static <V> zzdgn<V> zze(zzdhe<V> zzdheVar) {
        return zzdheVar instanceof zzdgn ? (zzdgn) zzdheVar : new acl(zzdheVar);
    }

    public final zzdgn<V> zza(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (zzdgn) zzdgs.zza(this, j, timeUnit, scheduledExecutorService);
    }

    public final <T> zzdgn<T> zza(zzded<? super V, T> zzdedVar, Executor executor) {
        zzdei.checkNotNull(zzdedVar);
        aby abyVar = new aby(this, zzdedVar);
        addListener(abyVar, zzdhg.m3544a(executor, abyVar));
        return abyVar;
    }

    public final <X extends Throwable> zzdgn<V> zza(Class<X> cls, zzded<? super X, ? extends V> zzdedVar, Executor executor) {
        abw abwVar = new abw(this, cls, zzdedVar);
        addListener(abwVar, zzdhg.m3544a(executor, abwVar));
        return abwVar;
    }
}
