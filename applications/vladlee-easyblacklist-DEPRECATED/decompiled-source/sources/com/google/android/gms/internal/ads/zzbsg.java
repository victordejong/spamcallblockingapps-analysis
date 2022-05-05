package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsg.class */
public final class zzbsg implements zzdxg<Set<zzbsu<zzbsz>>> {

    /* renamed from: a */
    private final zzbrm f12360a;

    private zzbsg(zzbrm zzbrmVar) {
        this.f12360a = zzbrmVar;
    }

    public static zzbsg zzx(zzbrm zzbrmVar) {
        return new zzbsg(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
