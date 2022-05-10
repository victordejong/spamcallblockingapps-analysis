package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdss.class */
public final class zzdss implements zzeoy<zzamb> {

    /* renamed from: a */
    public final zzeph<Context> f27798a;

    /* renamed from: b */
    public final zzeph<zzbbx> f27799b;

    public zzdss(zzdsp zzdspVar, zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2) {
        this.f27798a = zzephVar;
        this.f27799b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzamb b = new zzalw().m16666b(this.f27798a.get(), this.f27799b.get());
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }
}
