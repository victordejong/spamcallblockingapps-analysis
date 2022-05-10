package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdyo;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.b.d.g.a.k20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k20.class */
public final class k20<V> extends zzdyo<V> implements zzdzc<V>, ScheduledFuture<V> {

    /* renamed from: b */
    public final ScheduledFuture<?> f13830b;

    public k20(zzdzc<V> zzdzcVar, ScheduledFuture<?> scheduledFuture) {
        super(zzdzcVar);
        this.f13830b = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzdym, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = super.cancel(z);
        if (cancel) {
            this.f13830b.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Delayed delayed) {
        return this.f13830b.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f13830b.getDelay(timeUnit);
    }
}
