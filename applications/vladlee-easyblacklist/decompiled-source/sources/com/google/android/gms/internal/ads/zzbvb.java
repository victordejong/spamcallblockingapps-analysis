package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvb.class */
public final class zzbvb implements zzdxg<zzbvc> {

    /* renamed from: a */
    private final zzdxp<zzbpg> f12444a;

    private zzbvb(zzdxp<zzbpg> zzdxpVar) {
        this.f12444a = zzdxpVar;
    }

    public static zzbvb zzv(zzdxp<zzbpg> zzdxpVar) {
        return new zzbvb(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbvc(this.f12444a.get());
    }
}
