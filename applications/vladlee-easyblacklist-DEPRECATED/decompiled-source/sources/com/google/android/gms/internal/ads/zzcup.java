package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcup.class */
public final class zzcup implements zzcub<zzcum> {

    /* renamed from: a */
    private final zzava f13921a;

    /* renamed from: b */
    private final Context f13922b;

    /* renamed from: c */
    private final ScheduledExecutorService f13923c;

    /* renamed from: d */
    private final Executor f13924d;

    public zzcup(zzava zzavaVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f13921a = zzavaVar;
        this.f13922b = context;
        this.f13923c = scheduledExecutorService;
        this.f13924d = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcum m3687a() {
        zzve.zzou();
        return new zzcum(null, zzayk.zzbj(this.f13922b));
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcum> zzanc() {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcjd)).booleanValue()) {
            return zzdgs.zzk(new Exception("Did not ad Ad ID into query param."));
        }
        return zzdgn.zze(this.f13921a.zzak(this.f13922b)).zza(C2354xf.f10684a, this.f13924d).zza(((Long) zzve.zzoy().zzd(zzzn.zzcje)).longValue(), TimeUnit.MILLISECONDS, this.f13923c).zza(Throwable.class, new zzded(this) { // from class: com.google.android.gms.internal.ads.xg

            /* renamed from: a */
            private final zzcup f10685a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10685a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                return this.f10685a.m3687a();
            }
        }, this.f13924d);
    }
}
