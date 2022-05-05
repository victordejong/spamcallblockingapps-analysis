package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrs.class */
public final class zzbrs implements zzdxg<Set<zzbsu<zzbqb>>> {

    /* renamed from: a */
    private final zzbrm f12301a;

    private zzbrs(zzbrm zzbrmVar) {
        this.f12301a = zzbrmVar;
    }

    public static zzbrs zzi(zzbrm zzbrmVar) {
        return new zzbrs(zzbrmVar);
    }

    public static Set<zzbsu<zzbqb>> zzj(zzbrm zzbrmVar) {
        return (Set) zzdxm.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzj(this.f12301a);
    }
}
