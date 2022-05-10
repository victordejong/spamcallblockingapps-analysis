package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C4217xj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjo.class */
public final class zzcjo implements zzeoy<zzcta<zzcjg>> {

    /* renamed from: a */
    public final zzeph<zzcxv<zzcjg, zzdpa, zzcut>> f26131a;

    /* renamed from: b */
    public final zzeph<zzcxv<zzcjg, zzdpa, zzcuu>> f26132b;

    /* renamed from: c */
    public final zzeph<zzdok> f26133c;

    public zzcjo(zzeph<zzcxv<zzcjg, zzdpa, zzcut>> zzephVar, zzeph<zzcxv<zzcjg, zzdpa, zzcuu>> zzephVar2, zzeph<zzdok> zzephVar3) {
        this.f26131a = zzephVar;
        this.f26132b = zzephVar2;
        this.f26133c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzeph<zzcxv<zzcjg, zzdpa, zzcut>> zzephVar = this.f26131a;
        zzcxv<zzcjg, zzdpa, zzcut> zzcxvVar = C4217xj.f16054a[this.f26133c.get().f27652n.f27623a - 1] != 1 ? this.f26132b.get() : zzephVar.get();
        zzepe.m12187a(zzcxvVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcxvVar;
    }
}
