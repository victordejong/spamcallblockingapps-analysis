package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmi.class */
public final class zzcmi implements zzcio<zzcbb> {

    /* renamed from: a */
    private final Context f13362a;

    /* renamed from: b */
    private final zzcbn f13363b;

    /* renamed from: c */
    private final zzcbi f13364c;

    /* renamed from: d */
    private final zzczu f13365d;

    /* renamed from: e */
    private final Executor f13366e;

    /* renamed from: f */
    private final zzazb f13367f;

    public zzcmi(Context context, zzazb zzazbVar, zzczu zzczuVar, Executor executor, zzcbi zzcbiVar, zzcbn zzcbnVar) {
        this.f13362a = context;
        this.f13365d = zzczuVar;
        this.f13364c = zzcbiVar;
        this.f13366e = executor;
        this.f13367f = zzazbVar;
        this.f13363b = zzcbnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3735a(final zzczl zzczlVar, zzccd zzccdVar, zzczt zzcztVar) {
        zzdhe<?> zzdheVar;
        final zzbdi zza = this.f13363b.zza(this.f13365d.zzblm, zzczlVar.zzega);
        zza.zzba(zzczlVar.zzdll);
        zzccdVar.zza(this.f13362a, zza.getView());
        zzazl zzazlVar = new zzazl();
        final zzcbd zza2 = this.f13364c.zza(new zzbmt(zzcztVar, zzczlVar, null), new zzcbg(new C2276ui(this.f13362a, this.f13363b, this.f13365d, this.f13367f, zzczlVar, zzazlVar, zza, (byte) 0), zza));
        zzazlVar.set(zza2);
        zzafy.zza(zza, zza2.zzaev());
        zza2.zzadk().zza(new zzbpe(zza) { // from class: com.google.android.gms.internal.ads.ue

            /* renamed from: a */
            private final zzbdi f10555a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10555a = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzbpe
            public final void onAdImpression() {
                zzbdi zzbdiVar = this.f10555a;
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
        return zzdgs.zzb(zzdheVar, new zzded(this, zza, zzczlVar, zza2) { // from class: com.google.android.gms.internal.ads.ug

            /* renamed from: a */
            private final zzcmi f10557a;

            /* renamed from: b */
            private final zzbdi f10558b;

            /* renamed from: c */
            private final zzczl f10559c;

            /* renamed from: d */
            private final zzcbd f10560d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10557a = this;
                this.f10558b = zza;
                this.f10559c = zzczlVar;
                this.f10560d = zza2;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                zzbdi zzbdiVar = this.f10558b;
                zzczl zzczlVar2 = this.f10559c;
                zzcbd zzcbdVar = this.f10560d;
                if (zzczlVar2.zzdmf) {
                    zzbdiVar.zzaan();
                }
                zzbdiVar.zzzu();
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzciq)).booleanValue()) {
                    zzq.zzks();
                    zzawh.zza(zzbdiVar);
                }
                return zzcbdVar.zzaeu();
            }
        }, this.f13366e);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return (zzczlVar.zzglo == null || zzczlVar.zzglo.zzdht == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<zzcbb> zzb(final zzczt zzcztVar, final zzczl zzczlVar) {
        final zzccd zzccdVar = new zzccd();
        zzdhe<zzcbb> zzb = zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(this, zzczlVar, zzccdVar, zzcztVar) { // from class: com.google.android.gms.internal.ads.ud

            /* renamed from: a */
            private final zzcmi f10551a;

            /* renamed from: b */
            private final zzczl f10552b;

            /* renamed from: c */
            private final zzccd f10553c;

            /* renamed from: d */
            private final zzczt f10554d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10551a = this;
                this.f10552b = zzczlVar;
                this.f10553c = zzccdVar;
                this.f10554d = zzcztVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10551a.m3735a(this.f10552b, this.f10553c, this.f10554d);
            }
        }, this.f13366e);
        zzccdVar.getClass();
        zzb.addListener(RunnableC2273uf.m4464a(zzccdVar), this.f13366e);
        return zzb;
    }
}
