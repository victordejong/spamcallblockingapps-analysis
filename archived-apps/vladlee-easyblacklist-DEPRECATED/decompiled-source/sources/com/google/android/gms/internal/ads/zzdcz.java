package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcz.class */
public final class zzdcz implements zzdxg<aaj> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzdcx>>> f14196a;

    private zzdcz(zzdxp<Set<zzbsu<zzdcx>>> zzdxpVar) {
        this.f14196a = zzdxpVar;
    }

    public static zzdcz zzam(zzdxp<Set<zzbsu<zzdcx>>> zzdxpVar) {
        return new zzdcz(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new aaj(this.f14196a.get());
    }
}
