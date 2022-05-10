package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuw.class */
public final class zzbuw implements zzeoy<zzbuu> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbuz>>> f25567a;

    public zzbuw(zzeph<Set<zzcab<zzbuz>>> zzephVar) {
        this.f25567a = zzephVar;
    }

    /* renamed from: a */
    public static zzbuw m15031a(zzeph<Set<zzcab<zzbuz>>> zzephVar) {
        return new zzbuw(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbuu(this.f25567a.get());
    }
}
