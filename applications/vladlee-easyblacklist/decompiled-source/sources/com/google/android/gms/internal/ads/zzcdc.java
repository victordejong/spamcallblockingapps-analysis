package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzso;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdc.class */
public final class zzcdc implements zzdxg<zzcdh> {

    /* renamed from: a */
    private static final zzcdc f12962a = new zzcdc();

    public static zzcdc zzalc() {
        return f12962a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcdh) zzdxm.zza(new zzcdh(zzso.zza.EnumC3503zza.REQUEST_WILL_BUILD_URL, zzso.zza.EnumC3503zza.REQUEST_DID_BUILD_URL, zzso.zza.EnumC3503zza.REQUEST_FAILED_TO_BUILD_URL), "Cannot return null from a non-@Nullable @Provides method");
    }
}
