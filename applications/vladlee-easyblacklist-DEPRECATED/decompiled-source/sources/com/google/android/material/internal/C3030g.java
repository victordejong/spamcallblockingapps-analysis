package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
/* renamed from: com.google.android.material.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/g.class */
public final class C3030g extends C0371k {
    public C3030g(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.C0371k, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0375m mVar = (C0375m) mo1361a(i, i2, i3, charSequence);
        C3044k kVar = new C3044k(m9601f(), this, mVar);
        mVar.m9584a(kVar);
        return kVar;
    }
}
