package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbru.class */
public final class zzbru implements zzdxg<Set<zzbsu<zzbrb>>> {

    /* renamed from: a */
    private final zzbrm f12303a;

    private zzbru(zzbrm zzbrmVar) {
        this.f12303a = zzbrmVar;
    }

    public static zzbru zzl(zzbrm zzbrmVar) {
        return new zzbru(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
