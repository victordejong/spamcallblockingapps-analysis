package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.v10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyh.class */
public final class zzdyh extends zzdyg<V> {
    public final /* synthetic */ v10 zzhsz;
    public final Callable<V> zzhta;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdyh(v10 v10Var, Callable<V> callable, Executor executor) {
        super(v10Var, executor);
        this.zzhsz = v10Var;
        zzdwd.m13096a(callable);
        this.zzhta = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzdyg
    public final void setValue(V v) {
        this.zzhsz.mo12972a((v10) v);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdyy
    public final V zzayd() throws Exception {
        this.zzhsy = false;
        return this.zzhta.call();
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final String zzaye() {
        return this.zzhta.toString();
    }
}
