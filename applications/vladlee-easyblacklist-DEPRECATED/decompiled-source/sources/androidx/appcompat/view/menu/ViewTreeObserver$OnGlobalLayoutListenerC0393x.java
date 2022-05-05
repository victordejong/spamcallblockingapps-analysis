package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.menu.x */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/x.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC0393x implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ View$OnKeyListenerC0392w f1756a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnGlobalLayoutListenerC0393x(View$OnKeyListenerC0392w wVar) {
        this.f1756a = wVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (this.f1756a.mo9375e() && !this.f1756a.f1736a.m9368k()) {
            View view = this.f1756a.f1738c;
            if (view == null || !view.isShown()) {
                this.f1756a.mo9377d();
            } else {
                this.f1756a.f1736a.mo9372f_();
            }
        }
    }
}
