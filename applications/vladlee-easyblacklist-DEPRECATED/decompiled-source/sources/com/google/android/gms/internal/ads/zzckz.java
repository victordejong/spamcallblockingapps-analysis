package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckz.class */
public final class zzckz implements zzcir<zzbwk, zzdac, zzcjy> {

    /* renamed from: a */
    private final Context f13280a;

    /* renamed from: b */
    private final zzbvm f13281b;

    /* renamed from: c */
    private final Executor f13282c;

    public zzckz(Context context, zzbvm zzbvmVar, Executor executor) {
        this.f13280a = context;
        this.f13281b = zzbvmVar;
        this.f13282c = executor;
    }

    /* renamed from: a */
    private static boolean m3742a(zzczt zzcztVar, int i) {
        return zzcztVar.zzgmh.zzfgl.zzgmn.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzdac, zzcjy> zzcipVar) {
        zzcipVar.zzddn.zza(this.f13280a, zzcztVar.zzgmh.zzfgl.zzgml, zzczlVar.zzglr.toString(), zzaxs.zza(zzczlVar.zzglo), zzcipVar.zzfyf, zzcztVar.zzgmh.zzfgl.zzddz, zzcztVar.zzgmh.zzfgl.zzgmn);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzbwk zzb(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzdac, zzcjy> zzcipVar) {
        zzbws zzbwsVar;
        zzall zzsl = zzcipVar.zzddn.zzsl();
        zzalq zzsm = zzcipVar.zzddn.zzsm();
        zzalr zzsr = zzcipVar.zzddn.zzsr();
        if (zzsr != null && m3742a(zzcztVar, 6)) {
            zzbwsVar = zzbws.zzb(zzsr);
        } else if (zzsl != null && m3742a(zzcztVar, 6)) {
            zzbwsVar = zzbws.zzb(zzsl);
        } else if (zzsl != null && m3742a(zzcztVar, 2)) {
            zzbwsVar = zzbws.zza(zzsl);
        } else if (zzsm != null && m3742a(zzcztVar, 6)) {
            zzbwsVar = zzbws.zzb(zzsm);
        } else if (zzsm == null || !m3742a(zzcztVar, 1)) {
            throw new zzclr("No native ad mappers", 0);
        } else {
            zzbwsVar = zzbws.zza(zzsm);
        }
        if (zzcztVar.zzgmh.zzfgl.zzgmn.contains(Integer.toString(zzbwsVar.zzaja()))) {
            zzbwt zza = this.f13281b.zza(new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge), new zzbxe(zzbwsVar), new zzbyg(zzsm, zzsl, zzsr));
            zzcipVar.zzfyf.zza(zza.zzadm());
            zza.zzadh().zza((zzbpg) new zzbiu(zzcipVar.zzddn), this.f13282c);
            return zza.zzadn();
        }
        throw new zzclr("No corresponding native ad listener", 0);
    }
}
