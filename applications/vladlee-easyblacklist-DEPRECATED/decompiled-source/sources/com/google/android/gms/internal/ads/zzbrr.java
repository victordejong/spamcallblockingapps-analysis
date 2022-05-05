package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrr.class */
public final class zzbrr implements zzdxg<Set<zzbsu<zzo>>> {

    /* renamed from: a */
    private final zzbrm f12300a;

    private zzbrr(zzbrm zzbrmVar) {
        this.f12300a = zzbrmVar;
    }

    public static zzbrr zzh(zzbrm zzbrmVar) {
        return new zzbrr(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
