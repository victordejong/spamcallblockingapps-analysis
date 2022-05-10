package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmb.class */
public final class zzdmb implements zzeoy<zzdlv<zzbnq, zzbnv>> {

    /* renamed from: a */
    public final zzeph<Context> f27499a;

    /* renamed from: b */
    public final zzeph<zzdpw> f27500b;

    /* renamed from: c */
    public final zzeph<zzdqo> f27501c;

    public zzdmb(zzeph<Context> zzephVar, zzeph<zzdpw> zzephVar2, zzeph<zzdqo> zzephVar3) {
        this.f27499a = zzephVar;
        this.f27500b = zzephVar2;
        this.f27501c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdlv<zzbnq, zzbnv> a = zzdlz.m13515a(this.f27499a.get(), this.f27500b.get(), this.f27501c.get());
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
