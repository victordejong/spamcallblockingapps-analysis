package androidx.core.widget;
/* renamed from: androidx.core.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/e.class */
final class RunnableC0780e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ContentLoadingProgressBar f3246a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0780e(ContentLoadingProgressBar contentLoadingProgressBar) {
        this.f3246a = contentLoadingProgressBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ContentLoadingProgressBar contentLoadingProgressBar = this.f3246a;
        contentLoadingProgressBar.f3179c = false;
        if (!contentLoadingProgressBar.f3180d) {
            this.f3246a.f3177a = System.currentTimeMillis();
            this.f3246a.setVisibility(0);
        }
    }
}
