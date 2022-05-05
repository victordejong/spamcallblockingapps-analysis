package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmo.class */
public final class zzbmo {

    /* renamed from: a */
    private final Executor f12146a;

    /* renamed from: b */
    private final ScheduledExecutorService f12147b;

    /* renamed from: c */
    private final zzdhe<zzbmj> f12148c;

    /* renamed from: d */
    private volatile boolean f12149d = true;

    public zzbmo(Executor executor, ScheduledExecutorService scheduledExecutorService, zzdhe<zzbmj> zzdheVar) {
        this.f12146a = executor;
        this.f12147b = scheduledExecutorService;
        this.f12148c = zzdheVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m4014a(final zzbmo zzbmoVar, List list, final zzdgt zzdgtVar) {
        if (list == null || list.isEmpty()) {
            zzbmoVar.f12146a.execute(new Runnable(zzdgtVar) { // from class: com.google.android.gms.internal.ads.li

                /* renamed from: a */
                private final zzdgt f10176a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10176a = zzdgtVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10176a.zzb(new zzcfb(3));
                }
            });
            return;
        }
        zzdhe zzaj = zzdgs.zzaj(null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final zzdhe zzdheVar = (zzdhe) it.next();
            zzaj = zzdgs.zzb(zzdgs.zzb(zzaj, Throwable.class, new zzdgf(zzdgtVar) { // from class: com.google.android.gms.internal.ads.lk

                /* renamed from: a */
                private final zzdgt f10180a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10180a = zzdgtVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdgf
                public final zzdhe zzf(Object obj) {
                    this.f10180a.zzb((Throwable) obj);
                    return zzdgs.zzaj(null);
                }
            }, zzbmoVar.f12146a), new zzdgf(zzbmoVar, zzdgtVar, zzdheVar) { // from class: com.google.android.gms.internal.ads.lj

                /* renamed from: a */
                private final zzbmo f10177a;

                /* renamed from: b */
                private final zzdgt f10178b;

                /* renamed from: c */
                private final zzdhe f10179c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10177a = zzbmoVar;
                    this.f10178b = zzdgtVar;
                    this.f10179c = zzdheVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdgf
                public final zzdhe zzf(Object obj) {
                    return this.f10177a.m4013a(this.f10178b, this.f10179c, (zzbmd) obj);
                }
            }, zzbmoVar.f12146a);
        }
        zzdgs.zza(zzaj, new C2038ln(zzbmoVar, zzdgtVar), zzbmoVar.f12146a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m4013a(zzdgt zzdgtVar, zzdhe zzdheVar, zzbmd zzbmdVar) {
        if (zzbmdVar != null) {
            zzdgtVar.onSuccess(zzbmdVar);
        }
        return zzdgs.zza(zzdheVar, zzabj.zzcur.get().longValue(), TimeUnit.MILLISECONDS, this.f12147b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4016a() {
        this.f12149d = false;
    }

    public final boolean isLoading() {
        return this.f12149d;
    }

    public final void zza(zzdgt<zzbmd> zzdgtVar) {
        zzdgs.zza(this.f12148c, new C2036ll(this, zzdgtVar), this.f12146a);
    }
}
