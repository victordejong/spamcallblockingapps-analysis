package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$c.class */
class ActionBarOverlayLayout$c implements Runnable {

    /* renamed from: f */
    final /* synthetic */ ActionBarOverlayLayout f323f;

    ActionBarOverlayLayout$c(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f323f = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f323f.u();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f323f;
        actionBarOverlayLayout.F = actionBarOverlayLayout.i.animate().translationY(-this.f323f.i.getHeight()).setListener(this.f323f.G);
    }
}
