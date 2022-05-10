package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbub.class */
public final class zzbub implements zzeoy<zzbty> {

    /* renamed from: a */
    public final zzeph<zzdnv> f25554a;

    /* renamed from: b */
    public final zzeph<String> f25555b;

    /* renamed from: c */
    public final zzeph<zzctd> f25556c;

    public zzbub(zzeph<zzdnv> zzephVar, zzeph<String> zzephVar2, zzeph<zzctd> zzephVar3) {
        this.f25554a = zzephVar;
        this.f25555b = zzephVar2;
        this.f25556c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbub m15037a(zzeph<zzdnv> zzephVar, zzeph<String> zzephVar2, zzeph<zzctd> zzephVar3) {
        return new zzbub(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbty(this.f25554a.get(), this.f25555b.get(), this.f25556c.get());
    }
}
