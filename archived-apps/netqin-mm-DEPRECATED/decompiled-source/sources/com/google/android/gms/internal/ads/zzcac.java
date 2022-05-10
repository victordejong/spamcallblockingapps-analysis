package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcac.class */
public final class zzcac implements zzeoy<zzbzx> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbzy>>> f25646a;

    public zzcac(zzeph<Set<zzcab<zzbzy>>> zzephVar) {
        this.f25646a = zzephVar;
    }

    /* renamed from: a */
    public static zzcac m14867a(zzeph<Set<zzcab<zzbzy>>> zzephVar) {
        return new zzcac(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbzx(this.f25646a.get());
    }
}
