package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbog.class */
public final class zzbog implements zzdxg<Context> {

    /* renamed from: a */
    private final zzbod f12231a;

    /* renamed from: b */
    private final zzdxp<Context> f12232b;

    private zzbog(zzbod zzbodVar, zzdxp<Context> zzdxpVar) {
        this.f12231a = zzbodVar;
        this.f12232b = zzdxpVar;
    }

    public static zzbog zza(zzbod zzbodVar, zzdxp<Context> zzdxpVar) {
        return new zzbog(zzbodVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Context) zzdxm.zza(this.f12231a.m4008a(this.f12232b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
