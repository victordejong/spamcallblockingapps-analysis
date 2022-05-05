package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcft.class */
public final class zzcft implements zzdxg<String> {

    /* renamed from: a */
    private final zzdxp<Context> f13096a;

    private zzcft(zzdxp<Context> zzdxpVar) {
        this.f13096a = zzdxpVar;
    }

    public static zzcft zzab(zzdxp<Context> zzdxpVar) {
        return new zzcft(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (String) zzdxm.zza(this.f13096a.get().getPackageName(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
