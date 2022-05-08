package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcix.class */
public final class zzcix implements zzcio<zzbkk> {

    /* renamed from: a */
    private final zzblg f13196a;

    /* renamed from: b */
    private final Context f13197b;

    /* renamed from: c */
    private final zzcbn f13198c;

    /* renamed from: d */
    private final zzczu f13199d;

    /* renamed from: e */
    private final Executor f13200e;

    /* renamed from: f */
    private final zzded<zzczl, zzawt> f13201f;

    public zzcix(zzblg zzblgVar, Context context, Executor executor, zzcbn zzcbnVar, zzczu zzczuVar, zzded<zzczl, zzawt> zzdedVar) {
        this.f13197b = context;
        this.f13196a = zzblgVar;
        this.f13200e = executor;
        this.f13198c = zzcbnVar;
        this.f13199d = zzczuVar;
        this.f13201f = zzdedVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3758a(zzczt zzcztVar, zzczl zzczlVar) {
        zzuj zza = zzczy.zza(this.f13197b, zzczlVar.zzglq);
        final zzbdi zzc = this.f13198c.zzc(zza);
        zzc.zzba(zzczlVar.zzdll);
        zzblg zzblgVar = this.f13196a;
        zzbmt zzbmtVar = new zzbmt(zzcztVar, zzczlVar, null);
        zzcce zzcceVar = new zzcce(this.f13197b, zzc.getView(), this.f13201f.apply(zzczlVar));
        zzc.getClass();
        final zzbkj zza2 = zzblgVar.zza(zzbmtVar, new zzbkn(zzcceVar, zzc, C2234su.m4476a(zzc), zzczy.zze(zza)));
        zza2.zzadx().zzb(zzc, false);
        zza2.zzadk().zza(new zzbpe(zzc) { // from class: com.google.android.gms.internal.ads.sx

            /* renamed from: a */
            private final zzbdi f10479a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10479a = zzc;
            }

            @Override // com.google.android.gms.internal.ads.zzbpe
            public final void onAdImpression() {
                zzbdi zzbdiVar = this.f10479a;
                if (zzbdiVar.zzaaa() != null) {
                    zzbdiVar.zzaaa().zzaaz();
                }
            }
        }, zzazd.zzdwj);
        zza2.zzadx();
        zzdhe<?> zza3 = zzcbp.zza(zzc, zzczlVar.zzglo.zzdhr, zzczlVar.zzglo.zzdht);
        if (zzczlVar.zzdmf) {
            zzc.getClass();
            zza3.addListener(RunnableC2236sw.m4475a(zzc), this.f13200e);
        }
        zza3.addListener(new Runnable(this, zzc) { // from class: com.google.android.gms.internal.ads.sz

            /* renamed from: a */
            private final zzcix f10481a;

            /* renamed from: b */
            private final zzbdi f10482b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10481a = this;
                this.f10482b = zzc;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10481a.m3759a(this.f10482b);
            }
        }, this.f13200e);
        return zzdgs.zzb(zza3, new zzded(zza2) { // from class: com.google.android.gms.internal.ads.sy

            /* renamed from: a */
            private final zzbkj f10480a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10480a = zza2;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                return this.f10480a.zzaeh();
            }
        }, zzazd.zzdwj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3759a(zzbdi zzbdiVar) {
        zzbdiVar.zzzu();
        zzbed zzyl = zzbdiVar.zzyl();
        if (this.f13199d.zzgmk != null && zzyl != null) {
            zzyl.zzb(this.f13199d.zzgmk);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return (zzczlVar.zzglo == null || zzczlVar.zzglo.zzdht == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<zzbkk> zzb(final zzczt zzcztVar, final zzczl zzczlVar) {
        return zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(this, zzcztVar, zzczlVar) { // from class: com.google.android.gms.internal.ads.sv

            /* renamed from: a */
            private final zzcix f10475a;

            /* renamed from: b */
            private final zzczt f10476b;

            /* renamed from: c */
            private final zzczl f10477c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10475a = this;
                this.f10476b = zzcztVar;
                this.f10477c = zzczlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10475a.m3758a(this.f10476b, this.f10477c);
            }
        }, this.f13200e);
    }
}
