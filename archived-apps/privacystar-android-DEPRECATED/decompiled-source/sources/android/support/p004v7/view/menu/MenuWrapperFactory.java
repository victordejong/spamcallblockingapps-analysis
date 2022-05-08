package android.support.p004v7.view.menu;

import android.content.Context;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.p001v4.internal.view.SupportMenu;
import android.support.p001v4.internal.view.SupportMenuItem;
import android.support.p001v4.internal.view.SupportSubMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.MenuWrapperFactory */
/* loaded from: classes-dex2jar.jar:android/support/v7/view/menu/MenuWrapperFactory.class */
public final class MenuWrapperFactory {
    private MenuWrapperFactory() {
    }

    public static Menu wrapSupportMenu(Context context, SupportMenu supportMenu) {
        return new MenuWrapperICS(context, supportMenu);
    }

    public static MenuItem wrapSupportMenuItem(Context context, SupportMenuItem supportMenuItem) {
        return Build.VERSION.SDK_INT >= 16 ? new MenuItemWrapperJB(context, supportMenuItem) : new MenuItemWrapperICS(context, supportMenuItem);
    }

    public static SubMenu wrapSupportSubMenu(Context context, SupportSubMenu supportSubMenu) {
        return new SubMenuWrapperICS(context, supportSubMenu);
    }
}
