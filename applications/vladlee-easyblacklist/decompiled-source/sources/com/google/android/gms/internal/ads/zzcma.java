package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcma.class */
public final class zzcma implements zzcir<zzcbb, zzani, zzcjy> {

    /* renamed from: a */
    private final Context f13345a;

    /* renamed from: b */
    private final zzcbi f13346b;

    public zzcma(Context context, zzcbi zzcbiVar) {
        this.f13345a = context;
        this.f13346b = zzcbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzani, zzcjy> zzcipVar) {
        try {
            zzcipVar.zzddn.zzdm(zzczlVar.zzdem);
            zzcipVar.zzddn.zza(zzczlVar.zzeif, zzczlVar.zzglr.toString(), zzcztVar.zzgmh.zzfgl.zzgml, ObjectWrapper.wrap(this.f13345a), new BinderC2270uc(zzcipVar, (byte) 0), zzcipVar.zzfyf);
        } catch (RemoteException e) {
            zzdpt.zzl(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzcbb zzb(zzczt zzcztVar, zzczl zzczlVar, final zzcip<zzani, zzcjy> zzcipVar) {
        final zzciq zzciqVar = new zzciq(zzczlVar);
        zzcbd zza = this.f13346b.zza(new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge), new zzcbg(new zzbuv(zzcipVar, zzciqVar) { // from class: com.google.android.gms.internal.ads.ua

            /* renamed from: a */
            private final zzcip f10548a;

            /* renamed from: b */
            private final zzciq f10549b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10548a = zzcipVar;
                this.f10549b = zzciqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbuv
            public final void zza(boolean z, Context context) {
                zzcip zzcipVar2 = this.f10548a;
                zzciq zzciqVar2 = this.f10549b;
                try {
                    if (((zzani) zzcipVar2.zzddn).zzaa(ObjectWrapper.wrap(context))) {
                        zzciqVar2.zzamd();
                    } else {
                        zzavs.zzez("Can't show rewarded video.");
                    }
                } catch (RemoteException e) {
                    zzavs.zzd("Can't show rewarded video.", e);
                }
            }
        }));
        zzciqVar.zza(zza.zzadk());
        zzcipVar.zzfyf.zza(zza.zzaew());
        return zza.zzaeu();
    }
}
