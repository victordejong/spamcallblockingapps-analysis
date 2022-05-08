package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbks.class */
public final class zzbks implements zzdxg<zzbpw> {

    /* renamed from: a */
    private final zzbkn f12058a;

    /* renamed from: b */
    private final zzdxp<Set<zzbsu<zzbqb>>> f12059b;

    public zzbks(zzbkn zzbknVar, zzdxp<Set<zzbsu<zzbqb>>> zzdxpVar) {
        this.f12058a = zzbknVar;
        this.f12059b = zzdxpVar;
    }

    public static zzbpw zza(zzbkn zzbknVar, Set<zzbsu<zzbqb>> set) {
        return (zzbpw) zzdxm.zza(zzbknVar.zza(set), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12058a, this.f12059b.get());
    }
}
