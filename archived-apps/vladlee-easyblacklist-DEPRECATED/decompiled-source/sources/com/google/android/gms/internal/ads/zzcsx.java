package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcty;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsx.class */
public final class zzcsx<S extends zzcty<?>> implements zzcub<S> {

    /* renamed from: a */
    private final zzcub<S> f13832a;

    /* renamed from: b */
    private final long f13833b;

    /* renamed from: c */
    private final ScheduledExecutorService f13834c;

    public zzcsx(zzcub<S> zzcubVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f13832a = zzcubVar;
        this.f13833b = j;
        this.f13834c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<S> zzanc() {
        zzdhe<S> zzanc = this.f13832a.zzanc();
        long j = this.f13833b;
        zzdhe<S> zzdheVar = zzanc;
        if (j > 0) {
            zzdheVar = zzdgs.zza(zzanc, j, TimeUnit.MILLISECONDS, this.f13834c);
        }
        return zzdgs.zzb(zzdheVar, Throwable.class, C2336wo.f10660a, zzazd.zzdwj);
    }
}
