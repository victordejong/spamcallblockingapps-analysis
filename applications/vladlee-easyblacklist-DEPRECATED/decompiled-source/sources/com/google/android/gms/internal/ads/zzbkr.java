package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkr.class */
public final class zzbkr implements zzdxg<View> {

    /* renamed from: a */
    private final zzbkn f12057a;

    public zzbkr(zzbkn zzbknVar) {
        this.f12057a = zzbknVar;
    }

    public static View zza(zzbkn zzbknVar) {
        return (View) zzdxm.zza(zzbknVar.zzaga(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12057a);
    }
}
