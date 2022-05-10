package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmh.class */
public final class zzcmh implements zzeoy<zzcmi> {

    /* renamed from: a */
    public final zzeph<Context> f26233a;

    /* renamed from: b */
    public final zzeph<zzdow> f26234b;

    /* renamed from: c */
    public final zzeph<zzcmu> f26235c;

    /* renamed from: d */
    public final zzeph<zzdog> f26236d;

    /* renamed from: e */
    public final zzeph<zzdnv> f26237e;

    /* renamed from: f */
    public final zzeph<zzcsp> f26238f;

    public zzcmh(zzeph<Context> zzephVar, zzeph<zzdow> zzephVar2, zzeph<zzcmu> zzephVar3, zzeph<zzdog> zzephVar4, zzeph<zzdnv> zzephVar5, zzeph<zzcsp> zzephVar6) {
        this.f26233a = zzephVar;
        this.f26234b = zzephVar2;
        this.f26235c = zzephVar3;
        this.f26236d = zzephVar4;
        this.f26237e = zzephVar5;
        this.f26238f = zzephVar6;
    }

    /* renamed from: a */
    public static zzcmh m14070a(zzeph<Context> zzephVar, zzeph<zzdow> zzephVar2, zzeph<zzcmu> zzephVar3, zzeph<zzdog> zzephVar4, zzeph<zzdnv> zzephVar5, zzeph<zzcsp> zzephVar6) {
        return new zzcmh(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5, zzephVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcmi(this.f26233a.get(), this.f26234b.get(), this.f26235c.get(), this.f26236d.get(), this.f26237e.get(), this.f26238f.get());
    }
}
