package p193e.p194a.p804h.p806b;

import android.view.MenuItem;
import android.widget.PopupMenu;
import s1.z.c.l;
/* renamed from: e.a.h.b.a$a0 */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/a$a0.class */
public final class a$a0 implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ a f41851a;

    public a$a0(a aVar) {
        this.f41851a = aVar;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        boolean z;
        l.d(menuItem, "item");
        if (menuItem.getItemId() != 2131361965) {
            z = false;
        } else {
            a.a(this.f41851a).m19879M4();
            z = true;
        }
        return z;
    }
}
