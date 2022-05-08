package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrw.class */
public final class zzbrw implements zzdxg<Set<zzbsu<zzbow>>> {

    /* renamed from: a */
    private final zzbrm f12305a;

    private zzbrw(zzbrm zzbrmVar) {
        this.f12305a = zzbrmVar;
    }

    public static zzbrw zzm(zzbrm zzbrmVar) {
        return new zzbrw(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12305a.zzaho(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
