package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbz.class */
public final class zzdbz implements zzdxg<ThreadFactory> {

    /* renamed from: a */
    private static final zzdbz f14163a = new zzdbz();

    public static zzdbz zzaqc() {
        return f14163a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (ThreadFactory) zzdxm.zza(new aab(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
