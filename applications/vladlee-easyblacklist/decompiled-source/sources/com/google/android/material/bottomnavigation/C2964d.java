package com.google.android.material.bottomnavigation;

import android.view.MenuItem;
import androidx.appcompat.view.menu.C0371k;
import com.google.android.material.bottomnavigation.BottomNavigationView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.bottomnavigation.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/d.class */
public final class C2964d implements C0371k.AbstractC0372a {

    /* renamed from: a */
    final /* synthetic */ BottomNavigationView f18011a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2964d(BottomNavigationView bottomNavigationView) {
        this.f18011a = bottomNavigationView;
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
    /* renamed from: a */
    public final void mo949a(C0371k kVar) {
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
    /* renamed from: a */
    public final boolean mo948a(C0371k kVar, MenuItem menuItem) {
        BottomNavigationView.AbstractC2959a aVar;
        BottomNavigationView.AbstractC2960b bVar;
        BottomNavigationView.AbstractC2960b bVar2;
        BottomNavigationView.AbstractC2959a unused;
        aVar = this.f18011a.f18008f;
        if (aVar == null || menuItem.getItemId() != this.f18011a.m1365a()) {
            bVar = this.f18011a.f18007e;
            if (bVar == null) {
                return false;
            }
            bVar2 = this.f18011a.f18007e;
            return !bVar2.m1362a();
        }
        unused = this.f18011a.f18008f;
        return true;
    }
}
