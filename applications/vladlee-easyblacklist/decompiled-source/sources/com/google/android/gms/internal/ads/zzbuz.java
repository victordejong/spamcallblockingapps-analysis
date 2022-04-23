package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuz.class */
public final class zzbuz implements zzdxg<zzbva> {

    /* renamed from: a */
    private final zzdxp<zzbpd> f12440a;

    /* renamed from: b */
    private final zzdxp<zzczl> f12441b;

    private zzbuz(zzdxp<zzbpd> zzdxpVar, zzdxp<zzczl> zzdxpVar2) {
        this.f12440a = zzdxpVar;
        this.f12441b = zzdxpVar2;
    }

    public static zzbuz zzk(zzdxp<zzbpd> zzdxpVar, zzdxp<zzczl> zzdxpVar2) {
        return new zzbuz(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbva(this.f12440a.get(), this.f12441b.get());
    }
}
