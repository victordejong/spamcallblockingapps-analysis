package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvz.class */
public final class zzbvz implements zzdxg<zzbww> {

    /* renamed from: a */
    private final zzbvy f12522a;

    /* renamed from: b */
    private final zzdxp<zzbwv> f12523b;

    public zzbvz(zzbvy zzbvyVar, zzdxp<zzbwv> zzdxpVar) {
        this.f12522a = zzbvyVar;
        this.f12523b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbww) zzdxm.zza(this.f12523b.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
