package androidx.work.impl.workers;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$a.class */
class ConstraintTrackingWorker$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ ConstraintTrackingWorker f2672f;

    ConstraintTrackingWorker$a(ConstraintTrackingWorker constraintTrackingWorker) {
        this.f2672f = constraintTrackingWorker;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2672f.s();
    }
}
