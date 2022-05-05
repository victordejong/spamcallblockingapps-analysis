package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvo.class */
public final class zzbvo implements zzdxg<Set<String>> {

    /* renamed from: a */
    private final zzdxp<zzbwz> f12468a;

    public zzbvo(zzdxp<zzbwz> zzdxpVar) {
        this.f12468a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12468a.get().zzajs() != null ? Collections.singleton("banner") : Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
