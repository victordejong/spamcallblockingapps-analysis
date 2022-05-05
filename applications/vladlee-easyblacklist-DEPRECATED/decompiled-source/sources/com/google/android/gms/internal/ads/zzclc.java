package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclc.class */
public final class zzclc implements zzdxg<zzckz> {

    /* renamed from: a */
    private final zzdxp<Context> f13289a;

    /* renamed from: b */
    private final zzdxp<zzbvm> f13290b;

    /* renamed from: c */
    private final zzdxp<Executor> f13291c;

    public zzclc(zzdxp<Context> zzdxpVar, zzdxp<zzbvm> zzdxpVar2, zzdxp<Executor> zzdxpVar3) {
        this.f13289a = zzdxpVar;
        this.f13290b = zzdxpVar2;
        this.f13291c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzckz(this.f13289a.get(), this.f13290b.get(), this.f13291c.get());
    }
}
