package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbue.class */
public final class zzbue implements zzeoy<zzbuc> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzux>>> f25561a;

    public zzbue(zzeph<Set<zzcab<zzux>>> zzephVar) {
        this.f25561a = zzephVar;
    }

    /* renamed from: a */
    public static zzbue m15035a(zzeph<Set<zzcab<zzux>>> zzephVar) {
        return new zzbue(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbuc(this.f25561a.get());
    }
}
