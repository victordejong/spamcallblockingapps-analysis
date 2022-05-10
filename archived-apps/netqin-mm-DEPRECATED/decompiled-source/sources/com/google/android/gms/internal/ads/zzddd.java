package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddd.class */
public final class zzddd implements zzeoy<zzdcz> {

    /* renamed from: a */
    public final zzeph<Context> f27158a;

    /* renamed from: b */
    public final zzeph<ScheduledExecutorService> f27159b;

    /* renamed from: c */
    public final zzeph<Executor> f27160c;

    public zzddd(zzeph<Context> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<Executor> zzephVar3) {
        this.f27158a = zzephVar;
        this.f27159b = zzephVar2;
        this.f27160c = zzephVar3;
    }

    /* renamed from: a */
    public static zzddd m13647a(zzeph<Context> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<Executor> zzephVar3) {
        return new zzddd(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdcz(this.f27158a.get(), this.f27159b.get(), this.f27160c.get());
    }
}
