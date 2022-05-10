package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcx.class */
public final class zzdcx implements zzeoy<zzdcv> {

    /* renamed from: a */
    public final zzeph<String> f27143a;

    /* renamed from: b */
    public final zzeph<String> f27144b;

    /* renamed from: c */
    public final zzeph<zzbsa> f27145c;

    /* renamed from: d */
    public final zzeph<zzdpj> f27146d;

    /* renamed from: e */
    public final zzeph<zzdok> f27147e;

    public zzdcx(zzeph<String> zzephVar, zzeph<String> zzephVar2, zzeph<zzbsa> zzephVar3, zzeph<zzdpj> zzephVar4, zzeph<zzdok> zzephVar5) {
        this.f27143a = zzephVar;
        this.f27144b = zzephVar2;
        this.f27145c = zzephVar3;
        this.f27146d = zzephVar4;
        this.f27147e = zzephVar5;
    }

    /* renamed from: a */
    public static zzdcx m13648a(zzeph<String> zzephVar, zzeph<String> zzephVar2, zzeph<zzbsa> zzephVar3, zzeph<zzdpj> zzephVar4, zzeph<zzdok> zzephVar5) {
        return new zzdcx(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdcv(this.f27143a.get(), this.f27144b.get(), this.f27145c.get(), this.f27146d.get(), this.f27147e.get());
    }
}
