package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbky.class */
public final class zzbky implements zzdxg<Set<zzbsu<zzbqb>>> {

    /* renamed from: a */
    private final zzbkn f12071a;

    /* renamed from: b */
    private final zzdxp<zzbly> f12072b;

    public zzbky(zzbkn zzbknVar, zzdxp<zzbly> zzdxpVar) {
        this.f12071a = zzbknVar;
        this.f12072b = zzdxpVar;
    }

    public static Set<zzbsu<zzbqb>> zza(zzbkn zzbknVar, zzbly zzblyVar) {
        return (Set) zzdxm.zza(Collections.singleton(new zzbsu(zzblyVar, zzazd.zzdwj)), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12071a, this.f12072b.get());
    }
}
