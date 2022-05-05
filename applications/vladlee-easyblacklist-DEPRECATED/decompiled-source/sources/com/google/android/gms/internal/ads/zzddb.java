package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddb.class */
public final class zzddb implements zzdxg<zzakc> {

    /* renamed from: a */
    private final zzdcy f14207a;

    /* renamed from: b */
    private final zzdxp<Context> f14208b;

    /* renamed from: c */
    private final zzdxp<zzazb> f14209c;

    public zzddb(zzdcy zzdcyVar, zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2) {
        this.f14207a = zzdcyVar;
        this.f14208b = zzdxpVar;
        this.f14209c = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzakc) zzdxm.zza(new zzajt().zzb(this.f14208b.get(), this.f14209c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
