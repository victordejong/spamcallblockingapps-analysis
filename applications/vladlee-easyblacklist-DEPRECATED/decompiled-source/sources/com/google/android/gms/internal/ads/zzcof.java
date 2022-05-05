package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcof.class */
public final class zzcof implements zzdxg<zzcob> {

    /* renamed from: a */
    private final zzdxp<Executor> f13436a;

    public zzcof(zzdxp<Executor> zzdxpVar) {
        this.f13436a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcob(this.f13436a.get());
    }
}
