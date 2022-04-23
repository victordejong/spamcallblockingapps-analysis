package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclb.class */
public final class zzclb implements zzcir<zzbwk, zzani, zzcjy> {

    /* renamed from: a */
    private final Context f13286a;

    /* renamed from: b */
    private final zzbvm f13287b;

    /* renamed from: c */
    private zzalr f13288c;

    public zzclb(Context context, zzbvm zzbvmVar) {
        this.f13286a = context;
        this.f13287b = zzbvmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzani, zzcjy> zzcipVar) {
        try {
            zzcipVar.zzddn.zzdm(zzczlVar.zzdem);
            zzcipVar.zzddn.zza(zzczlVar.zzeif, zzczlVar.zzglr.toString(), zzcztVar.zzgmh.zzfgl.zzgml, ObjectWrapper.wrap(this.f13286a), new BinderC2263tw(this, zzcipVar, (byte) 0), zzcipVar.zzfyf);
        } catch (RemoteException e) {
            throw new zzdab(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzbwk zzb(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzani, zzcjy> zzcipVar) {
        if (zzcztVar.zzgmh.zzfgl.zzgmn.contains(Integer.toString(6))) {
            zzbws zzb = zzbws.zzb(this.f13288c);
            if (zzcztVar.zzgmh.zzfgl.zzgmn.contains(Integer.toString(zzb.zzaja()))) {
                zzbwt zza = this.f13287b.zza(new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge), new zzbxe(zzb), new zzbyg(null, null, this.f13288c));
                zzcipVar.zzfyf.zza(zza.zzadm());
                return zza.zzadn();
            }
            throw new zzclr("No corresponding native ad listener", 0);
        }
        throw new zzclr("Unified must be used for RTB.", 1);
    }
}
