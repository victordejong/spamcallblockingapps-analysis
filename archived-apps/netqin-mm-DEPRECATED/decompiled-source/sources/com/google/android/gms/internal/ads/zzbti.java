package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbti.class */
public final class zzbti implements zzeoy<zzbtd> {

    /* renamed from: a */
    public final zzeph<zzbuu> f25497a;

    /* renamed from: b */
    public final zzeph<zzdnv> f25498b;

    /* renamed from: c */
    public final zzeph<ScheduledExecutorService> f25499c;

    /* renamed from: d */
    public final zzeph<Executor> f25500d;

    public zzbti(zzeph<zzbuu> zzephVar, zzeph<zzdnv> zzephVar2, zzeph<ScheduledExecutorService> zzephVar3, zzeph<Executor> zzephVar4) {
        this.f25497a = zzephVar;
        this.f25498b = zzephVar2;
        this.f25499c = zzephVar3;
        this.f25500d = zzephVar4;
    }

    /* renamed from: a */
    public static zzbti m15080a(zzeph<zzbuu> zzephVar, zzeph<zzdnv> zzephVar2, zzeph<ScheduledExecutorService> zzephVar3, zzeph<Executor> zzephVar4) {
        return new zzbti(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbtd(this.f25497a.get(), this.f25498b.get(), this.f25499c.get(), this.f25500d.get());
    }
}
