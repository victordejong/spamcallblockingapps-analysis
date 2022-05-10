package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmk.class */
public final class zzcmk implements zzbui, zzbvs, zzbws {

    /* renamed from: a */
    public final zzcms f26249a;

    /* renamed from: b */
    public final zzcmz f26250b;

    public zzcmk(zzcms zzcmsVar, zzcmz zzcmzVar) {
        this.f26249a = zzcmsVar;
        this.f26250b = zzcmzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14002a(zzatc zzatcVar) {
        this.f26249a.m14052a(zzatcVar.f24447a);
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14001a(zzdog zzdogVar) {
        this.f26249a.m14051a(zzdogVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(zzva zzvaVar) {
        this.f26249a.m14053a().put("action", "ftl");
        this.f26249a.m14053a().put("ftl", String.valueOf(zzvaVar.f28995a));
        this.f26249a.m14053a().put("ed", zzvaVar.f28997c);
        this.f26250b.m14035a(this.f26249a.m14053a());
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        this.f26249a.m14053a().put("action", "loaded");
        this.f26250b.m14035a(this.f26249a.m14053a());
    }
}
