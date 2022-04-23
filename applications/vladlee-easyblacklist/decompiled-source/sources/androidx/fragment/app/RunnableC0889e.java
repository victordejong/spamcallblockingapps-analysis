package androidx.fragment.app;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.e */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/e.class */
public final class RunnableC0889e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Fragment f3763a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0889e(Fragment fragment) {
        this.f3763a = fragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3763a.startPostponedEnterTransition();
    }
}
