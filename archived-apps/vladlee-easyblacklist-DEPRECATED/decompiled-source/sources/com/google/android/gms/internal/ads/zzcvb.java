package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvb.class */
public final class zzcvb implements zzdxg<zzcuz> {

    /* renamed from: a */
    private final zzdxp<zzaqr> f13940a;

    /* renamed from: b */
    private final zzdxp<Context> f13941b;

    /* renamed from: c */
    private final zzdxp<String> f13942c;

    /* renamed from: d */
    private final zzdxp<zzdhd> f13943d;

    public zzcvb(zzdxp<zzaqr> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<String> zzdxpVar3, zzdxp<zzdhd> zzdxpVar4) {
        this.f13940a = zzdxpVar;
        this.f13941b = zzdxpVar2;
        this.f13942c = zzdxpVar3;
        this.f13943d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcuz(this.f13940a.get(), this.f13941b.get(), this.f13942c.get(), this.f13943d.get());
    }
}
