package p193e.p194a.p804h.p806b;

import android.content.Context;
import android.view.MenuItem;
import android.widget.PopupMenu;
import p193e.p194a.p804h.p806b.p818w0.C14629c;
import s1.z.c.l;
/* renamed from: e.a.h.b.a$z */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/a$z.class */
public final class a$z implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ a f41868a;

    /* renamed from: b */
    public final /* synthetic */ C14629c f41869b;

    public a$z(a aVar, Context context, String str, C14629c c14629c) {
        this.f41868a = aVar;
        this.f41869b = c14629c;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        l.d(menuItem, "item");
        int itemId = menuItem.getItemId();
        boolean z = true;
        if (itemId == 2131361949) {
            a.a(this.f41868a).m19876Oe(this.f41869b);
        } else if (itemId != 2131361977) {
            z = false;
        } else {
            a.a(this.f41868a).m19878M7(this.f41869b);
        }
        return z;
    }
}
