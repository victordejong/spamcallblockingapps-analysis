package androidx.appcompat.widget;
/* renamed from: androidx.appcompat.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f.class */
final class RunnableC0503f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ActionBarOverlayLayout f2391a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0503f(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f2391a = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2391a.m9507b();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2391a;
        actionBarOverlayLayout.f1786c = actionBarOverlayLayout.f1784a.animate().translationY(-this.f2391a.f1784a.getHeight()).setListener(this.f2391a.f1787d);
    }
}
