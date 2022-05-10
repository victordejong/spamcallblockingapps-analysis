package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbq.class */
public final class zzcbq implements zzeoy<zzcab<zzp>> {

    /* renamed from: a */
    public final zzeph<zzcco> f25682a;

    public zzcbq(zzcbf zzcbfVar, zzeph<zzcco> zzephVar) {
        this.f25682a = zzephVar;
    }

    /* renamed from: a */
    public static zzcbq m14831a(zzcbf zzcbfVar, zzeph<zzcco> zzephVar) {
        return new zzcbq(zzcbfVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25682a.get(), zzbbz.f24768e);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
