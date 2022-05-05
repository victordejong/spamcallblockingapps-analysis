package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckc.class */
public final class zzckc implements zzcio<zzbtu> {

    /* renamed from: a */
    private final Context f13252a;

    /* renamed from: b */
    private final zzcbn f13253b;

    /* renamed from: c */
    private final zzbup f13254c;

    /* renamed from: d */
    private final zzczu f13255d;

    /* renamed from: e */
    private final Executor f13256e;

    /* renamed from: f */
    private final zzazb f13257f;

    public zzckc(Context context, zzazb zzazbVar, zzczu zzczuVar, Executor executor, zzbup zzbupVar, zzcbn zzcbnVar) {
        this.f13252a = context;
        this.f13255d = zzczuVar;
        this.f13254c = zzbupVar;
        this.f13256e = executor;
        this.f13257f = zzazbVar;
        this.f13253b = zzcbnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3747a(final zzczl zzczlVar, zzccd zzccdVar, zzczt zzcztVar) {
        zzdhe<?> zzdheVar;
        final zzbdi zza = this.f13253b.zza(this.f13255d.zzblm, zzczlVar.zzega);
        zza.zzba(zzczlVar.zzdll);
        zzccdVar.zza(this.f13252a, zza.getView());
        zzazl zzazlVar = new zzazl();
        final zzbtw zza2 = this.f13254c.zza(new zzbmt(zzcztVar, zzczlVar, null), new zzbtv(new C2254tn(this.f13252a, this.f13257f, zzazlVar, zzczlVar, zza, (byte) 0), zza));
        zzazlVar.set(zza2);
        zza2.zzadk().zza(new zzbpe(zza) { // from class: com.google.android.gms.internal.ads.tk

            /* renamed from: a */
            private final zzbdi f10509a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10509a = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzbpe
            public final void onAdImpression() {
                zzbdi zzbdiVar = this.f10509a;
                if (zzbdiVar.zzaaa() != null) {
                    zzbdiVar.zzaaa().zzaaz();
                }
            }
        }, zzazd.zzdwj);
        zza2.zzadx().zzb(zza, true);
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcqj)).booleanValue() || !zzczlVar.zzega) {
            zza2.zzadx();
            zzdheVar = zzcbp.zza(zza, zzczlVar.zzglo.zzdhr, zzczlVar.zzglo.zzdht);
        } else {
            zzdheVar = zzdgs.zzaj(null);
        }
        return zzdgs.zzb(zzdheVar, new zzded(this, zza, zzczlVar, zza2) { // from class: com.google.android.gms.internal.ads.tm

            /* renamed from: a */
            private final zzckc f10511a;

            /* renamed from: b */
            private final zzbdi f10512b;

            /* renamed from: c */
            private final zzczl f10513c;

            /* renamed from: d */
            private final zzbtw f10514d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10511a = this;
                this.f10512b = zza;
                this.f10513c = zzczlVar;
                this.f10514d = zza2;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                zzbdi zzbdiVar = this.f10512b;
                zzczl zzczlVar2 = this.f10513c;
                zzbtw zzbtwVar = this.f10514d;
                if (zzczlVar2.zzdmf) {
                    zzbdiVar.zzaan();
                }
                zzbdiVar.zzzu();
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzciq)).booleanValue()) {
                    zzq.zzks();
                    zzawh.zza(zzbdiVar);
                }
                return zzbtwVar.zzaem();
            }
        }, this.f13256e);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return (zzczlVar.zzglo == null || zzczlVar.zzglo.zzdht == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<zzbtu> zzb(final zzczt zzcztVar, final zzczl zzczlVar) {
        final zzccd zzccdVar = new zzccd();
        zzdhe<zzbtu> zzb = zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(this, zzczlVar, zzccdVar, zzcztVar) { // from class: com.google.android.gms.internal.ads.tj

            /* renamed from: a */
            private final zzckc f10505a;

            /* renamed from: b */
            private final zzczl f10506b;

            /* renamed from: c */
            private final zzccd f10507c;

            /* renamed from: d */
            private final zzczt f10508d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10505a = this;
                this.f10506b = zzczlVar;
                this.f10507c = zzccdVar;
                this.f10508d = zzcztVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10505a.m3747a(this.f10506b, this.f10507c, this.f10508d);
            }
        }, this.f13256e);
        zzccdVar.getClass();
        zzb.addListener(RunnableC2252tl.m4465a(zzccdVar), this.f13256e);
        return zzb;
    }
}
