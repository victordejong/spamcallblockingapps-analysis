package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjx.class */
public final class zzbjx implements zzdxg<Set<zzbsu<zzps>>> {

    /* renamed from: a */
    private final zzbjw f12012a;

    /* renamed from: b */
    private final zzdxp<zzbly> f12013b;

    public zzbjx(zzbjw zzbjwVar, zzdxp<zzbly> zzdxpVar) {
        this.f12012a = zzbjwVar;
        this.f12013b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.singleton(new zzbsu(this.f12013b.get(), zzazd.zzdwj)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
