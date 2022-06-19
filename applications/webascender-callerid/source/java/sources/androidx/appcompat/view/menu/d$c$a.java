package androidx.appcompat.view.menu;

import android.view.MenuItem;
import androidx.appcompat.view.menu.d;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$c$a.class */
class d$c$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ d$d f276f;

    /* renamed from: g */
    final /* synthetic */ MenuItem f277g;

    /* renamed from: h */
    final /* synthetic */ g f278h;

    /* renamed from: i */
    final /* synthetic */ d.c f279i;

    d$c$a(d.c cVar, d$d d_d, MenuItem menuItem, g gVar) {
        this.f279i = cVar;
        this.f276f = d_d;
        this.f277g = menuItem;
        this.f278h = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        d$d d_d = this.f276f;
        if (d_d != null) {
            this.f279i.f.F = true;
            d_d.f281b.e(false);
            this.f279i.f.F = false;
        }
        if (!this.f277g.isEnabled() || !this.f277g.hasSubMenu()) {
            return;
        }
        this.f278h.L(this.f277g, 4);
    }
}
