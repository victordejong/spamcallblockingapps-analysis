package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclv.class */
public final class zzclv implements zzcir<zzcbb, zzdac, zzcjy> {

    /* renamed from: a */
    private final Context f13339a;

    /* renamed from: b */
    private final Executor f13340b;

    /* renamed from: c */
    private final zzcbi f13341c;

    public zzclv(Context context, Executor executor, zzcbi zzcbiVar) {
        this.f13339a = context;
        this.f13340b = executor;
        this.f13341c = zzcbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzdac, zzcjy> zzcipVar) {
        try {
            zzcipVar.zzddn.zzb(this.f13339a, zzcztVar.zzgmh.zzfgl.zzgml, zzczlVar.zzglr.toString(), zzcipVar.zzfyf);
        } catch (Exception e) {
            String valueOf = String.valueOf(zzcipVar.zzfge);
            zzavs.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzcbb zzb(zzczt zzcztVar, zzczl zzczlVar, final zzcip<zzdac, zzcjy> zzcipVar) {
        zzcbd zza = this.f13341c.zza(new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge), new zzcbg(new zzbuv(zzcipVar) { // from class: com.google.android.gms.internal.ads.tz

            /* renamed from: a */
            private final zzcip f10546a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10546a = zzcipVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbuv
            public final void zza(boolean z, Context context) {
                zzcip zzcipVar2 = this.f10546a;
                try {
                    ((zzdac) zzcipVar2.zzddn).setImmersiveMode(z);
                    ((zzdac) zzcipVar2.zzddn).zzcb(context);
                } catch (zzdab e) {
                    zzavs.zzd("Cannot show rewarded .", e);
                }
            }
        }));
        zza.zzadh().zza((zzbpg) new zzbiu(zzcipVar.zzddn), this.f13340b);
        zzcipVar.zzfyf.zza(zza.zzaew());
        return zza.zzaeu();
    }
}
