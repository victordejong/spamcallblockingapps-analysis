package com.google.android.material.p062c;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: com.google.android.material.c.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/c/c.class */
public final class C2973c {

    /* renamed from: a */
    private final View f18073a;

    /* renamed from: b */
    private boolean f18074b = false;

    /* renamed from: c */
    private int f18075c = 0;

    public C2973c(AbstractC2972b bVar) {
        this.f18073a = (View) bVar;
    }

    /* renamed from: a */
    public final void m1320a(Bundle bundle) {
        this.f18074b = bundle.getBoolean("expanded", false);
        this.f18075c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f18074b) {
            ViewParent parent = this.f18073a.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).m8814a(this.f18073a);
            }
        }
    }

    /* renamed from: a */
    public final boolean m1321a() {
        return this.f18074b;
    }

    /* renamed from: b */
    public final Bundle m1319b() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f18074b);
        bundle.putInt("expandedComponentIdHint", this.f18075c);
        return bundle;
    }

    /* renamed from: c */
    public final int m1318c() {
        return this.f18075c;
    }
}
