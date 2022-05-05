package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccz.class */
public final class zzccz implements zzdxg<zzccw> {

    /* renamed from: a */
    private final zzdxp<zzsm> f12955a;

    /* renamed from: b */
    private final zzdxp<zzcxw> f12956b;

    private zzccz(zzdxp<zzsm> zzdxpVar, zzdxp<zzcxw> zzdxpVar2) {
        this.f12955a = zzdxpVar;
        this.f12956b = zzdxpVar2;
    }

    public static zzccz zzt(zzdxp<zzsm> zzdxpVar, zzdxp<zzcxw> zzdxpVar2) {
        return new zzccz(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzccw(this.f12955a.get(), this.f12956b.get());
    }
}
