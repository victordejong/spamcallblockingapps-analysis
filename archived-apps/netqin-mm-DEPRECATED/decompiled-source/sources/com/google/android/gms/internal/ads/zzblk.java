package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblk.class */
public final class zzblk implements zzeoy<zzdtn> {

    /* renamed from: a */
    public final zzeph<Context> f25143a;

    public zzblk(zzeph<Context> zzephVar) {
        this.f25143a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdtn zzdtnVar = new zzdtn(this.f25143a.get(), zzp.m17955q().m15947b());
        zzepe.m12187a(zzdtnVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzdtnVar;
    }
}
