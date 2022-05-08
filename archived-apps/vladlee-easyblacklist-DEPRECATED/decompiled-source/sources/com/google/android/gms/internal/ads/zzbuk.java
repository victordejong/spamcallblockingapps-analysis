package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuk.class */
public final class zzbuk implements zzdxg<Set<zzbsu<zzbsn>>> {

    /* renamed from: a */
    private final zzdxp<zzbvc> f12415a;

    private zzbuk(zzdxp<zzbvc> zzdxpVar) {
        this.f12415a = zzdxpVar;
    }

    public static zzbuk zzu(zzdxp<zzbvc> zzdxpVar) {
        return new zzbuk(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(Collections.singleton(zzbsu.zzb(this.f12415a.get(), zzazd.zzdwj)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
