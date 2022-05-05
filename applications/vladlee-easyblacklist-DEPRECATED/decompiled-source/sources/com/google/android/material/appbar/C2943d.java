package com.google.android.material.appbar;

import android.view.View;
import androidx.core.p036f.C0681c;
import androidx.core.p037g.AbstractC0737p;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
/* renamed from: com.google.android.material.appbar.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/d.class */
final class C2943d implements AbstractC0737p {

    /* renamed from: a */
    final /* synthetic */ CollapsingToolbarLayout f17904a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2943d(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f17904a = collapsingToolbarLayout;
    }

    @Override // androidx.core.p037g.AbstractC0737p
    /* renamed from: a */
    public final C0719ag mo971a(View view, C0719ag agVar) {
        CollapsingToolbarLayout collapsingToolbarLayout = this.f17904a;
        C0719ag agVar2 = C0741t.m8311t(collapsingToolbarLayout) ? agVar : null;
        if (!C0681c.m8554a(collapsingToolbarLayout.f17860d, agVar2)) {
            collapsingToolbarLayout.f17860d = agVar2;
            collapsingToolbarLayout.requestLayout();
        }
        return agVar.m8429g();
    }
}
