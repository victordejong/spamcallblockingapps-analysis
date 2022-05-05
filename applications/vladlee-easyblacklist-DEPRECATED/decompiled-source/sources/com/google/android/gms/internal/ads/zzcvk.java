package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvk.class */
public final class zzcvk implements zzdxg<zzcvi> {

    /* renamed from: a */
    private final zzdxp<zzauw> f13956a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f13957b;

    /* renamed from: c */
    private final zzdxp<String> f13958c;

    public zzcvk(zzdxp<zzauw> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<String> zzdxpVar3) {
        this.f13956a = zzdxpVar;
        this.f13957b = zzdxpVar2;
        this.f13958c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcvi(this.f13956a.get(), this.f13957b.get(), this.f13958c.get());
    }
}
