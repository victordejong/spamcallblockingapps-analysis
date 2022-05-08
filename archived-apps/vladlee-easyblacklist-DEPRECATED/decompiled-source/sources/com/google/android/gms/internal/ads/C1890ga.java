package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.ga */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ga.class */
final class C1890ga extends zzdfv {

    /* renamed from: a */
    private final Executor f8491a;

    private C1890ga(Executor executor) {
        this.f8491a = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1890ga(Executor executor, byte b) {
        this(executor);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f8491a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
