package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
/* renamed from: com.google.android.material.bottomnavigation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/a.class */
public final class C2961a extends C0371k {
    public C2961a(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: a */
    public final MenuItem mo1361a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 <= 5) {
            m9599h();
            MenuItem a = super.mo1361a(i, i2, i3, charSequence);
            if (a instanceof C0375m) {
                ((C0375m) a).m9582a(true);
            }
            m9598i();
            return a;
        }
        throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.C0371k, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
