package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.p029a.p030a.AbstractMenuItemC0595b;
import androidx.core.p029a.p030a.AbstractSubMenuC0596c;
import androidx.p026b.C0529a;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
public abstract class AbstractC0361c {

    /* renamed from: a */
    final Context f1588a;

    /* renamed from: b */
    private Map<AbstractMenuItemC0595b, MenuItem> f1589b;

    /* renamed from: c */
    private Map<AbstractSubMenuC0596c, SubMenu> f1590c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC0361c(Context context) {
        this.f1588a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final MenuItem m9642a(MenuItem menuItem) {
        MenuItem menuItem2 = menuItem;
        if (menuItem instanceof AbstractMenuItemC0595b) {
            AbstractMenuItemC0595b bVar = (AbstractMenuItemC0595b) menuItem;
            if (this.f1589b == null) {
                this.f1589b = new C0529a();
            }
            MenuItem menuItem3 = this.f1589b.get(menuItem);
            menuItem2 = menuItem3;
            if (menuItem3 == null) {
                menuItem2 = new MenuItemC0377o(this.f1588a, bVar);
                this.f1589b.put(bVar, menuItem2);
            }
        }
        return menuItem2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final SubMenu m9641a(SubMenu subMenu) {
        if (!(subMenu instanceof AbstractSubMenuC0596c)) {
            return subMenu;
        }
        AbstractSubMenuC0596c cVar = (AbstractSubMenuC0596c) subMenu;
        if (this.f1590c == null) {
            this.f1590c = new C0529a();
        }
        SubMenu subMenu2 = this.f1590c.get(cVar);
        SubMenu subMenu3 = subMenu2;
        if (subMenu2 == null) {
            subMenu3 = new SubMenuC0359aa(this.f1588a, cVar);
            this.f1590c.put(cVar, subMenu3);
        }
        return subMenu3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9644a() {
        Map<AbstractMenuItemC0595b, MenuItem> map = this.f1589b;
        if (map != null) {
            map.clear();
        }
        Map<AbstractSubMenuC0596c, SubMenu> map2 = this.f1590c;
        if (map2 != null) {
            map2.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9643a(int i) {
        Map<AbstractMenuItemC0595b, MenuItem> map = this.f1589b;
        if (map != null) {
            Iterator<AbstractMenuItemC0595b> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m9640b(int i) {
        Map<AbstractMenuItemC0595b, MenuItem> map = this.f1589b;
        if (map != null) {
            Iterator<AbstractMenuItemC0595b> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getItemId()) {
                    it.remove();
                    return;
                }
            }
        }
    }
}
