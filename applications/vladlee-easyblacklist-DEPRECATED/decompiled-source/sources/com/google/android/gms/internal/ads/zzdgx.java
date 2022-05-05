package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgx.class */
public final class zzdgx<V> {

    /* renamed from: a */
    private final boolean f14293a;

    /* renamed from: b */
    private final zzdeu<zzdhe<? extends V>> f14294b;

    private zzdgx(boolean z, zzdeu<zzdhe<? extends V>> zzdeuVar) {
        this.f14293a = z;
        this.f14294b = zzdeuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdgx(boolean z, zzdeu zzdeuVar, byte b) {
        this(z, zzdeuVar);
    }

    public final <C> zzdhe<C> zza(Callable<C> callable, Executor executor) {
        return new acf(this.f14294b, this.f14293a, executor, callable);
    }
}
