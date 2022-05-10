package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcom.class */
public final class zzcom implements zzeoy<zzcoi> {

    /* renamed from: a */
    public final zzeph<zzdzb> f26344a;

    /* renamed from: b */
    public final zzeph<zzdzb> f26345b;

    /* renamed from: c */
    public final zzeph<zzcpt> f26346c;

    /* renamed from: d */
    public final zzeph<zzcqv> f26347d;

    public zzcom(zzeph<zzdzb> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzcpt> zzephVar3, zzeph<zzcqv> zzephVar4) {
        this.f26344a = zzephVar;
        this.f26345b = zzephVar2;
        this.f26346c = zzephVar3;
        this.f26347d = zzephVar4;
    }

    /* renamed from: a */
    public static zzcom m13972a(zzeph<zzdzb> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzcpt> zzephVar3, zzeph<zzcqv> zzephVar4) {
        return new zzcom(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcoi(this.f26344a.get(), this.f26345b.get(), this.f26346c.get(), zzeov.m12197b(this.f26347d));
    }
}
