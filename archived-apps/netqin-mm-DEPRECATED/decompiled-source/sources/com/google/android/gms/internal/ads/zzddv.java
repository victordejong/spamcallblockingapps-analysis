package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddv.class */
public final class zzddv implements zzeoy<zzddp<zzddg>> {

    /* renamed from: a */
    public final zzeph<zzddj> f27188a;

    /* renamed from: b */
    public final zzeph<Clock> f27189b;

    public zzddv(zzeph<zzddj> zzephVar, zzeph<Clock> zzephVar2) {
        this.f27188a = zzephVar;
        this.f27189b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzddp zzddpVar = new zzddp(this.f27188a.get(), 10000L, this.f27189b.get());
        zzepe.m12187a(zzddpVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzddpVar;
    }
}
