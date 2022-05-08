package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmp.class */
public final class zzcmp implements zzdxg<zzcmi> {

    /* renamed from: a */
    private final zzdxp<Context> f13368a;

    /* renamed from: b */
    private final zzdxp<zzazb> f13369b;

    /* renamed from: c */
    private final zzdxp<zzczu> f13370c;

    /* renamed from: d */
    private final zzdxp<Executor> f13371d;

    /* renamed from: e */
    private final zzdxp<zzcbi> f13372e;

    /* renamed from: f */
    private final zzdxp<zzcbn> f13373f;

    public zzcmp(zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzczu> zzdxpVar3, zzdxp<Executor> zzdxpVar4, zzdxp<zzcbi> zzdxpVar5, zzdxp<zzcbn> zzdxpVar6) {
        this.f13368a = zzdxpVar;
        this.f13369b = zzdxpVar2;
        this.f13370c = zzdxpVar3;
        this.f13371d = zzdxpVar4;
        this.f13372e = zzdxpVar5;
        this.f13373f = zzdxpVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcmi(this.f13368a.get(), this.f13369b.get(), this.f13370c.get(), this.f13371d.get(), this.f13372e.get(), this.f13373f.get());
    }
}
