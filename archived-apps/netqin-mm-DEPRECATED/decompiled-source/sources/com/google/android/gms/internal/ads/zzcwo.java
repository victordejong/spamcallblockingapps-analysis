package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwo.class */
public final class zzcwo implements zzeoy<zzcwl> {

    /* renamed from: a */
    public final zzeph<zzdow> f26665a;

    /* renamed from: b */
    public final zzeph<zzckp> f26666b;

    /* renamed from: c */
    public final zzeph<zzcmu> f26667c;

    public zzcwo(zzeph<zzdow> zzephVar, zzeph<zzckp> zzephVar2, zzeph<zzcmu> zzephVar3) {
        this.f26665a = zzephVar;
        this.f26666b = zzephVar2;
        this.f26667c = zzephVar3;
    }

    /* renamed from: a */
    public static zzcwo m13813a(zzeph<zzdow> zzephVar, zzeph<zzckp> zzephVar2, zzeph<zzcmu> zzephVar3) {
        return new zzcwo(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcwl(this.f26665a.get(), this.f26666b.get(), this.f26667c.get());
    }
}
