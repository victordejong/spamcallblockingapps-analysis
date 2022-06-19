package androidx.appcompat.view.menu;

import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$e.class */
class j$e implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    private final MenuItem.OnMenuItemClickListener f293a;

    /* renamed from: b */
    final /* synthetic */ j f294b;

    j$e(j jVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f294b = jVar;
        this.f293a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f293a.onMenuItemClick(this.f294b.m6789c(menuItem));
    }
}
