package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfc.class */
public final class zzcfc implements zzdxg<zzceq> {

    /* renamed from: a */
    private final zzdxp<Executor> f13063a;

    /* renamed from: b */
    private final zzdxp<Context> f13064b;

    /* renamed from: c */
    private final zzdxp<WeakReference<Context>> f13065c;

    /* renamed from: d */
    private final zzdxp<Executor> f13066d;

    /* renamed from: e */
    private final zzdxp<zzcka> f13067e;

    /* renamed from: f */
    private final zzdxp<ScheduledExecutorService> f13068f;

    /* renamed from: g */
    private final zzdxp<zzcea> f13069g;

    /* renamed from: h */
    private final zzdxp<zzazb> f13070h;

    public zzcfc(zzdxp<Executor> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<WeakReference<Context>> zzdxpVar3, zzdxp<Executor> zzdxpVar4, zzdxp<zzcka> zzdxpVar5, zzdxp<ScheduledExecutorService> zzdxpVar6, zzdxp<zzcea> zzdxpVar7, zzdxp<zzazb> zzdxpVar8) {
        this.f13063a = zzdxpVar;
        this.f13064b = zzdxpVar2;
        this.f13065c = zzdxpVar3;
        this.f13066d = zzdxpVar4;
        this.f13067e = zzdxpVar5;
        this.f13068f = zzdxpVar6;
        this.f13069g = zzdxpVar7;
        this.f13070h = zzdxpVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzceq(this.f13063a.get(), this.f13064b.get(), this.f13065c.get(), this.f13066d.get(), this.f13067e.get(), this.f13068f.get(), this.f13069g.get(), this.f13070h.get());
    }
}
