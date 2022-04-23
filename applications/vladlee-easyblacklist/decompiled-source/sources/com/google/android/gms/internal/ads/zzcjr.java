package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjr.class */
public final class zzcjr implements zzcio<zzbkk> {

    /* renamed from: a */
    private final zzblg f13231a;

    /* renamed from: b */
    private final zzcix f13232b;

    /* renamed from: c */
    private final zzdhd f13233c;

    /* renamed from: d */
    private final zzbou f13234d;

    /* renamed from: e */
    private final ScheduledExecutorService f13235e;

    public zzcjr(zzblg zzblgVar, zzcix zzcixVar, zzbou zzbouVar, ScheduledExecutorService scheduledExecutorService, zzdhd zzdhdVar) {
        this.f13231a = zzblgVar;
        this.f13232b = zzcixVar;
        this.f13234d = zzbouVar;
        this.f13235e = scheduledExecutorService;
        this.f13233c = zzdhdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzbkk m3751a(final zzczt zzcztVar, final zzczl zzczlVar) {
        return this.f13231a.zza(new zzbmt(zzcztVar, zzczlVar, null), new zzbls(zzcztVar.zzgmh.zzfgl.zzaoo(), new Runnable(this, zzcztVar, zzczlVar) { // from class: com.google.android.gms.internal.ads.tf

            /* renamed from: a */
            private final zzcjr f10493a;

            /* renamed from: b */
            private final zzczt f10494b;

            /* renamed from: c */
            private final zzczl f10495c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10493a = this;
                this.f10494b = zzcztVar;
                this.f10495c = zzczlVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10493a.m3750b(this.f10494b, this.f10495c);
            }
        })).zzaef();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3750b(zzczt zzcztVar, zzczl zzczlVar) {
        zzdgs.zza(zzdgs.zza(this.f13232b.zzb(zzcztVar, zzczlVar), zzczlVar.zzglx, TimeUnit.SECONDS, this.f13235e), new C2248th(this), this.f13233c);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return zzcztVar.zzgmh.zzfgl.zzaoo() != null && this.f13232b.zza(zzcztVar, zzczlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<zzbkk> zzb(final zzczt zzcztVar, final zzczl zzczlVar) {
        return this.f13233c.zzd(new Callable(this, zzcztVar, zzczlVar) { // from class: com.google.android.gms.internal.ads.tg

            /* renamed from: a */
            private final zzcjr f10496a;

            /* renamed from: b */
            private final zzczt f10497b;

            /* renamed from: c */
            private final zzczl f10498c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10496a = this;
                this.f10497b = zzcztVar;
                this.f10498c = zzczlVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10496a.m3751a(this.f10497b, this.f10498c);
            }
        });
    }
}
