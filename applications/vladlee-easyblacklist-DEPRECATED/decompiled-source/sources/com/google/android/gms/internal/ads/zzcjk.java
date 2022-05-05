package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjk.class */
public final class zzcjk implements zzcir<zzbkk, zzani, zzcjy> {

    /* renamed from: a */
    private final Context f13222a;

    /* renamed from: b */
    private final zzblg f13223b;

    /* renamed from: c */
    private View f13224c;

    public zzcjk(Context context, zzblg zzblgVar) {
        this.f13222a = context;
        this.f13223b = zzblgVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ zzxb m3756a(zzcip zzcipVar) {
        try {
            return ((zzani) zzcipVar.zzddn).getVideoController();
        } catch (RemoteException e) {
            throw new zzdab(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzani, zzcjy> zzcipVar) {
        try {
            zzcipVar.zzddn.zzdm(zzczlVar.zzdem);
            zzcipVar.zzddn.zza(zzczlVar.zzeif, zzczlVar.zzglr.toString(), zzcztVar.zzgmh.zzfgl.zzgml, ObjectWrapper.wrap(this.f13222a), new BinderC2243tc(this, zzcipVar, (byte) 0), zzcipVar.zzfyf, zzcztVar.zzgmh.zzfgl.zzblm);
        } catch (RemoteException e) {
            throw new zzdab(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzbkk zzb(zzczt zzcztVar, zzczl zzczlVar, final zzcip<zzani, zzcjy> zzcipVar) {
        zzbkj zza = this.f13223b.zza(new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge), new zzbkn(this.f13224c, null, new zzbme(zzcipVar) { // from class: com.google.android.gms.internal.ads.tb

            /* renamed from: a */
            private final zzcip f10485a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10485a = zzcipVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbme
            public final zzxb getVideoController() {
                return zzcjk.m3756a(this.f10485a);
            }
        }, zzczlVar.zzglq.get(0)));
        zza.zzaei().zzq(this.f13224c);
        zzcipVar.zzfyf.zza(zza.zzadm());
        return zza.zzaeh();
    }
}
