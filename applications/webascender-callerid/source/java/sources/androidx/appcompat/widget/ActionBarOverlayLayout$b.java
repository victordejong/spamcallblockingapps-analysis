package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
class ActionBarOverlayLayout$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ ActionBarOverlayLayout f322f;

    ActionBarOverlayLayout$b(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f322f = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f322f.u();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f322f;
        actionBarOverlayLayout.F = actionBarOverlayLayout.i.animate().translationY(0.0f).setListener(this.f322f.G);
    }
}
