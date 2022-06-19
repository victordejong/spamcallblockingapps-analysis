package p193e.p194a.p804h.p806b;

import android.view.MenuItem;
import android.view.View;
import p193e.p194a.p847h3.p848b.AbstractC14900a;
import s1.z.c.l;
/* renamed from: e.a.h.b.a$i */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/a$i.class */
public final class a$i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MenuItem f41860a;

    /* renamed from: b */
    public final /* synthetic */ a f41861b;

    public a$i(MenuItem menuItem, a aVar) {
        this.f41860a = menuItem;
        this.f41861b = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        a aVar = this.f41861b;
        MenuItem menuItem = this.f41860a;
        l.d(menuItem, "item");
        View actionView = menuItem.getActionView();
        l.d(actionView, "item.actionView");
        aVar.vt((AbstractC14900a) null, actionView);
    }
}
