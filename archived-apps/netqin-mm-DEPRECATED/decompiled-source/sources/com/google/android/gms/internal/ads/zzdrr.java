package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrr.class */
public final class zzdrr<E, V> implements zzdzc<V> {

    /* renamed from: a */
    public final E f27768a;

    /* renamed from: b */
    public final String f27769b;

    /* renamed from: c */
    public final zzdzc<V> f27770c;

    public zzdrr(E e, String str, zzdzc<V> zzdzcVar) {
        this.f27768a = e;
        this.f27769b = str;
        this.f27770c = zzdzcVar;
    }

    /* renamed from: a */
    public final E m13277a() {
        return this.f27768a;
    }

    @Override // com.google.android.gms.internal.ads.zzdzc
    /* renamed from: a */
    public final void mo12976a(Runnable runnable, Executor executor) {
        this.f27770c.mo12976a(runnable, executor);
    }

    /* renamed from: b */
    public final String m13276b() {
        return this.f27769b;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f27770c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.f27770c.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f27770c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f27770c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f27770c.isDone();
    }

    public final String toString() {
        String str = this.f27769b;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }
}
