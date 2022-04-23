package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtb.class */
public final class zzbtb implements zzdxg<zzbtc> {

    /* renamed from: a */
    private final zzdxp<zzczl> f12374a;

    /* renamed from: b */
    private final zzdxp<zzdda> f12375b;

    private zzbtb(zzdxp<zzczl> zzdxpVar, zzdxp<zzdda> zzdxpVar2) {
        this.f12374a = zzdxpVar;
        this.f12375b = zzdxpVar2;
    }

    public static zzbtb zzi(zzdxp<zzczl> zzdxpVar, zzdxp<zzdda> zzdxpVar2) {
        return new zzbtb(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbtc(this.f12374a.get(), this.f12375b.get());
    }
}
