package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import f.e.g;
import f.h.f.a.b;
import f.h.f.a.c;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
abstract class AbstractC0076c {

    /* renamed from: a */
    final Context f271a;

    /* renamed from: b */
    private g<b, MenuItem> f272b;

    /* renamed from: c */
    private g<c, SubMenu> f273c;

    AbstractC0076c(Context context) {
        this.f271a = context;
    }

    /* renamed from: c */
    public final MenuItem m6789c(MenuItem menuItem) {
        MenuItem menuItem2 = menuItem;
        if (menuItem instanceof b) {
            b bVar = (b) menuItem;
            if (this.f272b == null) {
                this.f272b = new g<>();
            }
            MenuItem menuItem3 = (MenuItem) this.f272b.get(menuItem);
            menuItem2 = menuItem3;
            if (menuItem3 == null) {
                menuItem2 = new j(this.f271a, bVar);
                this.f272b.put(bVar, menuItem2);
            }
        }
        return menuItem2;
    }

    /* renamed from: d */
    final SubMenu m6788d(SubMenu subMenu) {
        if (subMenu instanceof c) {
            c cVar = (c) subMenu;
            if (this.f273c == null) {
                this.f273c = new g<>();
            }
            s sVar = (SubMenu) this.f273c.get(cVar);
            s sVar2 = sVar;
            if (sVar == null) {
                sVar2 = new s(this.f271a, cVar);
                this.f273c.put(cVar, sVar2);
            }
            return sVar2;
        }
        return subMenu;
    }

    /* renamed from: e */
    final void m6787e() {
        g<b, MenuItem> gVar = this.f272b;
        if (gVar != null) {
            gVar.clear();
        }
        g<c, SubMenu> gVar2 = this.f273c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    /* renamed from: f */
    final void m6786f(int i) {
        if (this.f272b == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f272b.size()) {
                return;
            }
            int i4 = i3;
            if (((b) this.f272b.j(i3)).getGroupId() == i) {
                this.f272b.l(i3);
                i4 = i3 - 1;
            }
            i2 = i4 + 1;
        }
    }

    /* renamed from: g */
    final void m6785g(int i) {
        if (this.f272b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f272b.size(); i2++) {
            if (((b) this.f272b.j(i2)).getItemId() == i) {
                this.f272b.l(i2);
                return;
            }
        }
    }
}
