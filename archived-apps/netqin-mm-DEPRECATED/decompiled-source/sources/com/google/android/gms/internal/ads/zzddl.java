package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddl.class */
public final class zzddl implements zzeoy<zzddj> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27170a;

    /* renamed from: b */
    public final zzeph<Context> f27171b;

    public zzddl(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2) {
        this.f27170a = zzephVar;
        this.f27171b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzddj(this.f27170a.get(), this.f27171b.get());
    }
}
