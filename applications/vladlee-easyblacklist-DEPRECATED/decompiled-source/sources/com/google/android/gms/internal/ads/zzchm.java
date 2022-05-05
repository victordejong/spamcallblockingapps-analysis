package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchm.class */
public final class zzchm implements zzdxg<zzcgw> {

    /* renamed from: a */
    private final zzdxp<Context> f13134a;

    /* renamed from: b */
    private final zzdxp<Executor> f13135b;

    /* renamed from: c */
    private final zzdxp<zzarb> f13136c;

    /* renamed from: d */
    private final zzdxp<zzbij> f13137d;

    /* renamed from: e */
    private final zzdxp<zzaqy> f13138e;

    /* renamed from: f */
    private final zzdxp<HashMap<String, zzchh>> f13139f;

    private zzchm(zzdxp<Context> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<zzarb> zzdxpVar3, zzdxp<zzbij> zzdxpVar4, zzdxp<zzaqy> zzdxpVar5, zzdxp<HashMap<String, zzchh>> zzdxpVar6) {
        this.f13134a = zzdxpVar;
        this.f13135b = zzdxpVar2;
        this.f13136c = zzdxpVar3;
        this.f13137d = zzdxpVar4;
        this.f13138e = zzdxpVar5;
        this.f13139f = zzdxpVar6;
    }

    public static zzchm zzc(zzdxp<Context> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<zzarb> zzdxpVar3, zzdxp<zzbij> zzdxpVar4, zzdxp<zzaqy> zzdxpVar5, zzdxp<HashMap<String, zzchh>> zzdxpVar6) {
        return new zzchm(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5, zzdxpVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcgw(this.f13134a.get(), this.f13135b.get(), this.f13136c.get(), this.f13137d.get(), this.f13138e.get(), this.f13139f.get());
    }
}
