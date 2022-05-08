package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmx.class */
public final class zzcmx implements zzdxg<zzcmy> {

    /* renamed from: a */
    private final zzdxp<zzcnz> f13380a;

    private zzcmx(zzdxp<zzcnz> zzdxpVar) {
        this.f13380a = zzdxpVar;
    }

    public static zzcmx zzaf(zzdxp<zzcnz> zzdxpVar) {
        return new zzcmx(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcmy(this.f13380a.get());
    }
}
