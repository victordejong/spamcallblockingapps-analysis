package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpw.class */
public final class zzcpw implements zzdxg<zzcpu> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13712a;

    /* renamed from: b */
    private final zzdxp<Context> f13713b;

    /* renamed from: c */
    private final zzdxp<zzczu> f13714c;

    /* renamed from: d */
    private final zzdxp<ViewGroup> f13715d;

    public zzcpw(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzczu> zzdxpVar3, zzdxp<ViewGroup> zzdxpVar4) {
        this.f13712a = zzdxpVar;
        this.f13713b = zzdxpVar2;
        this.f13714c = zzdxpVar3;
        this.f13715d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcpu(this.f13712a.get(), this.f13713b.get(), this.f13714c.get(), this.f13715d.get());
    }
}
