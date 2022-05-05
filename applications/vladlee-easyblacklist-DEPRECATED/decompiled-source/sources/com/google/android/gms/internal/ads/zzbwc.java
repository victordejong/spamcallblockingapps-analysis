package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwc.class */
public final class zzbwc implements zzdxg<zzbxa> {

    /* renamed from: a */
    private final zzbvy f12526a;

    /* renamed from: b */
    private final zzdxp<zzbvr> f12527b;

    public zzbwc(zzbvy zzbvyVar, zzdxp<zzbvr> zzdxpVar) {
        this.f12526a = zzbvyVar;
        this.f12527b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbxa) zzdxm.zza(this.f12527b.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
