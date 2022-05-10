package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgp.class */
public final class zzcgp implements zzeoy<zzcgn> {

    /* renamed from: a */
    public final zzeph<zzbag> f25993a;

    /* renamed from: b */
    public final zzeph<Clock> f25994b;

    /* renamed from: c */
    public final zzeph<Executor> f25995c;

    public zzcgp(zzeph<zzbag> zzephVar, zzeph<Clock> zzephVar2, zzeph<Executor> zzephVar3) {
        this.f25993a = zzephVar;
        this.f25994b = zzephVar2;
        this.f25995c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcgn(this.f25993a.get(), this.f25994b.get(), this.f25995c.get());
    }
}
