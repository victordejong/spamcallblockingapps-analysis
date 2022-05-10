package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyo.class */
public final class zzcyo<AdT> implements zzeoy<zzcyk<AdT>> {

    /* renamed from: a */
    public final zzeph<zzdsi> f26765a;

    /* renamed from: b */
    public final zzeph<zzdzb> f26766b;

    /* renamed from: c */
    public final zzeph<zzaby> f26767c;

    /* renamed from: d */
    public final zzeph<zzcyl<AdT>> f26768d;

    public zzcyo(zzeph<zzdsi> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzaby> zzephVar3, zzeph<zzcyl<AdT>> zzephVar4) {
        this.f26765a = zzephVar;
        this.f26766b = zzephVar2;
        this.f26767c = zzephVar3;
        this.f26768d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcyk(this.f26765a.get(), this.f26766b.get(), this.f26767c.get(), this.f26768d.get());
    }
}
