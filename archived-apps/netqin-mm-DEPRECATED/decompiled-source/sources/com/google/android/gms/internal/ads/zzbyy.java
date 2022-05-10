package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyy.class */
public final class zzbyy implements zzeoy<Set<zzcab<zzbvs>>> {

    /* renamed from: a */
    public final zzbys f25627a;

    public zzbyy(zzbys zzbysVar) {
        this.f25627a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbyy m14893a(zzbys zzbysVar) {
        return new zzbyy(zzbysVar);
    }

    /* renamed from: b */
    public static Set<zzcab<zzbvs>> m14892b(zzbys zzbysVar) {
        Set<zzcab<zzbvs>> emptySet = Collections.emptySet();
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m14892b(this.f25627a);
    }
}
