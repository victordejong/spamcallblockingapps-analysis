package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsa.class */
public final class zzbsa implements zzdxg<Set<zzbsu<zzbqb>>> {

    /* renamed from: a */
    private final zzbrm f12354a;

    private zzbsa(zzbrm zzbrmVar) {
        this.f12354a = zzbrmVar;
    }

    public static zzbsa zzq(zzbrm zzbrmVar) {
        return new zzbsa(zzbrmVar);
    }

    public static Set<zzbsu<zzbqb>> zzr(zzbrm zzbrmVar) {
        return (Set) zzdxm.zza(zzbrmVar.zzahn(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzr(this.f12354a);
    }
}
