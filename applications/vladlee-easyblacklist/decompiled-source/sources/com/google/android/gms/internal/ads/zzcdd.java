package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzso;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdd.class */
public final class zzcdd implements zzdxg<zzcdh> {

    /* renamed from: a */
    private static final zzcdd f12963a = new zzcdd();

    public static zzcdd zzald() {
        return f12963a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcdh) zzdxm.zza(new zzcdh(zzso.zza.EnumC3503zza.REQUEST_WILL_PROCESS_RESPONSE, zzso.zza.EnumC3503zza.REQUEST_DID_PROCESS_RESPONSE, zzso.zza.EnumC3503zza.REQUEST_FAILED_TO_PROCESS_RESPONSE), "Cannot return null from a non-@Nullable @Provides method");
    }
}
