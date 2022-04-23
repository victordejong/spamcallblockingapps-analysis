package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblv.class */
public final class zzblv implements zzdxg<zzblw> {

    /* renamed from: a */
    private final zzdxp<Context> f12110a;

    /* renamed from: b */
    private final zzdxp<zzbdi> f12111b;

    /* renamed from: c */
    private final zzdxp<zzczl> f12112c;

    /* renamed from: d */
    private final zzdxp<zzazb> f12113d;

    public zzblv(zzdxp<Context> zzdxpVar, zzdxp<zzbdi> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzazb> zzdxpVar4) {
        this.f12110a = zzdxpVar;
        this.f12111b = zzdxpVar2;
        this.f12112c = zzdxpVar3;
        this.f12113d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzblw(this.f12110a.get(), this.f12111b.get(), this.f12112c.get(), this.f12113d.get());
    }
}
