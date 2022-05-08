package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqy.class */
public final class zzbqy implements zzdxg<zzbqw> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbrb>>> f12271a;

    private zzbqy(zzdxp<Set<zzbsu<zzbrb>>> zzdxpVar) {
        this.f12271a = zzdxpVar;
    }

    public static zzbqy zzo(zzdxp<Set<zzbsu<zzbrb>>> zzdxpVar) {
        return new zzbqy(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbqw(this.f12271a.get());
    }
}
