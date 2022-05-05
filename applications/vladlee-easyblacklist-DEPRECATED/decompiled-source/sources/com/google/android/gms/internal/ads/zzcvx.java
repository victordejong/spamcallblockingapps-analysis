package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvx.class */
public final class zzcvx implements zzdxg<zzcvv> {

    /* renamed from: a */
    private final zzdxp<zzaoz> f13977a;

    /* renamed from: b */
    private final zzdxp<ScheduledExecutorService> f13978b;

    /* renamed from: c */
    private final zzdxp<Context> f13979c;

    public zzcvx(zzdxp<zzaoz> zzdxpVar, zzdxp<ScheduledExecutorService> zzdxpVar2, zzdxp<Context> zzdxpVar3) {
        this.f13977a = zzdxpVar;
        this.f13978b = zzdxpVar2;
        this.f13979c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcvv(this.f13977a.get(), this.f13978b.get(), this.f13979c.get());
    }
}
