package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzciu.class */
public final class zzciu implements zzcio<zzbke> {

    /* renamed from: a */
    private final zzbka f13191a;

    /* renamed from: b */
    private final Context f13192b;

    /* renamed from: c */
    private final zzcbn f13193c;

    /* renamed from: d */
    private final zzczu f13194d;

    /* renamed from: e */
    private final Executor f13195e;

    public zzciu(zzbka zzbkaVar, Context context, Executor executor, zzcbn zzcbnVar, zzczu zzczuVar) {
        this.f13192b = context;
        this.f13191a = zzbkaVar;
        this.f13195e = executor;
        this.f13193c = zzcbnVar;
        this.f13194d = zzczuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3760a(zzczt zzcztVar, zzczl zzczlVar) {
        zzuj zza = zzczy.zza(this.f13192b, zzczlVar.zzglq);
        final zzbdi zzc = this.f13193c.zzc(zza);
        final zzbjt zza2 = this.f13191a.zza(new zzbmt(zzcztVar, zzczlVar, null), new zzbjw(zzc.getView(), zzc, zzczy.zze(zza), zzczlVar.zzfdp));
        zza2.zzadx().zzb(zzc, false);
        zza2.zzadk().zza(new zzbpe(zzc) { // from class: com.google.android.gms.internal.ads.st

            /* renamed from: a */
            private final zzbdi f10473a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10473a = zzc;
            }

            @Override // com.google.android.gms.internal.ads.zzbpe
            public final void onAdImpression() {
                zzbdi zzbdiVar = this.f10473a;
                if (zzbdiVar.zzaaa() != null) {
                    zzbdiVar.zzaaa().zzaaz();
                }
            }
        }, zzazd.zzdwj);
        zza2.zzadx();
        return zzdgs.zzb(zzcbp.zza(zzc, zzczlVar.zzglo.zzdhr, zzczlVar.zzglo.zzdht), new zzded(zza2) { // from class: com.google.android.gms.internal.ads.ss

            /* renamed from: a */
            private final zzbjt f10472a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10472a = zza2;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                return this.f10472a.zzadw();
            }
        }, zzazd.zzdwj);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return (zzczlVar.zzglo == null || zzczlVar.zzglo.zzdht == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<zzbke> zzb(final zzczt zzcztVar, final zzczl zzczlVar) {
        return zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(this, zzcztVar, zzczlVar) { // from class: com.google.android.gms.internal.ads.sr

            /* renamed from: a */
            private final zzciu f10469a;

            /* renamed from: b */
            private final zzczt f10470b;

            /* renamed from: c */
            private final zzczl f10471c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10469a = this;
                this.f10470b = zzcztVar;
                this.f10471c = zzczlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10469a.m3760a(this.f10470b, this.f10471c);
            }
        }, this.f13195e);
    }
}
