package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import p012b.p035f.C0793g;
import p012b.p042i.p048k.p049a.AbstractMenuItemC0914b;
import p012b.p042i.p048k.p049a.AbstractSubMenuC0915c;
/* renamed from: b.b.p.j.c */
/* loaded from: classes-dex2jar.jar:b/b/p/j/c.class */
public abstract class AbstractC0637c {

    /* renamed from: a */
    public final Context f3171a;

    /* renamed from: b */
    public C0793g<AbstractMenuItemC0914b, MenuItem> f3172b;

    /* renamed from: c */
    public C0793g<AbstractSubMenuC0915c, SubMenu> f3173c;

    public AbstractC0637c(Context context) {
        this.f3171a = context;
    }

    /* renamed from: a */
    public final MenuItem m36642a(MenuItem menuItem) {
        MenuItem menuItem2 = menuItem;
        if (menuItem instanceof AbstractMenuItemC0914b) {
            AbstractMenuItemC0914b bVar = (AbstractMenuItemC0914b) menuItem;
            if (this.f3172b == null) {
                this.f3172b = new C0793g<>();
            }
            MenuItem menuItem3 = this.f3172b.get(menuItem);
            menuItem2 = menuItem3;
            if (menuItem3 == null) {
                menuItem2 = new MenuItemC0653j(this.f3171a, bVar);
                this.f3172b.put(bVar, menuItem2);
            }
        }
        return menuItem2;
    }

    /* renamed from: a */
    public final SubMenu m36641a(SubMenu subMenu) {
        if (!(subMenu instanceof AbstractSubMenuC0915c)) {
            return subMenu;
        }
        AbstractSubMenuC0915c cVar = (AbstractSubMenuC0915c) subMenu;
        if (this.f3173c == null) {
            this.f3173c = new C0793g<>();
        }
        SubMenu subMenu2 = this.f3173c.get(cVar);
        SubMenu subMenu3 = subMenu2;
        if (subMenu2 == null) {
            subMenu3 = new SubMenuC0672s(this.f3171a, cVar);
            this.f3173c.put(cVar, subMenu3);
        }
        return subMenu3;
    }

    /* renamed from: a */
    public final void m36643a(int i) {
        if (this.f3172b != null) {
            int i2 = 0;
            while (i2 < this.f3172b.size()) {
                int i3 = i2;
                if (this.f3172b.m36013c(i2).getGroupId() == i) {
                    this.f3172b.m36012d(i2);
                    i3 = i2 - 1;
                }
                i2 = i3 + 1;
            }
        }
    }

    /* renamed from: b */
    public final void m36640b() {
        C0793g<AbstractMenuItemC0914b, MenuItem> gVar = this.f3172b;
        if (gVar != null) {
            gVar.clear();
        }
        C0793g<AbstractSubMenuC0915c, SubMenu> gVar2 = this.f3173c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    /* renamed from: b */
    public final void m36639b(int i) {
        if (this.f3172b != null) {
            for (int i2 = 0; i2 < this.f3172b.size(); i2++) {
                if (this.f3172b.m36013c(i2).getItemId() == i) {
                    this.f3172b.m36012d(i2);
                    return;
                }
            }
        }
    }
}
