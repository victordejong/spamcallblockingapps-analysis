package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q$a.class */
class q$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: f */
    final /* synthetic */ q f308f;

    q$a(q qVar) {
        this.f308f = qVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f308f.a() || this.f308f.n.B()) {
            return;
        }
        View view = this.f308f.s;
        if (view == null || !view.isShown()) {
            this.f308f.dismiss();
        } else {
            this.f308f.n.b();
        }
    }
}
