package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgd.class */
public final class zzbgd implements zzdxg<Context> {

    /* renamed from: a */
    private final zzbga f11826a;

    public zzbgd(zzbga zzbgaVar) {
        this.f11826a = zzbgaVar;
    }

    public static Context zza(zzbga zzbgaVar) {
        return (Context) zzdxm.zza(zzbgaVar.m4090a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f11826a);
    }
}
