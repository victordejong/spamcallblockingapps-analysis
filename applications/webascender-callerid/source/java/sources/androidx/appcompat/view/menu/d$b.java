package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$b.class */
class d$b implements View.OnAttachStateChangeListener {

    /* renamed from: f */
    final /* synthetic */ d f275f;

    d$b(d dVar) {
        this.f275f = dVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f275f.D;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f275f.D = view.getViewTreeObserver();
            }
            d dVar = this.f275f;
            dVar.D.removeGlobalOnLayoutListener(dVar.o);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
