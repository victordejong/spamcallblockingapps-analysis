package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqk.class */
public final class zzcqk implements zzdxg<C2310vp> {

    /* renamed from: a */
    private final zzdxp<Set<String>> f13739a;

    private zzcqk(zzdxp<Set<String>> zzdxpVar) {
        this.f13739a = zzdxpVar;
    }

    public static zzcqk zzai(zzdxp<Set<String>> zzdxpVar) {
        return new zzcqk(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new C2310vp(this.f13739a.get());
    }
}
