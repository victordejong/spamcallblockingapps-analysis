package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyd.class */
public final class zzbyd implements zzeoy<zzbxy> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbyc>>> f25594a;

    public zzbyd(zzeph<Set<zzcab<zzbyc>>> zzephVar) {
        this.f25594a = zzephVar;
    }

    /* renamed from: a */
    public static zzbyd m14945a(zzeph<Set<zzcab<zzbyc>>> zzephVar) {
        return new zzbyd(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbxy(this.f25594a.get());
    }
}
