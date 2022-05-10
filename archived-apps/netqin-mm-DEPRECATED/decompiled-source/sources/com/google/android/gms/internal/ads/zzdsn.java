package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import p131c.p161d.p170b.p224d.p252g.p253a.C3971qz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsn.class */
public final class zzdsn implements zzeoy<zzdsi> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27786a;

    /* renamed from: b */
    public final zzeph<ScheduledExecutorService> f27787b;

    /* renamed from: c */
    public final zzeph<C3971qz> f27788c;

    public zzdsn(zzeph<zzdzb> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<C3971qz> zzephVar3) {
        this.f27786a = zzephVar;
        this.f27787b = zzephVar2;
        this.f27788c = zzephVar3;
    }

    /* renamed from: a */
    public static zzdsn m13248a(zzeph<zzdzb> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<C3971qz> zzephVar3) {
        return new zzdsn(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdsi(this.f27786a.get(), this.f27787b.get(), this.f27788c.get());
    }
}
