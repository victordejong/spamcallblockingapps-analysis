package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyn.class */
public final class zzbyn implements zzdxg<zzbyl> {

    /* renamed from: a */
    private final zzdxp<zzaxk> f12724a;

    /* renamed from: b */
    private final zzdxp<Clock> f12725b;

    /* renamed from: c */
    private final zzdxp<Executor> f12726c;

    public zzbyn(zzdxp<zzaxk> zzdxpVar, zzdxp<Clock> zzdxpVar2, zzdxp<Executor> zzdxpVar3) {
        this.f12724a = zzdxpVar;
        this.f12725b = zzdxpVar2;
        this.f12726c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbyl(this.f12724a.get(), this.f12725b.get(), this.f12726c.get());
    }
}
