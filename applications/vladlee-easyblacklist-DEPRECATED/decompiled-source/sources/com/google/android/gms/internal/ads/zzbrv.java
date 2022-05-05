package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrv.class */
public final class zzbrv implements zzdxg<Set<zzbsu<zzbpa>>> {

    /* renamed from: a */
    private final zzbrm f12304a;

    public zzbrv(zzbrm zzbrmVar) {
        this.f12304a = zzbrmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12304a.zzahp(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
