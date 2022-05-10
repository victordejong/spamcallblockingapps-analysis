package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblj.class */
public final class zzblj implements zzeoy<zzbag> {

    /* renamed from: a */
    public final zzeph<Context> f25142a;

    public zzblj(zzeph<Context> zzephVar) {
        this.f25142a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbag zzbagVar = new zzbag(this.f25142a.get());
        zzepe.m12187a(zzbagVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzbagVar;
    }
}
