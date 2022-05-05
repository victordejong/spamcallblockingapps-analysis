package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazl.class */
public class zzazl<T> implements zzdhe<T> {

    /* renamed from: a */
    private final zzdhl<T> f11558a = zzdhl.zzarx();

    /* renamed from: a */
    private static boolean m4192a(boolean z) {
        if (!z) {
            zzq.zzku().zzb(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzdhe
    public void addListener(Runnable runnable, Executor executor) {
        this.f11558a.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f11558a.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return this.f11558a.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) {
        return this.f11558a.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f11558a.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f11558a.isDone();
    }

    public final boolean set(T t) {
        return m4192a(this.f11558a.set(t));
    }

    public final boolean setException(Throwable th) {
        return m4192a(this.f11558a.setException(th));
    }
}
