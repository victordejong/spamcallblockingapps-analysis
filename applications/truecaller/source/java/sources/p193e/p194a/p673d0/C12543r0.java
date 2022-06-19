package p193e.p194a.p673d0;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: e.a.d0.r0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/r0.class */
public class C12543r0 implements AbstractC12541q0 {

    /* renamed from: a */
    public final ScheduledThreadPoolExecutor f36650a;

    public C12543r0(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        this.f36650a = scheduledThreadPoolExecutor;
    }

    @Override // p193e.p194a.p673d0.AbstractC12541q0
    /* renamed from: a */
    public void mo22883a(long j, TimeUnit timeUnit, Runnable runnable) {
        this.f36650a.schedule(runnable, j, timeUnit);
    }
}
