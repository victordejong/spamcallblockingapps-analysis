package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzso;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccr.class */
public final class zzccr implements zzdxg<zzcdh> {

    /* renamed from: a */
    private static final zzccr f12947a = new zzccr();

    public static zzccr zzaky() {
        return f12947a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcdh) zzdxm.zza(new zzcdh(zzso.zza.EnumC3503zza.REQUEST_WILL_RENDER, zzso.zza.EnumC3503zza.REQUEST_DID_RENDER, zzso.zza.EnumC3503zza.REQUEST_FAILED_TO_RENDER), "Cannot return null from a non-@Nullable @Provides method");
    }
}
