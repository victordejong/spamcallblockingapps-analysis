package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfs.class */
public final class zzcfs implements zzdxg<ApplicationInfo> {

    /* renamed from: a */
    private final zzdxp<Context> f13095a;

    private zzcfs(zzdxp<Context> zzdxpVar) {
        this.f13095a = zzdxpVar;
    }

    public static zzcfs zzaa(zzdxp<Context> zzdxpVar) {
        return new zzcfs(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (ApplicationInfo) zzdxm.zza(this.f13095a.get().getApplicationInfo(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
