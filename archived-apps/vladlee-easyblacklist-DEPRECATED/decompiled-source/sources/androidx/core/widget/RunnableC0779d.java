package androidx.core.widget;
/* renamed from: androidx.core.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/d.class */
final class RunnableC0779d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ContentLoadingProgressBar f3245a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0779d(ContentLoadingProgressBar contentLoadingProgressBar) {
        this.f3245a = contentLoadingProgressBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ContentLoadingProgressBar contentLoadingProgressBar = this.f3245a;
        contentLoadingProgressBar.f3178b = false;
        contentLoadingProgressBar.f3177a = -1L;
        contentLoadingProgressBar.setVisibility(8);
    }
}
