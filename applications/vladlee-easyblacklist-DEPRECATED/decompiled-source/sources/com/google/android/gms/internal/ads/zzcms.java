package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcms.class */
public final class zzcms implements zzcir<zzcbb, zzdac, zzcjx> {

    /* renamed from: a */
    private final Context f13374a;

    /* renamed from: b */
    private final Executor f13375b;

    /* renamed from: c */
    private final zzcbi f13376c;

    public zzcms(Context context, Executor executor, zzcbi zzcbiVar) {
        this.f13374a = context;
        this.f13375b = executor;
        this.f13376c = zzcbiVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m3732b(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzdac, zzcjx> zzcipVar) {
        try {
            zzcipVar.zzddn.zza(zzcztVar.zzgmh.zzfgl.zzgml, zzczlVar.zzglr.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(zzcipVar.zzfge);
            zzavs.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzdac, zzcjx> zzcipVar) {
        if (!zzcipVar.zzddn.isInitialized()) {
            zzcipVar.zzfyf.zza(new C2280um(this, zzcztVar, zzczlVar, zzcipVar));
            zzcipVar.zzddn.zza(this.f13374a, zzcztVar.zzgmh.zzfgl.zzgml, (String) null, zzcipVar.zzfyf, zzczlVar.zzglr.toString());
            return;
        }
        m3732b(zzcztVar, zzczlVar, zzcipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzcbb zzb(zzczt zzcztVar, zzczl zzczlVar, final zzcip<zzdac, zzcjx> zzcipVar) {
        zzcbd zza = this.f13376c.zza(new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge), new zzcbg(new zzbuv(zzcipVar) { // from class: com.google.android.gms.internal.ads.uk

            /* renamed from: a */
            private final zzcip f10571a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10571a = zzcipVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbuv
            public final void zza(boolean z, Context context) {
                zzcip zzcipVar2 = this.f10571a;
                try {
                    ((zzdac) zzcipVar2.zzddn).setImmersiveMode(z);
                    ((zzdac) zzcipVar2.zzddn).showVideo();
                } catch (zzdab e) {
                    zzavs.zzd("Cannot show rewarded video.", e);
                }
            }
        }));
        zza.zzadh().zza((zzbpg) new zzbiu(zzcipVar.zzddn), this.f13375b);
        zzbpm zzadi = zza.zzadi();
        zzboq zzadj = zza.zzadj();
        zzcipVar.zzfyf.zza(new BinderC2281un(zza.zzaen(), zzadj, zzadi, zza.zzaev()));
        return zza.zzaeu();
    }
}
