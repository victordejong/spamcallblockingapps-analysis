package androidx.appcompat.view.menu;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public final class View$OnAttachStateChangeListenerC0365f implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    final /* synthetic */ View$OnKeyListenerC0362d f1622a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnAttachStateChangeListenerC0365f(View$OnKeyListenerC0362d dVar) {
        this.f1622a = dVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        if (this.f1622a.f1597e != null) {
            if (!this.f1622a.f1597e.isAlive()) {
                this.f1622a.f1597e = view.getViewTreeObserver();
            }
            this.f1622a.f1597e.removeGlobalOnLayoutListener(this.f1622a.f1595c);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
