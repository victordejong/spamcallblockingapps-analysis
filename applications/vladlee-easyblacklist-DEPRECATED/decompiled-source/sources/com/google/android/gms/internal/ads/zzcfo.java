package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfo.class */
public final class zzcfo implements zzdxg<zzdhe<Bundle>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f13088a;

    /* renamed from: b */
    private final zzdxp<zzcua<Bundle>> f13089b;

    private zzcfo(zzdxp<zzdcr> zzdxpVar, zzdxp<zzcua<Bundle>> zzdxpVar2) {
        this.f13088a = zzdxpVar;
        this.f13089b = zzdxpVar2;
    }

    public static zzcfo zzab(zzdxp<zzdcr> zzdxpVar, zzdxp<zzcua<Bundle>> zzdxpVar2) {
        return new zzcfo(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzdhe) zzdxm.zza(this.f13088a.get().zzu(zzdco.SIGNALS).zzc(this.f13089b.get().zzs(new Bundle())).zzaqg(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
