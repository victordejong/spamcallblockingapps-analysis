package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgo.class */
public abstract class zzdgo<V> extends zzder implements Future<V> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract Future<? extends V> mo3547a();

    public boolean cancel(boolean z) {
        return mo3547a().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return (V) mo3547a().get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) {
        return (V) mo3547a().get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return mo3547a().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return mo3547a().isDone();
    }
}
