package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclx.class */
public final class zzclx implements zzdxg<zzclv> {

    /* renamed from: a */
    private final zzdxp<Context> f13342a;

    /* renamed from: b */
    private final zzdxp<Executor> f13343b;

    /* renamed from: c */
    private final zzdxp<zzcbi> f13344c;

    public zzclx(zzdxp<Context> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<zzcbi> zzdxpVar3) {
        this.f13342a = zzdxpVar;
        this.f13343b = zzdxpVar2;
        this.f13344c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzclv(this.f13342a.get(), this.f13343b.get(), this.f13344c.get());
    }
}
