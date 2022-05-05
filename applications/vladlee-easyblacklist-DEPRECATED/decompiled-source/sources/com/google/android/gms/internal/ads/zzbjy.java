package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjy.class */
public final class zzbjy implements zzdxg<Set<zzbsu<zzbqb>>> {

    /* renamed from: a */
    private final zzbjw f12014a;

    /* renamed from: b */
    private final zzdxp<zzbly> f12015b;

    public zzbjy(zzbjw zzbjwVar, zzdxp<zzbly> zzdxpVar) {
        this.f12014a = zzbjwVar;
        this.f12015b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.singleton(new zzbsu(this.f12015b.get(), zzazd.zzdwj)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
