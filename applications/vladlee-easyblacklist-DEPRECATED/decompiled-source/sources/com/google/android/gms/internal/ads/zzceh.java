package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzceh.class */
public final class zzceh implements zzdxg<Set<zzbsu<zzbqx>>> {
    public static Set<zzbsu<zzbqx>> zza(zzcee zzceeVar, zzceo zzceoVar, Executor executor) {
        return (Set) zzdxm.zza(zzcee.zzi(zzceoVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
