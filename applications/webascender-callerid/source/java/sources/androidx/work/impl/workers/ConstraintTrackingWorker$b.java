package androidx.work.impl.workers;

import com.google.common.util.concurrent.c;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$b.class */
class ConstraintTrackingWorker$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ c f2673f;

    /* renamed from: g */
    final /* synthetic */ ConstraintTrackingWorker f2674g;

    ConstraintTrackingWorker$b(ConstraintTrackingWorker constraintTrackingWorker, c cVar) {
        this.f2674g = constraintTrackingWorker;
        this.f2673f = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f2674g.l) {
            if (this.f2674g.m) {
                this.f2674g.r();
            } else {
                this.f2674g.n.r(this.f2673f);
            }
        }
    }
}
