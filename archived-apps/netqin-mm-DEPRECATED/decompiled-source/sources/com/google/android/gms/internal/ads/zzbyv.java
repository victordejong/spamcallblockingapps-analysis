package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyv.class */
public final class zzbyv implements zzeoy<Set<zzcab<zzbuy>>> {
    public zzbyv(zzbys zzbysVar) {
    }

    /* renamed from: a */
    public static zzbyv m14896a(zzbys zzbysVar) {
        return new zzbyv(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = Collections.emptySet();
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
