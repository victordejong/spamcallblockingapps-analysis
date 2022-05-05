package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzso;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccs.class */
public final class zzccs implements zzdxg<zzcdh> {

    /* renamed from: a */
    private static final zzccs f12948a = new zzccs();

    public static zzccs zzakz() {
        return f12948a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcdh) zzdxm.zza(new zzcdh(zzso.zza.EnumC3503zza.REQUEST_WILL_UPDATE_SIGNALS, zzso.zza.EnumC3503zza.REQUEST_DID_UPDATE_SIGNALS, zzso.zza.EnumC3503zza.REQUEST_FAILED_TO_UPDATE_SIGNALS), "Cannot return null from a non-@Nullable @Provides method");
    }
}
