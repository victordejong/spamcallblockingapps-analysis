package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/ViewOffsetBehavior.class */
class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    private C2945f f17897a;

    /* renamed from: b */
    private int f17898b = 0;

    /* renamed from: c */
    private int f17899c = 0;

    public ViewOffsetBehavior() {
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo767a(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo1458b(coordinatorLayout, (CoordinatorLayout) v, i);
        if (this.f17897a == null) {
            this.f17897a = new C2945f(v);
        }
        this.f17897a.m1456a();
        int i2 = this.f17898b;
        if (i2 != 0) {
            this.f17897a.m1455a(i2);
            this.f17898b = 0;
        }
        int i3 = this.f17899c;
        if (i3 == 0) {
            return true;
        }
        this.f17897a.m1453b(i3);
        this.f17899c = 0;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void mo1458b(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m8804b(v, i);
    }

    /* renamed from: b */
    public boolean mo1459b(int i) {
        C2945f fVar = this.f17897a;
        if (fVar != null) {
            return fVar.m1455a(i);
        }
        this.f17898b = i;
        return false;
    }

    /* renamed from: c */
    public int mo1457c() {
        C2945f fVar = this.f17897a;
        if (fVar != null) {
            return fVar.m1454b();
        }
        return 0;
    }
}
