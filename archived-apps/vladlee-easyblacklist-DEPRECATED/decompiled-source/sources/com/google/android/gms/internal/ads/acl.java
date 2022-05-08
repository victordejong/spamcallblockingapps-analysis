package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acl.class */
final class acl<V> extends zzdgn<V> {

    /* renamed from: a */
    private final zzdhe<V> f7221a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acl(zzdhe<V> zzdheVar) {
        this.f7221a = (zzdhe) zzdei.checkNotNull(zzdheVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdfs, com.google.android.gms.internal.ads.zzdhe
    public final void addListener(Runnable runnable, Executor executor) {
        this.f7221a.addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdfs, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f7221a.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.zzdfs, java.util.concurrent.Future
    public final V get() {
        return this.f7221a.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdfs, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.f7221a.get(j, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.zzdfs, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f7221a.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzdfs, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f7221a.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzdfs
    public final String toString() {
        return this.f7221a.toString();
    }
}
