package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcg.class */
public class zzbcg<T> implements zzdzc<T> {

    /* renamed from: a */
    public final zzdzj<T> f24770a = zzdzj.m12970h();

    /* renamed from: a */
    public static boolean m15833a(boolean z) {
        if (!z) {
            zzp.m17965g().m16185b(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzdzc
    /* renamed from: a */
    public void mo12976a(Runnable runnable, Executor executor) {
        this.f24770a.mo12976a(runnable, executor);
    }

    /* renamed from: a */
    public final boolean m15835a(T t) {
        boolean a = this.f24770a.mo12972a((zzdzj<T>) t);
        m15833a(a);
        return a;
    }

    /* renamed from: a */
    public final boolean m15834a(Throwable th) {
        boolean a = this.f24770a.mo12971a(th);
        m15833a(a);
        return a;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f24770a.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, InterruptedException {
        return this.f24770a.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f24770a.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f24770a.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f24770a.isDone();
    }
}
