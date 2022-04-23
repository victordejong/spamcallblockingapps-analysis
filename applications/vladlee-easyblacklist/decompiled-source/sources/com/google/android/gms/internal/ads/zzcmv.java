package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmv.class */
public final class zzcmv implements zzdxg<zzcms> {

    /* renamed from: a */
    private final zzdxp<Context> f13377a;

    /* renamed from: b */
    private final zzdxp<Executor> f13378b;

    /* renamed from: c */
    private final zzdxp<zzcbi> f13379c;

    public zzcmv(zzdxp<Context> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<zzcbi> zzdxpVar3) {
        this.f13377a = zzdxpVar;
        this.f13378b = zzdxpVar2;
        this.f13379c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcms(this.f13377a.get(), this.f13378b.get(), this.f13379c.get());
    }
}
