package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckk.class */
public final class zzckk implements zzcir<zzbtu, zzdac, zzcjy> {

    /* renamed from: a */
    private final Context f13264a;

    /* renamed from: b */
    private final zzbup f13265b;

    /* renamed from: c */
    private final zzazb f13266c;

    /* renamed from: d */
    private final Executor f13267d;

    public zzckk(Context context, zzazb zzazbVar, zzbup zzbupVar, Executor executor) {
        this.f13264a = context;
        this.f13266c = zzazbVar;
        this.f13265b = zzbupVar;
        this.f13267d = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzdac, zzcjy> zzcipVar) {
        if (this.f13266c.zzdwa < 4100000) {
            zzcipVar.zzddn.zza(this.f13264a, zzcztVar.zzgmh.zzfgl.zzgml, zzczlVar.zzglr.toString(), zzcipVar.zzfyf);
        } else {
            zzcipVar.zzddn.zza(this.f13264a, zzcztVar.zzgmh.zzfgl.zzgml, zzczlVar.zzglr.toString(), zzaxs.zza(zzczlVar.zzglo), zzcipVar.zzfyf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzbtu zzb(zzczt zzcztVar, zzczl zzczlVar, final zzcip<zzdac, zzcjy> zzcipVar) {
        zzbtw zza = this.f13265b.zza(new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge), new zzbtv(new zzbuv(zzcipVar) { // from class: com.google.android.gms.internal.ads.to

            /* renamed from: a */
            private final zzcip f10520a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10520a = zzcipVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbuv
            public final void zza(boolean z, Context context) {
                zzcip zzcipVar2 = this.f10520a;
                try {
                    ((zzdac) zzcipVar2.zzddn).setImmersiveMode(z);
                    ((zzdac) zzcipVar2.zzddn).showInterstitial();
                } catch (zzdab e) {
                    zzavs.zzey("Cannot show interstitial.");
                }
            }
        }));
        zza.zzadh().zza((zzbpg) new zzbiu(zzcipVar.zzddn), this.f13267d);
        zzcipVar.zzfyf.zza(zza.zzadm());
        return zza.zzaem();
    }
}
