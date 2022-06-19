package p193e.p194a.p804h.p806b;

import android.view.MenuItem;
import android.view.View;
import p193e.p194a.p847h3.p848b.AbstractC14900a;
import s1.z.c.l;
/* renamed from: e.a.h.b.j$g */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/j$g.class */
public final class j$g implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ j f41953a;

    /* renamed from: b */
    public final /* synthetic */ MenuItem f41954b;

    public j$g(j jVar, MenuItem menuItem) {
        this.f41953a = jVar;
        this.f41954b = menuItem;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        j jVar = this.f41953a;
        v vVar = jVar.b;
        if (vVar == null) {
            l.l("dialerView");
            throw null;
        }
        AbstractC14900a abstractC14900a = jVar.h;
        if (abstractC14900a == null) {
            l.l("clipboardDataManager");
            throw null;
        }
        MenuItem menuItem = this.f41954b;
        l.d(menuItem, "item");
        View actionView = menuItem.getActionView();
        l.d(actionView, "item.actionView");
        vVar.vt(abstractC14900a, actionView);
    }
}
