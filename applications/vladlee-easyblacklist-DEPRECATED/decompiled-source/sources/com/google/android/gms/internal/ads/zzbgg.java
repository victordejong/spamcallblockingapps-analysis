package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgg.class */
public final class zzbgg implements zzdxg<zzbij> {

    /* renamed from: a */
    private final zzbga f11830a;

    /* renamed from: b */
    private final zzdxp<zzbfx> f11831b;

    public zzbgg(zzbga zzbgaVar, zzdxp<zzbfx> zzdxpVar) {
        this.f11830a = zzbgaVar;
        this.f11831b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbij) zzdxm.zza(this.f11831b.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
