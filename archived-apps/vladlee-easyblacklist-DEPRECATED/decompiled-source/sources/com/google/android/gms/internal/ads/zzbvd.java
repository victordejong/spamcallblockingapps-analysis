package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvd.class */
public final class zzbvd implements zzdxg<zzbve> {

    /* renamed from: a */
    private final zzdxp<zzats> f12446a;

    /* renamed from: b */
    private final zzdxp<Context> f12447b;

    /* renamed from: c */
    private final zzdxp<zzatv> f12448c;

    /* renamed from: d */
    private final zzdxp<View> f12449d;

    /* renamed from: e */
    private final zzdxp<Integer> f12450e;

    private zzbvd(zzdxp<zzats> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzatv> zzdxpVar3, zzdxp<View> zzdxpVar4, zzdxp<Integer> zzdxpVar5) {
        this.f12446a = zzdxpVar;
        this.f12447b = zzdxpVar2;
        this.f12448c = zzdxpVar3;
        this.f12449d = zzdxpVar4;
        this.f12450e = zzdxpVar5;
    }

    public static zzbvd zzd(zzdxp<zzats> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzatv> zzdxpVar3, zzdxp<View> zzdxpVar4, zzdxp<Integer> zzdxpVar5) {
        return new zzbvd(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbve(this.f12446a.get(), this.f12447b.get(), this.f12448c.get(), this.f12449d.get(), this.f12450e.get().intValue());
    }
}
