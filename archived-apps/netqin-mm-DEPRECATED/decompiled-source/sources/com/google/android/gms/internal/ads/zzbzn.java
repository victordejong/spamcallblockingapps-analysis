package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzn.class */
public final class zzbzn implements zzeoy<zzcwj> {

    /* renamed from: a */
    public final zzbys f25639a;

    /* renamed from: b */
    public final zzeph<Clock> f25640b;

    /* renamed from: c */
    public final zzeph<zzcwl> f25641c;

    /* renamed from: d */
    public final zzeph<zzctd> f25642d;

    public zzbzn(zzbys zzbysVar, zzeph<Clock> zzephVar, zzeph<zzcwl> zzephVar2, zzeph<zzctd> zzephVar3) {
        this.f25639a = zzbysVar;
        this.f25640b = zzephVar;
        this.f25641c = zzephVar2;
        this.f25642d = zzephVar3;
    }

    /* renamed from: a */
    public static zzbzn m14876a(zzbys zzbysVar, zzeph<Clock> zzephVar, zzeph<zzcwl> zzephVar2, zzeph<zzctd> zzephVar3) {
        return new zzbzn(zzbysVar, zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcwj a = this.f25639a.m14936a(this.f25640b.get(), this.f25641c.get(), this.f25642d.get());
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
