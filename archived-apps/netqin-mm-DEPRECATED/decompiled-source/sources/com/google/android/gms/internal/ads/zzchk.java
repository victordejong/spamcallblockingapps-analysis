package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchk.class */
public final class zzchk implements zzeoy<zzchg> {

    /* renamed from: a */
    public final zzeph<Executor> f26031a;

    /* renamed from: b */
    public final zzeph<zzcgw> f26032b;

    public zzchk(zzeph<Executor> zzephVar, zzeph<zzcgw> zzephVar2) {
        this.f26031a = zzephVar;
        this.f26032b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzchg(this.f26031a.get(), this.f26032b.get());
    }
}
