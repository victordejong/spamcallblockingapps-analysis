package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckl.class */
public final class zzckl implements zzcir<zzbtu, zzani, zzcjy> {

    /* renamed from: a */
    private final Context f13268a;

    /* renamed from: b */
    private final zzbup f13269b;

    public zzckl(Context context, zzbup zzbupVar) {
        this.f13268a = context;
        this.f13269b = zzbupVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzani, zzcjy> zzcipVar) {
        try {
            zzcipVar.zzddn.zzdm(zzczlVar.zzdem);
            zzcipVar.zzddn.zza(zzczlVar.zzeif, zzczlVar.zzglr.toString(), zzcztVar.zzgmh.zzfgl.zzgml, ObjectWrapper.wrap(this.f13268a), new BinderC2257tq(zzcipVar, (byte) 0), zzcipVar.zzfyf);
        } catch (RemoteException e) {
            throw new zzdab(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzbtu zzb(zzczt zzcztVar, zzczl zzczlVar, final zzcip<zzani, zzcjy> zzcipVar) {
        final zzciq zzciqVar = new zzciq(zzczlVar);
        zzbtw zza = this.f13269b.zza(new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge), new zzbtv(new zzbuv(zzcipVar, zzciqVar) { // from class: com.google.android.gms.internal.ads.tp

            /* renamed from: a */
            private final zzcip f10521a;

            /* renamed from: b */
            private final zzciq f10522b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10521a = zzcipVar;
                this.f10522b = zzciqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbuv
            public final void zza(boolean z, Context context) {
                zzcip zzcipVar2 = this.f10521a;
                zzciq zzciqVar2 = this.f10522b;
                try {
                    if (((zzani) zzcipVar2.zzddn).zzz(ObjectWrapper.wrap(context))) {
                        zzciqVar2.zzamd();
                    } else {
                        zzavs.zzez("Cannot show interstitial.");
                    }
                } catch (RemoteException e) {
                    zzavs.zzd("Cannot show interstitial.", e);
                }
            }
        }));
        zzciqVar.zza(zza.zzadk());
        zzcipVar.zzfyf.zza(zza.zzadm());
        return zza.zzaem();
    }
}
