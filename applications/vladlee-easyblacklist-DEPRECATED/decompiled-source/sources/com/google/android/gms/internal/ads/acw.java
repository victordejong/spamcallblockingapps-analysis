package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acw.class */
final class acw<V> extends zzdgq<V> implements zzdhe<V>, ScheduledFuture<V> {

    /* renamed from: a */
    private final ScheduledFuture<?> f7237a;

    public acw(zzdhe<V> zzdheVar, ScheduledFuture<?> scheduledFuture) {
        super(zzdheVar);
        this.f7237a = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzdgo, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = super.cancel(z);
        if (cancel) {
            this.f7237a.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Delayed delayed) {
        return this.f7237a.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f7237a.getDelay(timeUnit);
    }
}
