package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbji.class */
public final class zzbji implements zzdxg<zzbjd> {

    /* renamed from: a */
    private final zzdxp<zzakh> f11970a;

    /* renamed from: b */
    private final zzdxp<zzbjb> f11971b;

    /* renamed from: c */
    private final zzdxp<Executor> f11972c;

    /* renamed from: d */
    private final zzdxp<zzbiy> f11973d;

    /* renamed from: e */
    private final zzdxp<Clock> f11974e;

    private zzbji(zzdxp<zzakh> zzdxpVar, zzdxp<zzbjb> zzdxpVar2, zzdxp<Executor> zzdxpVar3, zzdxp<zzbiy> zzdxpVar4, zzdxp<Clock> zzdxpVar5) {
        this.f11970a = zzdxpVar;
        this.f11971b = zzdxpVar2;
        this.f11972c = zzdxpVar3;
        this.f11973d = zzdxpVar4;
        this.f11974e = zzdxpVar5;
    }

    public static zzbji zza(zzdxp<zzakh> zzdxpVar, zzdxp<zzbjb> zzdxpVar2, zzdxp<Executor> zzdxpVar3, zzdxp<zzbiy> zzdxpVar4, zzdxp<Clock> zzdxpVar5) {
        return new zzbji(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbjd(this.f11970a.get(), this.f11971b.get(), this.f11972c.get(), this.f11973d.get(), this.f11974e.get());
    }
}
