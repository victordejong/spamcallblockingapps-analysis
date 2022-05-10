package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfj.class */
public final class zzcfj implements zzeoy<zzcfh> {

    /* renamed from: a */
    public final zzeph<zzcil> f25943a;

    /* renamed from: b */
    public final zzeph<Clock> f25944b;

    public zzcfj(zzeph<zzcil> zzephVar, zzeph<Clock> zzephVar2) {
        this.f25943a = zzephVar;
        this.f25944b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcfh(this.f25943a.get(), this.f25944b.get());
    }
}
