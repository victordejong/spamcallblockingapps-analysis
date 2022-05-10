package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmf.class */
public final class zzcmf implements zzeoy<zzcme> {

    /* renamed from: a */
    public final zzeph<zzts> f26228a;

    /* renamed from: b */
    public final zzeph<Map<zzdsf, zzcmg>> f26229b;

    public zzcmf(zzeph<zzts> zzephVar, zzeph<Map<zzdsf, zzcmg>> zzephVar2) {
        this.f26228a = zzephVar;
        this.f26229b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcmf m14071a(zzeph<zzts> zzephVar, zzeph<Map<zzdsf, zzcmg>> zzephVar2) {
        return new zzcmf(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcme(this.f26228a.get(), this.f26229b.get());
    }
}
