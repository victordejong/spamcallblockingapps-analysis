package androidx.coordinatorlayout.widget;

import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
class CoordinatorLayout$g implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: f */
    final /* synthetic */ CoordinatorLayout f1189f;

    CoordinatorLayout$g(CoordinatorLayout coordinatorLayout) {
        this.f1189f = coordinatorLayout;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f1189f.H(0);
        return true;
    }
}
