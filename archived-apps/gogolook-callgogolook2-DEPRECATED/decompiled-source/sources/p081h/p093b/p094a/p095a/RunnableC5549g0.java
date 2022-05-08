package p081h.p093b.p094a.p095a;

import java.util.concurrent.Future;
import p081h.p203i.p204a.p224e.p259j.p278s.C8805a;
/* renamed from: h.b.a.a.g0 */
/* loaded from: classes-dex2jar.jar:h/b/a/a/g0.class */
public final class RunnableC5549g0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Future f13860a;

    /* renamed from: b */
    public final /* synthetic */ Runnable f13861b;

    public RunnableC5549g0(C5534b bVar, Future future, Runnable runnable) {
        this.f13860a = future;
        this.f13861b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f13860a.isDone() && !this.f13860a.isCancelled()) {
            this.f13860a.cancel(true);
            C8805a.m16910b("BillingClient", "Async task is taking too long, cancel it!");
            Runnable runnable = this.f13861b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
