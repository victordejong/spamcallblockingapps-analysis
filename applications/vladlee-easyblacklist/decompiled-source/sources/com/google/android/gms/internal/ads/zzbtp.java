package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtp.class */
public final class zzbtp implements zzdxg<zzbtj> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<VideoController.VideoLifecycleCallbacks>>> f12381a;

    private zzbtp(zzdxp<Set<zzbsu<VideoController.VideoLifecycleCallbacks>>> zzdxpVar) {
        this.f12381a = zzdxpVar;
    }

    public static zzbtp zzt(zzdxp<Set<zzbsu<VideoController.VideoLifecycleCallbacks>>> zzdxpVar) {
        return new zzbtp(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbtj(this.f12381a.get());
    }
}
