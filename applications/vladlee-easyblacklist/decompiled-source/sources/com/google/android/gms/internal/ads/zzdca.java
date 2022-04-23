package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdca.class */
public final class zzdca<E, V> implements zzdhe<V> {

    /* renamed from: a */
    private final E f14170a;

    /* renamed from: b */
    private final String f14171b;

    /* renamed from: c */
    private final zzdhe<V> f14172c;

    public zzdca(E e, String str, zzdhe<V> zzdheVar) {
        this.f14170a = e;
        this.f14171b = str;
        this.f14172c = zzdheVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdhe
    public final void addListener(Runnable runnable, Executor executor) {
        this.f14172c.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f14172c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.f14172c.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.f14172c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f14172c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f14172c.isDone();
    }

    public final String toString() {
        String str = this.f14171b;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }

    public final E zzaqd() {
        return this.f14170a;
    }

    public final String zzaqe() {
        return this.f14171b;
    }
}
