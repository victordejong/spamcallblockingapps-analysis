package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsw.class */
public final class zzcsw implements zzeoy<zzcsp> {

    /* renamed from: a */
    public final zzeph<Context> f26486a;

    /* renamed from: b */
    public final zzeph<zzdzb> f26487b;

    public zzcsw(zzeph<Context> zzephVar, zzeph<zzdzb> zzephVar2) {
        this.f26486a = zzephVar;
        this.f26487b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcsp(this.f26486a.get(), this.f26487b.get());
    }
}
