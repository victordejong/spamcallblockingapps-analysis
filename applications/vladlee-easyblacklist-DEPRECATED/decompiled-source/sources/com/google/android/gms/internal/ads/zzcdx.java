package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdx.class */
public final class zzcdx implements zzdxg<zzcdv> {

    /* renamed from: a */
    private final zzdxp<Executor> f13001a;

    /* renamed from: b */
    private final zzdxp<zzayy> f13002b;

    /* renamed from: c */
    private final zzdxp<Context> f13003c;

    public zzcdx(zzdxp<Executor> zzdxpVar, zzdxp<zzayy> zzdxpVar2, zzdxp<Context> zzdxpVar3) {
        this.f13001a = zzdxpVar;
        this.f13002b = zzdxpVar2;
        this.f13003c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcdv(this.f13001a.get(), this.f13002b.get(), this.f13003c.get());
    }
}
