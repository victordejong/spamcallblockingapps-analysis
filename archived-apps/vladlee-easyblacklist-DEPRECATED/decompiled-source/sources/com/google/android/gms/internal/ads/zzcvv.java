package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvv.class */
public final class zzcvv implements zzcub<zzcvs> {

    /* renamed from: a */
    private zzaoz f13973a;

    /* renamed from: b */
    private ScheduledExecutorService f13974b;

    /* renamed from: c */
    private Context f13975c;

    public zzcvv(zzaoz zzaozVar, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.f13973a = zzaozVar;
        this.f13974b = scheduledExecutorService;
        this.f13975c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcvs> zzanc() {
        return zzdgs.zzb(zzdgs.zza(this.f13973a.zzr(this.f13975c), ((Long) zzve.zzoy().zzd(zzzn.zzcmu)).longValue(), TimeUnit.MILLISECONDS, this.f13974b), C2366xr.f10697a, zzazd.zzdwe);
    }
}
