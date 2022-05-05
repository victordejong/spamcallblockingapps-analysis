package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoj.class */
public final class zzcoj implements zzdxg<zzcok> {

    /* renamed from: a */
    private final zzdxp<Context> f13443a;

    /* renamed from: b */
    private final zzdxp<zzvh> f13444b;

    /* renamed from: c */
    private final zzdxp<zzczu> f13445c;

    /* renamed from: d */
    private final zzdxp<zzbkk> f13446d;

    public zzcoj(zzdxp<Context> zzdxpVar, zzdxp<zzvh> zzdxpVar2, zzdxp<zzczu> zzdxpVar3, zzdxp<zzbkk> zzdxpVar4) {
        this.f13443a = zzdxpVar;
        this.f13444b = zzdxpVar2;
        this.f13445c = zzdxpVar3;
        this.f13446d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcok(this.f13443a.get(), this.f13444b.get(), this.f13445c.get(), this.f13446d.get());
    }
}
