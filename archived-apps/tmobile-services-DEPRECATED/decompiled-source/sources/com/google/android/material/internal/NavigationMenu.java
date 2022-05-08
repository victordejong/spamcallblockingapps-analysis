package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenu.class */
public class NavigationMenu extends MenuBuilder {
    public NavigationMenu(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    @NonNull
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) mo10471a(i, i2, i3, charSequence);
        NavigationSubMenu navigationSubMenu = new NavigationSubMenu(m21850w(), this, menuItemImpl);
        menuItemImpl.m21821x(navigationSubMenu);
        return navigationSubMenu;
    }
}
