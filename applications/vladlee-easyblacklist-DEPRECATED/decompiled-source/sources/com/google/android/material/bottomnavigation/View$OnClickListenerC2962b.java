package com.google.android.material.bottomnavigation;

import android.view.View;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.bottomnavigation.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/b.class */
public final class View$OnClickListenerC2962b implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ BottomNavigationMenuView f18010a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC2962b(BottomNavigationMenuView bottomNavigationMenuView) {
        this.f18010a = bottomNavigationMenuView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0371k kVar;
        BottomNavigationPresenter bottomNavigationPresenter;
        C0375m a = ((BottomNavigationItemView) view).mo1073a();
        kVar = this.f18010a.f17997z;
        bottomNavigationPresenter = this.f18010a.f17996y;
        if (!kVar.m9616a(a, bottomNavigationPresenter, 0)) {
            a.setChecked(true);
        }
    }
}
