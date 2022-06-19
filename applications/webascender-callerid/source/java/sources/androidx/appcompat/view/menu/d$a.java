package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$a.class */
class d$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: f */
    final /* synthetic */ d f274f;

    d$a(d dVar) {
        this.f274f = dVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f274f.a() || this.f274f.n.size() <= 0 || ((d$d) this.f274f.n.get(0)).f280a.B()) {
            return;
        }
        View view = this.f274f.u;
        if (view == null || !view.isShown()) {
            this.f274f.dismiss();
            return;
        }
        for (d$d d_d : this.f274f.n) {
            d_d.f280a.b();
        }
    }
}
