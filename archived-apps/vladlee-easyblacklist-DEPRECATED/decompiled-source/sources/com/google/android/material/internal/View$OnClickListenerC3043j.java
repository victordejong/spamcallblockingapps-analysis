package com.google.android.material.internal;

import android.view.View;
import androidx.appcompat.view.menu.C0375m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/j.class */
public final class View$OnClickListenerC3043j implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C3032i f18482a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3043j(C3032i iVar) {
        this.f18482a = iVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f18482a.m994b(true);
        C0375m a = ((NavigationMenuItemView) view).mo1073a();
        boolean a2 = this.f18482a.f18458b.m9616a(a, this.f18482a, 0);
        if (a != null && a.isCheckable() && a2) {
            this.f18482a.f18459c.m985a(a);
        }
        this.f18482a.m994b(false);
        this.f18482a.mo999a(false);
    }
}
