package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoa.class */
public final class zzcoa implements zzdxg<zzcnw> {

    /* renamed from: a */
    private final zzdxp<Context> f13429a;

    /* renamed from: b */
    private final zzdxp<zzbup> f13430b;

    public zzcoa(zzdxp<Context> zzdxpVar, zzdxp<zzbup> zzdxpVar2) {
        this.f13429a = zzdxpVar;
        this.f13430b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcnw(this.f13429a.get(), this.f13430b.get());
    }
}
