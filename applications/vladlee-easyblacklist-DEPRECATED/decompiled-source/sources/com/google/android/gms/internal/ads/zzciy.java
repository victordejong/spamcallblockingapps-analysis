package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzciy.class */
public final class zzciy implements zzdxg<zzciu> {

    /* renamed from: a */
    private final zzdxp<zzbka> f13202a;

    /* renamed from: b */
    private final zzdxp<Context> f13203b;

    /* renamed from: c */
    private final zzdxp<Executor> f13204c;

    /* renamed from: d */
    private final zzdxp<zzcbn> f13205d;

    /* renamed from: e */
    private final zzdxp<zzczu> f13206e;

    public zzciy(zzdxp<zzbka> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<Executor> zzdxpVar3, zzdxp<zzcbn> zzdxpVar4, zzdxp<zzczu> zzdxpVar5) {
        this.f13202a = zzdxpVar;
        this.f13203b = zzdxpVar2;
        this.f13204c = zzdxpVar3;
        this.f13205d = zzdxpVar4;
        this.f13206e = zzdxpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzciu(this.f13202a.get(), this.f13203b.get(), this.f13204c.get(), this.f13205d.get(), this.f13206e.get());
    }
}
