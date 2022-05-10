package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdp.class */
public final class zzcdp implements zzeoy<zzceq> {

    /* renamed from: a */
    public final zzeph<zzcdi> f25788a;

    public zzcdp(zzcdl zzcdlVar, zzeph<zzcdi> zzephVar) {
        this.f25788a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcdi zzcdiVar = this.f25788a.get();
        zzepe.m12187a(zzcdiVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcdiVar;
    }
}
