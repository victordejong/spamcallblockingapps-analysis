package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgs.class */
public final class zzcgs implements zzdxg<C2207ru> {

    /* renamed from: a */
    private final zzdxp<Context> f13119a;

    /* renamed from: b */
    private final zzdxp<zzatv> f13120b;

    private zzcgs(zzdxp<Context> zzdxpVar, zzdxp<zzatv> zzdxpVar2) {
        this.f13119a = zzdxpVar;
        this.f13120b = zzdxpVar2;
    }

    public static zzcgs zzaf(zzdxp<Context> zzdxpVar, zzdxp<zzatv> zzdxpVar2) {
        return new zzcgs(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new C2207ru(this.f13119a.get(), this.f13120b.get());
    }
}
