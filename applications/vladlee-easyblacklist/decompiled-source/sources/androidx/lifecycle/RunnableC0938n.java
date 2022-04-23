package androidx.lifecycle;
/* renamed from: androidx.lifecycle.n */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/n.class */
final class RunnableC0938n implements Runnable {

    /* renamed from: a */
    final /* synthetic */ LiveData f3917a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0938n(LiveData liveData) {
        this.f3917a = liveData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        synchronized (this.f3917a.f3871a) {
            obj = this.f3917a.f3873d;
            this.f3917a.f3873d = LiveData.f3870b;
        }
        this.f3917a.mo7559b((LiveData) obj);
    }
}
