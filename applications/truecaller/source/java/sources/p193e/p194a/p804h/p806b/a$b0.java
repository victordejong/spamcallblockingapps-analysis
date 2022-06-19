package p193e.p194a.p804h.p806b;

import android.view.MenuItem;
import android.widget.PopupMenu;
import s1.z.c.l;
/* renamed from: e.a.h.b.a$b0 */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/a$b0.class */
public final class a$b0 implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ a f41854a;

    public a$b0(a aVar) {
        this.f41854a = aVar;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        l.d(menuItem, "item");
        boolean z = true;
        if (menuItem.getItemId() != 2131361965) {
            z = false;
        } else {
            a.a(this.f41854a).m19865t5(true);
        }
        return z;
    }
}
