package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.ArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.internal.view.SupportSubMenu;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/BaseMenuWrapper.class */
public abstract class BaseMenuWrapper {
    public final Context mContext;
    public Map<SupportMenuItem, MenuItem> mMenuItems;
    public Map<SupportSubMenu, SubMenu> mSubMenus;

    public BaseMenuWrapper(Context context) {
        this.mContext = context;
    }

    public final MenuItem getMenuItemWrapper(MenuItem menuItem) {
        MenuItem menuItem2 = menuItem;
        if (menuItem instanceof SupportMenuItem) {
            SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
            if (this.mMenuItems == null) {
                this.mMenuItems = new ArrayMap();
            }
            MenuItem menuItem3 = this.mMenuItems.get(menuItem);
            menuItem2 = menuItem3;
            if (menuItem3 == null) {
                menuItem2 = new MenuItemWrapperICS(this.mContext, supportMenuItem);
                this.mMenuItems.put(supportMenuItem, menuItem2);
            }
        }
        return menuItem2;
    }

    public final SubMenu getSubMenuWrapper(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.mSubMenus == null) {
            this.mSubMenus = new ArrayMap();
        }
        SubMenu subMenu2 = this.mSubMenus.get(supportSubMenu);
        SubMenu subMenu3 = subMenu2;
        if (subMenu2 == null) {
            subMenu3 = new SubMenuWrapperICS(this.mContext, supportSubMenu);
            this.mSubMenus.put(supportSubMenu, subMenu3);
        }
        return subMenu3;
    }

    public final void internalClear() {
        Map<SupportMenuItem, MenuItem> map = this.mMenuItems;
        if (map != null) {
            map.clear();
        }
        Map<SupportSubMenu, SubMenu> map2 = this.mSubMenus;
        if (map2 != null) {
            map2.clear();
        }
    }

    public final void internalRemoveGroup(int i) {
        Map<SupportMenuItem, MenuItem> map = this.mMenuItems;
        if (map != null) {
            Iterator<SupportMenuItem> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    public final void internalRemoveItem(int i) {
        Map<SupportMenuItem, MenuItem> map = this.mMenuItems;
        if (map != null) {
            Iterator<SupportMenuItem> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getItemId()) {
                    it.remove();
                    return;
                }
            }
        }
    }
}
