package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpq.class */
public final class zzcpq implements zzeoy<zzcpm> {

    /* renamed from: a */
    public final zzeph<zzdok> f26385a;

    /* renamed from: b */
    public final zzeph<zzcoi> f26386b;

    /* renamed from: c */
    public final zzeph<zzdzb> f26387c;

    /* renamed from: d */
    public final zzeph<ScheduledExecutorService> f26388d;

    /* renamed from: e */
    public final zzeph<zzcsc> f26389e;

    public zzcpq(zzeph<zzdok> zzephVar, zzeph<zzcoi> zzephVar2, zzeph<zzdzb> zzephVar3, zzeph<ScheduledExecutorService> zzephVar4, zzeph<zzcsc> zzephVar5) {
        this.f26385a = zzephVar;
        this.f26386b = zzephVar2;
        this.f26387c = zzephVar3;
        this.f26388d = zzephVar4;
        this.f26389e = zzephVar5;
    }

    /* renamed from: a */
    public static zzcpq m13945a(zzeph<zzdok> zzephVar, zzeph<zzcoi> zzephVar2, zzeph<zzdzb> zzephVar3, zzeph<ScheduledExecutorService> zzephVar4, zzeph<zzcsc> zzephVar5) {
        return new zzcpq(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcpm(this.f26385a.get(), this.f26386b.get(), this.f26387c.get(), this.f26388d.get(), this.f26389e.get());
    }
}
