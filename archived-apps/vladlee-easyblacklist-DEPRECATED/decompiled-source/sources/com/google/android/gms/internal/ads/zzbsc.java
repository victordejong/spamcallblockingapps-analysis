package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsc.class */
public final class zzbsc implements zzdxg<Set<zzbsu<zzbqg>>> {

    /* renamed from: a */
    private final zzbrm f12356a;

    private zzbsc(zzbrm zzbrmVar) {
        this.f12356a = zzbrmVar;
    }

    public static zzbsc zzt(zzbrm zzbrmVar) {
        return new zzbsc(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12356a.zzahu(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
