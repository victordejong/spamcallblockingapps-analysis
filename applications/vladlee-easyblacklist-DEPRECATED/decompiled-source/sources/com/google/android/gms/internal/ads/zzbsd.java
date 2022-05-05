package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsd.class */
public final class zzbsd implements zzdxg<Set<zzbsu<zzps>>> {

    /* renamed from: a */
    private final zzbrm f12357a;

    private zzbsd(zzbrm zzbrmVar) {
        this.f12357a = zzbrmVar;
    }

    public static zzbsd zzu(zzbrm zzbrmVar) {
        return new zzbsd(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
