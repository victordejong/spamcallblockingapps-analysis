package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpy.class */
public final class zzbpy implements zzdxg<zzbpw> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbqb>>> f12255a;

    private zzbpy(zzdxp<Set<zzbsu<zzbqb>>> zzdxpVar) {
        this.f12255a = zzdxpVar;
    }

    public static zzbpy zzk(zzdxp<Set<zzbsu<zzbqb>>> zzdxpVar) {
        return new zzbpy(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbpw(this.f12255a.get());
    }
}
