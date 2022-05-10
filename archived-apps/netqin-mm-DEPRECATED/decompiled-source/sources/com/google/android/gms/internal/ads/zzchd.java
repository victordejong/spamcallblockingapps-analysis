package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchd.class */
public final class zzchd implements zzeoy<zzcgw> {

    /* renamed from: a */
    public final zzeph<Context> f26012a;

    /* renamed from: b */
    public final zzeph<zzcgn> f26013b;

    /* renamed from: c */
    public final zzeph<zzeg> f26014c;

    /* renamed from: d */
    public final zzeph<zzbbx> f26015d;

    /* renamed from: e */
    public final zzeph<zzb> f26016e;

    /* renamed from: f */
    public final zzeph<zzts> f26017f;

    /* renamed from: g */
    public final zzeph<Executor> f26018g;

    /* renamed from: h */
    public final zzeph<zzdok> f26019h;

    /* renamed from: i */
    public final zzeph<zzchj> f26020i;

    /* renamed from: j */
    public final zzeph<ScheduledExecutorService> f26021j;

    public zzchd(zzeph<Context> zzephVar, zzeph<zzcgn> zzephVar2, zzeph<zzeg> zzephVar3, zzeph<zzbbx> zzephVar4, zzeph<zzb> zzephVar5, zzeph<zzts> zzephVar6, zzeph<Executor> zzephVar7, zzeph<zzdok> zzephVar8, zzeph<zzchj> zzephVar9, zzeph<ScheduledExecutorService> zzephVar10) {
        this.f26012a = zzephVar;
        this.f26013b = zzephVar2;
        this.f26014c = zzephVar3;
        this.f26015d = zzephVar4;
        this.f26016e = zzephVar5;
        this.f26017f = zzephVar6;
        this.f26018g = zzephVar7;
        this.f26019h = zzephVar8;
        this.f26020i = zzephVar9;
        this.f26021j = zzephVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcgw(this.f26012a.get(), this.f26013b.get(), this.f26014c.get(), this.f26015d.get(), this.f26016e.get(), this.f26017f.get(), this.f26018g.get(), this.f26019h.get(), this.f26020i.get(), this.f26021j.get());
    }
}
