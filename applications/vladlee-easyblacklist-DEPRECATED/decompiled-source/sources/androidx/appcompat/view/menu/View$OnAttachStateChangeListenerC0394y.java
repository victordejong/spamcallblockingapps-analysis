package androidx.appcompat.view.menu;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.menu.y */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/y.class */
public final class View$OnAttachStateChangeListenerC0394y implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    final /* synthetic */ View$OnKeyListenerC0392w f1757a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnAttachStateChangeListenerC0394y(View$OnKeyListenerC0392w wVar) {
        this.f1757a = wVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        if (this.f1757a.f1739d != null) {
            if (!this.f1757a.f1739d.isAlive()) {
                this.f1757a.f1739d = view.getViewTreeObserver();
            }
            this.f1757a.f1739d.removeGlobalOnLayoutListener(this.f1757a.f1737b);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
