package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkz.class */
public final class zzbkz implements zzdxg<Set<zzbsu<zzps>>> {

    /* renamed from: a */
    private final zzbkn f12073a;

    /* renamed from: b */
    private final zzdxp<zzbly> f12074b;

    public zzbkz(zzbkn zzbknVar, zzdxp<zzbly> zzdxpVar) {
        this.f12073a = zzbknVar;
        this.f12074b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.singleton(new zzbsu(this.f12074b.get(), zzazd.zzdwj)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
