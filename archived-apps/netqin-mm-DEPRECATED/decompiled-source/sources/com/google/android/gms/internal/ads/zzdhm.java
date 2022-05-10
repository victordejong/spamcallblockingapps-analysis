package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhm.class */
public final class zzdhm implements zzeoy<zzdhl> {

    /* renamed from: a */
    public final zzeph<zzaxx> f27337a;

    /* renamed from: b */
    public final zzeph<Context> f27338b;

    /* renamed from: c */
    public final zzeph<ScheduledExecutorService> f27339c;

    /* renamed from: d */
    public final zzeph<Executor> f27340d;

    public zzdhm(zzeph<zzaxx> zzephVar, zzeph<Context> zzephVar2, zzeph<ScheduledExecutorService> zzephVar3, zzeph<Executor> zzephVar4) {
        this.f27337a = zzephVar;
        this.f27338b = zzephVar2;
        this.f27339c = zzephVar3;
        this.f27340d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdhl(this.f27337a.get(), this.f27338b.get(), this.f27339c.get(), this.f27340d.get());
    }
}
