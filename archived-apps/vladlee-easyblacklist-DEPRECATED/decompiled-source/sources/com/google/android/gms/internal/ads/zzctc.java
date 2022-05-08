package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctc.class */
public final class zzctc implements zzdxg<zzcta> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13842a;

    /* renamed from: b */
    private final zzdxp<Bundle> f13843b;

    private zzctc(zzdxp<zzdhd> zzdxpVar, zzdxp<Bundle> zzdxpVar2) {
        this.f13842a = zzdxpVar;
        this.f13843b = zzdxpVar2;
    }

    public static zzctc zzas(zzdxp<zzdhd> zzdxpVar, zzdxp<Bundle> zzdxpVar2) {
        return new zzctc(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcta(this.f13842a.get(), this.f13843b.get());
    }
}
