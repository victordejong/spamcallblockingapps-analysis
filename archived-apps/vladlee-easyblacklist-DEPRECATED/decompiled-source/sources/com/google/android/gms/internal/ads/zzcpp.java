package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpp.class */
public final class zzcpp implements zzdxg<Set<String>> {

    /* renamed from: a */
    private final zzcpj f13700a;

    public zzcpp(zzcpj zzcpjVar) {
        this.f13700a = zzcpjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f13700a.zzamz(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
