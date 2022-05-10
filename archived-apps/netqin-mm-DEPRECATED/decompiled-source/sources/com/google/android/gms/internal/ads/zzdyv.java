package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.a20;
import p131c.p161d.p170b.p224d.p252g.p253a.v10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyv.class */
public final class zzdyv<V> {

    /* renamed from: a */
    public final boolean f27957a;

    /* renamed from: b */
    public final zzdwp<zzdzc<? extends V>> f27958b;

    public zzdyv(boolean z, zzdwp<zzdzc<? extends V>> zzdwpVar) {
        this.f27957a = z;
        this.f27958b = zzdwpVar;
    }

    public /* synthetic */ zzdyv(boolean z, zzdwp zzdwpVar, a20 a20Var) {
        this(z, zzdwpVar);
    }

    /* renamed from: a */
    public final <C> zzdzc<C> m12979a(Callable<C> callable, Executor executor) {
        return new v10(this.f27958b, this.f27957a, executor, callable);
    }
}
