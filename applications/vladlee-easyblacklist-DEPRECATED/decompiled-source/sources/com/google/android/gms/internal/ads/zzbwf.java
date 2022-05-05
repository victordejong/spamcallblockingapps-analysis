package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwf.class */
public final class zzbwf implements zzdxg<zzbjq> {

    /* renamed from: a */
    private final zzdxp<zzpn> f12532a;

    /* renamed from: b */
    private final zzdxp<Executor> f12533b;

    /* renamed from: c */
    private final zzdxp<Context> f12534c;

    /* renamed from: d */
    private final zzdxp<Clock> f12535d;

    public zzbwf(zzdxp<zzpn> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<Context> zzdxpVar3, zzdxp<Clock> zzdxpVar4) {
        this.f12532a = zzdxpVar;
        this.f12533b = zzdxpVar2;
        this.f12534c = zzdxpVar3;
        this.f12535d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzpn zzpnVar = this.f12532a.get();
        return (zzbjq) zzdxm.zza(new zzbjq(this.f12533b.get(), new zzbjb(this.f12534c.get(), zzpnVar), this.f12535d.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
