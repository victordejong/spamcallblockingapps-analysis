package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.gass.zzf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbia.class */
public final class zzbia implements zzdxg<zzf> {

    /* renamed from: a */
    private final zzdxp<Context> f11909a;

    public zzbia(zzdxp<Context> zzdxpVar) {
        this.f11909a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzf) zzdxm.zza(new zzf(this.f11909a.get(), zzq.zzle().zzxb()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
