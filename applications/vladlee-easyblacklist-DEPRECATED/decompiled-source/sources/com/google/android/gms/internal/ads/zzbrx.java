package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrx.class */
public final class zzbrx implements zzdxg<Set<zzbsu<zzbov>>> {

    /* renamed from: a */
    private final zzbrm f12306a;

    private zzbrx(zzbrm zzbrmVar) {
        this.f12306a = zzbrmVar;
    }

    public static zzbrx zzn(zzbrm zzbrmVar) {
        return new zzbrx(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12306a.zzahm(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
