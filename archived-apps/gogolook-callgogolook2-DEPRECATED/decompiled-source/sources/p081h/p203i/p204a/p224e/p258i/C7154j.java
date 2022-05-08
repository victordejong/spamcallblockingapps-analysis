package p081h.p203i.p204a.p224e.p258i;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: h.i.a.e.i.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/j.class */
public final class C7154j {

    /* renamed from: a */
    public final Intent f17257a;

    /* renamed from: b */
    public final BroadcastReceiver.PendingResult f17258b;

    /* renamed from: c */
    public boolean f17259c = false;

    /* renamed from: d */
    public final ScheduledFuture<?> f17260d;

    public C7154j(Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.f17257a = intent;
        this.f17258b = pendingResult;
        this.f17260d = scheduledExecutorService.schedule(new RunnableC7155k(this, intent), 9500L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public final void m21023a() {
        synchronized (this) {
            if (!this.f17259c) {
                this.f17258b.finish();
                this.f17260d.cancel(false);
                this.f17259c = true;
            }
        }
    }
}
