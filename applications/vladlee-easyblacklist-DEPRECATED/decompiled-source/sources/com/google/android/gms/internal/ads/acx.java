package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acx.class */
public final class acx extends acu implements zzdhd, ScheduledExecutorService {

    /* renamed from: a */
    private final ScheduledExecutorService f7238a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acx(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f7238a = (ScheduledExecutorService) zzdei.checkNotNull(scheduledExecutorService);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        add a = add.m5456a(runnable, (Object) null);
        return new acw(a, this.f7238a.schedule(a, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        add a = add.m5455a(callable);
        return new acw(a, this.f7238a.schedule(a, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        acy acyVar = new acy(runnable);
        return new acw(acyVar, this.f7238a.scheduleAtFixedRate(acyVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        acy acyVar = new acy(runnable);
        return new acw(acyVar, this.f7238a.scheduleWithFixedDelay(acyVar, j, j2, timeUnit));
    }
}
