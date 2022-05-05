package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuj.class */
public final class zzcuj implements zzdxg<C2352xd> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13913a;

    /* renamed from: b */
    private final zzdxp<Context> f13914b;

    public zzcuj(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2) {
        this.f13913a = zzdxpVar;
        this.f13914b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new C2352xd(this.f13913a.get(), this.f13914b.get());
    }
}
