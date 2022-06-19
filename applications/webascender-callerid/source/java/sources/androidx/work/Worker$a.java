package androidx.work;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker$a.class */
class Worker$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ Worker f2421f;

    Worker$a(Worker worker) {
        this.f2421f = worker;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2421f.k.p(this.f2421f.p());
        } catch (Throwable th) {
            this.f2421f.k.q(th);
        }
    }
}
