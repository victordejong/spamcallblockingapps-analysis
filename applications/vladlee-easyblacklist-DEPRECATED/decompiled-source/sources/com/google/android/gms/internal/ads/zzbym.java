package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbym.class */
public final class zzbym implements zzdxg<zzbsu<VideoController.VideoLifecycleCallbacks>> {

    /* renamed from: a */
    private final zzbyg f12721a;

    /* renamed from: b */
    private final zzdxp<zzcax> f12722b;

    /* renamed from: c */
    private final zzdxp<Executor> f12723c;

    public zzbym(zzbyg zzbygVar, zzdxp<zzcax> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12721a = zzbygVar;
        this.f12722b = zzdxpVar;
        this.f12723c = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12722b.get(), this.f12723c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
