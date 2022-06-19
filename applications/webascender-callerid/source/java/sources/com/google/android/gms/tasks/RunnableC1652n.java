package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/n.class */
final class RunnableC1652n implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AbstractC1646g f4632f;

    /* renamed from: g */
    private final /* synthetic */ l f4633g;

    RunnableC1652n(l lVar, AbstractC1646g abstractC1646g) {
        this.f4633g = lVar;
        this.f4632f = abstractC1646g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AbstractC1646g abstractC1646g = (AbstractC1646g) l.d(this.f4633g).m1478a(this.f4632f);
            if (abstractC1646g == null) {
                this.f4633g.c(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = C1648i.f4628b;
            abstractC1646g.m1462i(executor, this.f4633g);
            abstractC1646g.m1464g(executor, this.f4633g);
            abstractC1646g.m1469b(executor, this.f4633g);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                l.e(this.f4633g).v((Exception) e.getCause());
            } else {
                l.e(this.f4633g).v(e);
            }
        } catch (Exception e2) {
            l.e(this.f4633g).v(e2);
        }
    }
}
