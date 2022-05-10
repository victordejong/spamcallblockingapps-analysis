package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbe.class */
public final class zzdbe implements zzeoy<zzdaq> {

    /* renamed from: a */
    public final zzeph<zzbix> f26863a;

    /* renamed from: b */
    public final zzeph<Context> f26864b;

    /* renamed from: c */
    public final zzeph<zzeg> f26865c;

    /* renamed from: d */
    public final zzeph<zzbbx> f26866d;

    /* renamed from: e */
    public final zzeph<zzdoz<zzcil>> f26867e;

    /* renamed from: f */
    public final zzeph<zzdzb> f26868f;

    /* renamed from: g */
    public final zzeph<ScheduledExecutorService> f26869g;

    public zzdbe(zzeph<zzbix> zzephVar, zzeph<Context> zzephVar2, zzeph<zzeg> zzephVar3, zzeph<zzbbx> zzephVar4, zzeph<zzdoz<zzcil>> zzephVar5, zzeph<zzdzb> zzephVar6, zzeph<ScheduledExecutorService> zzephVar7) {
        this.f26863a = zzephVar;
        this.f26864b = zzephVar2;
        this.f26865c = zzephVar3;
        this.f26866d = zzephVar4;
        this.f26867e = zzephVar5;
        this.f26868f = zzephVar6;
        this.f26869g = zzephVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdaq(this.f26863a.get(), this.f26864b.get(), this.f26865c.get(), this.f26866d.get(), this.f26867e.get(), this.f26868f.get(), this.f26869g.get());
    }
}
