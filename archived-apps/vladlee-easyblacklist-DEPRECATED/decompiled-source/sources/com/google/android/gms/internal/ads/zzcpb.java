package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzbrm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpb.class */
public final class zzcpb implements zzcox<zzbmd> {

    /* renamed from: a */
    private final zzczw f13686a;

    /* renamed from: b */
    private final zzbfx f13687b;

    /* renamed from: c */
    private final Context f13688c;

    /* renamed from: d */
    private final zzcov f13689d;

    /* renamed from: e */
    private zzbmo f13690e;

    public zzcpb(zzbfx zzbfxVar, Context context, zzcov zzcovVar, zzczw zzczwVar) {
        this.f13687b = zzbfxVar;
        this.f13688c = context;
        this.f13689d = zzcovVar;
        this.f13686a = zzczwVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3709a() {
        this.f13689d.zzamu().onAdFailedToLoad(1);
    }

    @Override // com.google.android.gms.internal.ads.zzcox
    public final boolean isLoading() {
        zzbmo zzbmoVar = this.f13690e;
        return zzbmoVar != null && zzbmoVar.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzcox
    public final boolean zza(zzug zzugVar, String str, zzcpa zzcpaVar, zzcoz<? super zzbmd> zzcozVar) {
        if (str == null) {
            zzavs.zzex("Ad unit ID should not be null for NativeAdLoader.");
            this.f13687b.zzaca().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.vh

                /* renamed from: a */
                private final zzcpb f10621a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10621a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10621a.m3709a();
                }
            });
            return false;
        }
        zzdad.zze(this.f13688c, zzugVar.zzccb);
        zzczu zzaos = this.f13686a.zzg(zzugVar).zzdl(zzcpaVar instanceof zzcpc ? ((zzcpc) zzcpaVar).zzgdu : 1).zzaos();
        zzbvm zzadf = this.f13687b.zzacl().zza(new zzbod.zza().zzbz(this.f13688c).zza(zzaos).zzahh()).zza(new zzbrm.zza().zza(this.f13689d.zzamt(), this.f13687b.zzaca()).zza(this.f13689d.zzamu(), this.f13687b.zzaca()).zza(this.f13689d.zzamv(), this.f13687b.zzaca()).zza(this.f13689d.zzamw(), this.f13687b.zzaca()).zza(this.f13689d.zzams(), this.f13687b.zzaca()).zza(zzaos.zzgmr, this.f13687b.zzaca()).zzahw()).zza(this.f13689d.zzamr()).zzadf();
        zzadf.zzade().zzdm(1);
        this.f13690e = new zzbmo(this.f13687b.zzacc(), this.f13687b.zzacb(), zzadf.zzadc().zzaha());
        this.f13690e.zza(new C2301vg(this, zzcozVar, zzadf));
        return true;
    }
}
