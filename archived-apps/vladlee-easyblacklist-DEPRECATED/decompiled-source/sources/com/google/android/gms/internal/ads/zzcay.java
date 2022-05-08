package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcay.class */
public final class zzcay implements zzdxg<zzcat> {

    /* renamed from: a */
    private final zzdxp<Context> f12846a;

    /* renamed from: b */
    private final zzdxp<Executor> f12847b;

    /* renamed from: c */
    private final zzdxp<zzdq> f12848c;

    /* renamed from: d */
    private final zzdxp<zzazb> f12849d;

    /* renamed from: e */
    private final zzdxp<zza> f12850e;

    /* renamed from: f */
    private final zzdxp<zzbdr> f12851f;

    public zzcay(zzdxp<Context> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<zzdq> zzdxpVar3, zzdxp<zzazb> zzdxpVar4, zzdxp<zza> zzdxpVar5, zzdxp<zzbdr> zzdxpVar6) {
        this.f12846a = zzdxpVar;
        this.f12847b = zzdxpVar2;
        this.f12848c = zzdxpVar3;
        this.f12849d = zzdxpVar4;
        this.f12850e = zzdxpVar5;
        this.f12851f = zzdxpVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcat(this.f12846a.get(), this.f12847b.get(), this.f12848c.get(), this.f12849d.get(), this.f12850e.get(), this.f12851f.get());
    }
}
