package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzso;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdb.class */
public final class zzcdb implements zzdxg<zzcdh> {

    /* renamed from: a */
    private static final zzcdb f12961a = new zzcdb();

    public static zzcdb zzalb() {
        return f12961a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcdh) zzdxm.zza(new zzcdh(zzso.zza.EnumC3503zza.REQUEST_WILL_UPDATE_GMS_SIGNALS, zzso.zza.EnumC3503zza.REQUEST_DID_UPDATE_GMS_SIGNALS, zzso.zza.EnumC3503zza.REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS), "Cannot return null from a non-@Nullable @Provides method");
    }
}
