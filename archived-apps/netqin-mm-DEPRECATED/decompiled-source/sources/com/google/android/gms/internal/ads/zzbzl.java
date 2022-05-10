package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzl.class */
public final class zzbzl implements zzeoy<Set<zzcab<zzcak>>> {
    public zzbzl(zzbys zzbysVar) {
    }

    /* renamed from: a */
    public static zzbzl m14878a(zzbys zzbysVar) {
        return new zzbzl(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = Collections.emptySet();
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
