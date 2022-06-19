package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/w.class */
final class RunnableC1657w implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AbstractC1646g f4641f;

    /* renamed from: g */
    private final /* synthetic */ x f4642g;

    RunnableC1657w(x xVar, AbstractC1646g abstractC1646g) {
        this.f4642g = xVar;
        this.f4641f = abstractC1646g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AbstractC1646g m1471a = x.d(this.f4642g).m1471a(this.f4641f.m1456o());
            if (m1471a == null) {
                this.f4642g.c(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = C1648i.f4628b;
            m1471a.m1462i(executor, this.f4642g);
            m1471a.m1464g(executor, this.f4642g);
            m1471a.m1469b(executor, this.f4642g);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f4642g.c((Exception) e.getCause());
            } else {
                this.f4642g.c(e);
            }
        } catch (CancellationException e2) {
            this.f4642g.b();
        } catch (Exception e3) {
            this.f4642g.c(e3);
        }
    }
}
