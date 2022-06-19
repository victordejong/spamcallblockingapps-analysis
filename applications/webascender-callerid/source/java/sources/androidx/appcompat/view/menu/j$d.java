package androidx.appcompat.view.menu;

import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$d.class */
class j$d implements MenuItem.OnActionExpandListener {

    /* renamed from: a */
    private final MenuItem.OnActionExpandListener f291a;

    /* renamed from: b */
    final /* synthetic */ j f292b;

    j$d(j jVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f292b = jVar;
        this.f291a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f291a.onMenuItemActionCollapse(this.f292b.m6789c(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f291a.onMenuItemActionExpand(this.f292b.m6789c(menuItem));
    }
}
