package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvr.class */
public final class zzcvr implements zzcub<zzcvo> {

    /* renamed from: a */
    private zzakp f13964a;

    /* renamed from: b */
    private ScheduledExecutorService f13965b;

    /* renamed from: c */
    private boolean f13966c;

    /* renamed from: d */
    private ApplicationInfo f13967d;

    public zzcvr(zzakp zzakpVar, ScheduledExecutorService scheduledExecutorService, boolean z, ApplicationInfo applicationInfo) {
        this.f13964a = zzakpVar;
        this.f13965b = scheduledExecutorService;
        this.f13966c = z;
        this.f13967d = applicationInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcvo> zzanc() {
        if (!this.f13966c) {
            return zzdgs.zzk(new Exception("Auto Collect Location is false."));
        }
        return zzdgs.zzb(zzdgs.zza(this.f13964a.zza(this.f13967d), ((Long) zzve.zzoy().zzd(zzzn.zzcmn)).longValue(), TimeUnit.MILLISECONDS, this.f13965b), C2365xq.f10696a, zzazd.zzdwe);
    }
}
