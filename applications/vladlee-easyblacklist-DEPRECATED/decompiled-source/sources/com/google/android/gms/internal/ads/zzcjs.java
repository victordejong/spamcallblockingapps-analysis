package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjs.class */
public final class zzcjs implements zzdxg<zzcjn> {

    /* renamed from: a */
    private final zzdxp<Context> f13236a;

    /* renamed from: b */
    private final zzdxp<Executor> f13237b;

    /* renamed from: c */
    private final zzdxp<zzbup> f13238c;

    /* renamed from: d */
    private final zzdxp<zzczj> f13239d;

    public zzcjs(zzdxp<Context> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<zzbup> zzdxpVar3, zzdxp<zzczj> zzdxpVar4) {
        this.f13236a = zzdxpVar;
        this.f13237b = zzdxpVar2;
        this.f13238c = zzdxpVar3;
        this.f13239d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcjn(this.f13236a.get(), this.f13237b.get(), this.f13238c.get(), this.f13239d.get());
    }
}
