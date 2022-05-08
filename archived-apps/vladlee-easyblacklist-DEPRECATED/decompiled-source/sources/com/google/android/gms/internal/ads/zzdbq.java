package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbq.class */
public final class zzdbq implements zzdxg<Executor> {

    /* renamed from: a */
    private static final zzdbq f14156a = new zzdbq();

    public static zzdbq zzapv() {
        return f14156a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Executor) zzdxm.zza(zzazd.zzdwi, "Cannot return null from a non-@Nullable @Provides method");
    }
}
