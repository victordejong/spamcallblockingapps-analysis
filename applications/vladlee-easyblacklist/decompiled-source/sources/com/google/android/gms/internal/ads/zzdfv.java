package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfv.class */
public abstract class zzdfv extends AbstractExecutorService implements zzdhd {
    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return add.m5456a(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return add.m5455a((Callable) callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public /* synthetic */ Future submit(Runnable runnable, @NullableDecl Object obj) {
        return (zzdhe) super.submit(runnable, obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdhd
    /* renamed from: zzd */
    public final <T> zzdhe<T> submit(Callable<T> callable) {
        return (zzdhe) super.submit(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzdhd
    /* renamed from: zzf */
    public final zzdhe<?> submit(Runnable runnable) {
        return (zzdhe) super.submit(runnable);
    }
}
