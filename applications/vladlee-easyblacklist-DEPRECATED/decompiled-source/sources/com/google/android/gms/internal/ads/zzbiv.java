package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiv.class */
public final class zzbiv implements zzdxg<zzbiw> {

    /* renamed from: a */
    private final zzdxp<Context> f11930a;

    /* renamed from: b */
    private final zzdxp<zzczt> f11931b;

    /* renamed from: c */
    private final zzdxp<zzczl> f11932c;

    /* renamed from: d */
    private final zzdxp<zzdda> f11933d;

    /* renamed from: e */
    private final zzdxp<View> f11934e;

    /* renamed from: f */
    private final zzdxp<zzdq> f11935f;

    private zzbiv(zzdxp<Context> zzdxpVar, zzdxp<zzczt> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzdda> zzdxpVar4, zzdxp<View> zzdxpVar5, zzdxp<zzdq> zzdxpVar6) {
        this.f11930a = zzdxpVar;
        this.f11931b = zzdxpVar2;
        this.f11932c = zzdxpVar3;
        this.f11933d = zzdxpVar4;
        this.f11934e = zzdxpVar5;
        this.f11935f = zzdxpVar6;
    }

    public static zzbiv zza(zzdxp<Context> zzdxpVar, zzdxp<zzczt> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzdda> zzdxpVar4, zzdxp<View> zzdxpVar5, zzdxp<zzdq> zzdxpVar6) {
        return new zzbiv(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5, zzdxpVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbiw(this.f11930a.get(), this.f11931b.get(), this.f11932c.get(), this.f11933d.get(), this.f11934e.get(), this.f11935f.get());
    }
}
