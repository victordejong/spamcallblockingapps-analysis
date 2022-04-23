package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsh.class */
public final class zzbsh implements zzdxg<Set<zzbsu<VideoController.VideoLifecycleCallbacks>>> {

    /* renamed from: a */
    private final zzbrm f12361a;

    private zzbsh(zzbrm zzbrmVar) {
        this.f12361a = zzbrmVar;
    }

    public static zzbsh zzy(zzbrm zzbrmVar) {
        return new zzbsh(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
