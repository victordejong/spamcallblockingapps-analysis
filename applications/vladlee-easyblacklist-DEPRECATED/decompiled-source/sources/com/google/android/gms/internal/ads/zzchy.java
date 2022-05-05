package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchy.class */
public final class zzchy implements zzdxg<zzcht> {

    /* renamed from: a */
    private final zzdxp<zzchr> f13158a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f13159b;

    private zzchy(zzdxp<zzchr> zzdxpVar, zzdxp<zzdhd> zzdxpVar2) {
        this.f13158a = zzdxpVar;
        this.f13159b = zzdxpVar2;
    }

    public static zzchy zzaj(zzdxp<zzchr> zzdxpVar, zzdxp<zzdhd> zzdxpVar2) {
        return new zzchy(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcht(this.f13158a.get(), this.f13159b.get());
    }
}
