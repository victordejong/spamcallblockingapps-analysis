package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpn.class */
public final class zzbpn implements zzdxg<zzbpg> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbph>>> f12253a;

    private zzbpn(zzdxp<Set<zzbsu<zzbph>>> zzdxpVar) {
        this.f12253a = zzdxpVar;
    }

    public static zzbpn zzi(zzdxp<Set<zzbsu<zzbph>>> zzdxpVar) {
        return new zzbpn(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbpg(this.f12253a.get());
    }
}
