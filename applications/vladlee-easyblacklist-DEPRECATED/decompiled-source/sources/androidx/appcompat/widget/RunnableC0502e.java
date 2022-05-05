package androidx.appcompat.widget;
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
final class RunnableC0502e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ActionBarOverlayLayout f2390a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0502e(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f2390a = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2390a.m9507b();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2390a;
        actionBarOverlayLayout.f1786c = actionBarOverlayLayout.f1784a.animate().translationY(0.0f).setListener(this.f2390a.f1787d);
    }
}
