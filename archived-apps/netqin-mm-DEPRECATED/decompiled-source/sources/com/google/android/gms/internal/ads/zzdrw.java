package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
import p131c.p161d.p170b.p224d.p252g.p253a.CallableC3675iz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrw.class */
public final class zzdrw {

    /* renamed from: a */
    public final E f27775a;

    /* renamed from: b */
    public final List<zzdzc<?>> f27776b;

    /* renamed from: c */
    public final /* synthetic */ zzdru f27777c;

    public zzdrw(zzdru zzdruVar, E e, List<zzdzc<?>> list) {
        this.f27777c = zzdruVar;
        this.f27775a = e;
        this.f27776b = list;
    }

    /* renamed from: a */
    public final <O> zzdsa<O> m13268a(Callable<O> callable) {
        zzdzb zzdzbVar;
        zzdyv c = zzdyq.m12981c(this.f27776b);
        zzdzc a = c.m12979a(CallableC3675iz.f13568a, zzbbz.f24769f);
        zzdru zzdruVar = this.f27777c;
        E e = this.f27775a;
        List<zzdzc<?>> list = this.f27776b;
        zzdzbVar = zzdruVar.f27772a;
        return new zzdsa<>(zzdruVar, e, a, list, c.m12979a(callable, zzdzbVar));
    }
}
