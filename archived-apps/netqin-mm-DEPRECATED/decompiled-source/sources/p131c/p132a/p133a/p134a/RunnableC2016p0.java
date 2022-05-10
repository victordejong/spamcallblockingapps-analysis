package p131c.p132a.p133a.p134a;

import com.google.android.gms.internal.play_billing.zza;
import java.util.concurrent.Future;
/* renamed from: c.a.a.a.p0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/p0.class */
public final class RunnableC2016p0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Future f7877a;

    /* renamed from: b */
    public final /* synthetic */ Runnable f7878b;

    public RunnableC2016p0(C1987d dVar, Future future, Runnable runnable) {
        this.f7877a = future;
        this.f7878b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f7877a.isDone() && !this.f7877a.isCancelled()) {
            this.f7877a.cancel(true);
            zza.m9442b("BillingClient", "Async task is taking too long, cancel it!");
            Runnable runnable = this.f7878b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
