package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q$b.class */
class q$b implements View.OnAttachStateChangeListener {

    /* renamed from: f */
    final /* synthetic */ q f309f;

    q$b(q qVar) {
        this.f309f = qVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f309f.u;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f309f.u = view.getViewTreeObserver();
            }
            q qVar = this.f309f;
            qVar.u.removeGlobalOnLayoutListener(qVar.o);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
