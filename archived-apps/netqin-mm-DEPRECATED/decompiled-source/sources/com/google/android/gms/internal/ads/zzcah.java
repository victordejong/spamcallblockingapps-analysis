package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcah.class */
public final class zzcah implements zzeoy<zzcaf> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzcak>>> f25653a;

    public zzcah(zzeph<Set<zzcab<zzcak>>> zzephVar) {
        this.f25653a = zzephVar;
    }

    /* renamed from: a */
    public static zzcah m14862a(zzeph<Set<zzcab<zzcak>>> zzephVar) {
        return new zzcah(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcaf(this.f25653a.get());
    }
}
