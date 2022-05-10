package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyp.class */
public final class zzbyp implements zzeoy<zzbyg> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbyo>>> f25596a;

    public zzbyp(zzeph<Set<zzcab<zzbyo>>> zzephVar) {
        this.f25596a = zzephVar;
    }

    /* renamed from: a */
    public static zzbyp m14942a(zzeph<Set<zzcab<zzbyo>>> zzephVar) {
        return new zzbyp(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbyg(this.f25596a.get());
    }
}
