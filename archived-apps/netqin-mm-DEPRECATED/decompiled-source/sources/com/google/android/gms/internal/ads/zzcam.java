package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcam.class */
public final class zzcam implements zzeoy<zzcaj> {

    /* renamed from: a */
    public final zzeph<zzdnv> f25657a;

    /* renamed from: b */
    public final zzeph<zzdst> f25658b;

    public zzcam(zzeph<zzdnv> zzephVar, zzeph<zzdst> zzephVar2) {
        this.f25657a = zzephVar;
        this.f25658b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcam m14860a(zzeph<zzdnv> zzephVar, zzeph<zzdst> zzephVar2) {
        return new zzcam(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcaj(this.f25657a.get(), this.f25658b.get());
    }
}
