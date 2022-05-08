package com.google.android.material.internal;

import android.graphics.Rect;
import android.view.View;
import androidx.core.p037g.AbstractC0737p;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/m.class */
public final class C3046m implements AbstractC0737p {

    /* renamed from: a */
    final /* synthetic */ ScrimInsetsFrameLayout f18483a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3046m(ScrimInsetsFrameLayout scrimInsetsFrameLayout) {
        this.f18483a = scrimInsetsFrameLayout;
    }

    @Override // androidx.core.p037g.AbstractC0737p
    /* renamed from: a */
    public final C0719ag mo971a(View view, C0719ag agVar) {
        if (this.f18483a.f18387b == null) {
            this.f18483a.f18387b = new Rect();
        }
        this.f18483a.f18387b.set(agVar.m8438a(), agVar.m8434b(), agVar.m8433c(), agVar.m8432d());
        this.f18483a.mo951a(agVar);
        this.f18483a.setWillNotDraw(!agVar.m8431e() || this.f18483a.f18386a == null);
        C0741t.m8329e(this.f18483a);
        return agVar.m8429g();
    }
}
