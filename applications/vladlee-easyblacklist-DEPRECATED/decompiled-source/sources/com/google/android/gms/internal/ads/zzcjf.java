package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.zzb;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjf.class */
public final class zzcjf implements zzcir<zzbkk, zzdac, zzcjy> {

    /* renamed from: a */
    private final Context f13208a;

    /* renamed from: b */
    private final zzazb f13209b;

    /* renamed from: c */
    private final zzblg f13210c;

    /* renamed from: d */
    private final Executor f13211d;

    public zzcjf(Context context, zzazb zzazbVar, zzblg zzblgVar, Executor executor) {
        this.f13208a = context;
        this.f13209b = zzazbVar;
        this.f13210c = zzblgVar;
        this.f13211d = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzdac, zzcjy> zzcipVar) {
        zzuj zzujVar = zzcztVar.zzgmh.zzfgl.zzblm;
        zzuj zzujVar2 = zzujVar.zzccv ? new zzuj(this.f13208a, zzb.zza(zzujVar.width, zzujVar.height)) : zzczy.zza(this.f13208a, zzczlVar.zzglq);
        if (this.f13209b.zzdwa < 4100000) {
            zzcipVar.zzddn.zza(this.f13208a, zzujVar2, zzcztVar.zzgmh.zzfgl.zzgml, zzczlVar.zzglr.toString(), zzcipVar.zzfyf);
        } else {
            zzcipVar.zzddn.zza(this.f13208a, zzujVar2, zzcztVar.zzgmh.zzfgl.zzgml, zzczlVar.zzglr.toString(), zzaxs.zza(zzczlVar.zzglo), zzcipVar.zzfyf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzbkk zzb(zzczt zzcztVar, zzczl zzczlVar, zzcip<zzdac, zzcjy> zzcipVar) {
        zzblg zzblgVar = this.f13210c;
        zzbmt zzbmtVar = new zzbmt(zzcztVar, zzczlVar, zzcipVar.zzfge);
        View view = zzcipVar.zzddn.getView();
        zzdac zzdacVar = zzcipVar.zzddn;
        zzdacVar.getClass();
        zzbkj zza = zzblgVar.zza(zzbmtVar, new zzbkn(view, null, C2241ta.m4474a(zzdacVar), zzczlVar.zzglq.get(0)));
        zza.zzaei().zzq(zzcipVar.zzddn.getView());
        zza.zzadh().zza((zzbpg) new zzbiu(zzcipVar.zzddn), this.f13211d);
        zzcipVar.zzfyf.zza(zza.zzadm());
        return zza.zzaeh();
    }
}
