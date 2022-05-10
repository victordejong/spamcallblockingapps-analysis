package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbza.class */
public final class zzbza implements zzeoy<Set<zzcab<zzbxz>>> {
    public zzbza(zzbys zzbysVar) {
    }

    /* renamed from: a */
    public static zzbza m14890a(zzbys zzbysVar) {
        return new zzbza(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = Collections.emptySet();
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
