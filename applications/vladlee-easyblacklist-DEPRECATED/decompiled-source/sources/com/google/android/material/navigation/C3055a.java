package com.google.android.material.navigation;

import android.view.MenuItem;
import androidx.appcompat.view.menu.C0371k;
/* renamed from: com.google.android.material.navigation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/a.class */
final class C3055a implements C0371k.AbstractC0372a {

    /* renamed from: a */
    final /* synthetic */ NavigationView f18503a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3055a(NavigationView navigationView) {
        this.f18503a = navigationView;
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
    /* renamed from: a */
    public final void mo949a(C0371k kVar) {
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
    /* renamed from: a */
    public final boolean mo948a(C0371k kVar, MenuItem menuItem) {
        return this.f18503a.f18497c != null && this.f18503a.f18497c.m950a();
    }
}
