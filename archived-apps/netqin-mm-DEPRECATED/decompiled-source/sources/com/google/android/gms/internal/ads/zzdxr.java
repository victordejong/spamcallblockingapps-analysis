package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import p131c.p161d.p170b.p224d.p252g.p253a.q20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxr.class */
public abstract class zzdxr extends AbstractExecutorService implements zzdzb {
    @Override // com.google.android.gms.internal.ads.zzdzb
    /* renamed from: a */
    public final zzdzc<?> submit(Runnable runnable) {
        return (zzdzc) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzdzb
    /* renamed from: a */
    public final <T> zzdzc<T> submit(Callable<T> callable) {
        return (zzdzc) super.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return q20.m26530a(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return q20.m26529a((Callable) callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (zzdzc) super.submit(runnable, obj);
    }
}
