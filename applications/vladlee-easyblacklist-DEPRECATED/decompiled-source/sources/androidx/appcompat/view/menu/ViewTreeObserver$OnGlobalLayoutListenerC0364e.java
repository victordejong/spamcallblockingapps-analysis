package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.appcompat.view.menu.View$OnKeyListenerC0362d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.menu.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC0364e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ View$OnKeyListenerC0362d f1621a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnGlobalLayoutListenerC0364e(View$OnKeyListenerC0362d dVar) {
        this.f1621a = dVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (this.f1621a.mo9375e() && this.f1621a.f1594b.size() > 0 && !this.f1621a.f1594b.get(0).f1618a.m9368k()) {
            View view = this.f1621a.f1596d;
            if (view == null || !view.isShown()) {
                this.f1621a.mo9377d();
                return;
            }
            for (View$OnKeyListenerC0362d.C0363a aVar : this.f1621a.f1594b) {
                aVar.f1618a.mo9372f_();
            }
        }
    }
}
