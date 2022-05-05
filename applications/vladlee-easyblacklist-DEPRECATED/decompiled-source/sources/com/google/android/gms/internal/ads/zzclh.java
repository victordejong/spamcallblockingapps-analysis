package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbod;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclh.class */
public final class zzclh implements zzdxg<zzcli> {

    /* renamed from: a */
    private final zzdxp<zzbfx> f13294a;

    /* renamed from: b */
    private final zzdxp<zzbvi> f13295b;

    /* renamed from: c */
    private final zzdxp<zzbod.zza> f13296c;

    /* renamed from: d */
    private final zzdxp<zzbrm> f13297d;

    public zzclh(zzdxp<zzbfx> zzdxpVar, zzdxp<zzbvi> zzdxpVar2, zzdxp<zzbod.zza> zzdxpVar3, zzdxp<zzbrm> zzdxpVar4) {
        this.f13294a = zzdxpVar;
        this.f13295b = zzdxpVar2;
        this.f13296c = zzdxpVar3;
        this.f13297d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcli(this.f13294a.get(), this.f13295b.get(), this.f13296c.get(), this.f13297d.get());
    }
}
