package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzso;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcde.class */
public final class zzcde implements zzdxg<zzcdh> {

    /* renamed from: a */
    private static final zzcde f12964a = new zzcde();

    public static zzcde zzale() {
        return f12964a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcdh) zzdxm.zza(new zzcdh(zzso.zza.EnumC3503zza.REQUEST_WILL_MAKE_NETWORK_REQUEST, zzso.zza.EnumC3503zza.REQUEST_DID_RECEIVE_NETWORK_RESPONSE, zzso.zza.EnumC3503zza.REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST), "Cannot return null from a non-@Nullable @Provides method");
    }
}
