package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzi.class */
public final class zzbzi implements zzdxg<zzbze> {

    /* renamed from: a */
    private final zzdxp<Executor> f12765a;

    /* renamed from: b */
    private final zzdxp<zzbyu> f12766b;

    public zzbzi(zzdxp<Executor> zzdxpVar, zzdxp<zzbyu> zzdxpVar2) {
        this.f12765a = zzdxpVar;
        this.f12766b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbze(this.f12765a.get(), this.f12766b.get());
    }
}
