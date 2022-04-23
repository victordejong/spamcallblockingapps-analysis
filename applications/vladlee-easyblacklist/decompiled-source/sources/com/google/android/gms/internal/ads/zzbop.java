package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbop.class */
public final class zzbop implements zzdxg<zzbom> {

    /* renamed from: a */
    private final zzdxp<zzczl> f12242a;

    /* renamed from: b */
    private final zzdxp<String> f12243b;

    private zzbop(zzdxp<zzczl> zzdxpVar, zzdxp<String> zzdxpVar2) {
        this.f12242a = zzdxpVar;
        this.f12243b = zzdxpVar2;
    }

    public static zzbop zzh(zzdxp<zzczl> zzdxpVar, zzdxp<String> zzdxpVar2) {
        return new zzbop(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbom(this.f12242a.get(), this.f12243b.get());
    }
}
