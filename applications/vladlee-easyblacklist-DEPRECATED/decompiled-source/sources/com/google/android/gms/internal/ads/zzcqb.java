package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqb.class */
public final class zzcqb implements zzdxg<zzcpy> {

    /* renamed from: a */
    private final zzdxp<zzczu> f13720a;

    private zzcqb(zzdxp<zzczu> zzdxpVar) {
        this.f13720a = zzdxpVar;
    }

    public static zzcqb zzah(zzdxp<zzczu> zzdxpVar) {
        return new zzcqb(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcpy(this.f13720a.get());
    }
}
