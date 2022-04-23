package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrp.class */
public final class zzbrp implements zzdxg<Set<zzbsu<zzbph>>> {

    /* renamed from: a */
    private final zzbrm f12297a;

    private zzbrp(zzbrm zzbrmVar) {
        this.f12297a = zzbrmVar;
    }

    public static zzbrp zzg(zzbrm zzbrmVar) {
        return new zzbrp(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
