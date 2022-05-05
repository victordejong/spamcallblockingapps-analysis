package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbod;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvs.class */
public final class zzbvs implements zzdxg<zzbmi<zzbkk>> {

    /* renamed from: a */
    private final zzdxp<zzbfx> f12497a;

    /* renamed from: b */
    private final zzdxp<zzbod.zza> f12498b;

    /* renamed from: c */
    private final zzdxp<zzbrm> f12499c;

    /* renamed from: d */
    private final zzdxp<zzbvi> f12500d;

    /* renamed from: e */
    private final zzdxp<zzbqp> f12501e;

    public zzbvs(zzdxp<zzbfx> zzdxpVar, zzdxp<zzbod.zza> zzdxpVar2, zzdxp<zzbrm> zzdxpVar3, zzdxp<zzbvi> zzdxpVar4, zzdxp<zzbqp> zzdxpVar5) {
        this.f12497a = zzdxpVar;
        this.f12498b = zzdxpVar2;
        this.f12499c = zzdxpVar3;
        this.f12500d = zzdxpVar4;
        this.f12501e = zzdxpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzbfx zzbfxVar = this.f12497a.get();
        zzbod.zza zzaVar = this.f12498b.get();
        zzbrm zzbrmVar = this.f12499c.get();
        return (zzbmi) zzdxm.zza(zzbfxVar.zzach().zzc(zzaVar.zzahh()).zzc(zzbrmVar).zzb(this.f12500d.get()).zza(new zzcns(null)).zza(new zzbma(this.f12501e.get())).zzb(new zzbkf(null)).zzaee().zzaed(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
