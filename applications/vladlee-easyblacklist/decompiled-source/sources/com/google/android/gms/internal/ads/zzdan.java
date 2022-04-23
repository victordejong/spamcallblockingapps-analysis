package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdan.class */
public final class zzdan implements zzdxg<zzdak> {

    /* renamed from: a */
    private final zzdxp<Context> f14120a;

    /* renamed from: b */
    private final zzdxp<zzavp> f14121b;

    private zzdan(zzdxp<Context> zzdxpVar, zzdxp<zzavp> zzdxpVar2) {
        this.f14120a = zzdxpVar;
        this.f14121b = zzdxpVar2;
    }

    public static zzdan zzaw(zzdxp<Context> zzdxpVar, zzdxp<zzavp> zzdxpVar2) {
        return new zzdan(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzdak(this.f14120a.get(), this.f14121b.get());
    }
}
