package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzw.class */
public final class zzbzw implements zzdxg<zzbzh> {

    /* renamed from: a */
    private final zzdxp<Context> f12778a;

    /* renamed from: b */
    private final zzdxp<zzczu> f12779b;

    /* renamed from: c */
    private final zzdxp<Executor> f12780c;

    /* renamed from: d */
    private final zzdxp<zzcbn> f12781d;

    public zzbzw(zzdxp<Context> zzdxpVar, zzdxp<zzczu> zzdxpVar2, zzdxp<Executor> zzdxpVar3, zzdxp<zzcbn> zzdxpVar4) {
        this.f12778a = zzdxpVar;
        this.f12779b = zzdxpVar2;
        this.f12780c = zzdxpVar3;
        this.f12781d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbzh(this.f12778a.get(), this.f12779b.get(), this.f12780c.get(), this.f12781d.get());
    }
}
