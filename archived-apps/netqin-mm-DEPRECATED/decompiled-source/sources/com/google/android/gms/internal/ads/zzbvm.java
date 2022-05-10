package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvm.class */
public final class zzbvm implements zzeoy<zzbvh> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbuh>>> f25569a;

    public zzbvm(zzeph<Set<zzcab<zzbuh>>> zzephVar) {
        this.f25569a = zzephVar;
    }

    /* renamed from: a */
    public static zzbvm m15019a(zzeph<Set<zzcab<zzbuh>>> zzephVar) {
        return new zzbvm(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbvh(this.f25569a.get());
    }
}
