package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchy.class */
public final class zzchy implements zzeoy<zzchj> {

    /* renamed from: a */
    public final zzeph<zzdok> f26044a;

    /* renamed from: b */
    public final zzeph<Executor> f26045b;

    /* renamed from: c */
    public final zzeph<zzcjt> f26046c;

    public zzchy(zzeph<zzdok> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzcjt> zzephVar3) {
        this.f26044a = zzephVar;
        this.f26045b = zzephVar2;
        this.f26046c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzchj(this.f26044a.get(), this.f26045b.get(), this.f26046c.get());
    }
}
