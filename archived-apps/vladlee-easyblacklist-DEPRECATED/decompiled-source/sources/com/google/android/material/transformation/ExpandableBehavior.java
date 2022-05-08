package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p037g.C0741t;
import com.google.android.material.p062c.AbstractC2972b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: a */
    private int f18721a = 0;

    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private boolean m764a(boolean z) {
        int i = this.f18721a;
        return z ? i == 0 || i == 2 : i == 1;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public abstract boolean mo755a(View view, View view2);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract boolean mo751a(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo767a(CoordinatorLayout coordinatorLayout, View view, int i) {
        AbstractC2972b bVar;
        if (C0741t.m8373B(view)) {
            return false;
        }
        List<View> b = coordinatorLayout.m8805b(view);
        int size = b.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                bVar = null;
                break;
            }
            View view2 = b.get(i2);
            if (mo755a(view, view2)) {
                bVar = (AbstractC2972b) view2;
                break;
            }
            i2++;
        }
        if (bVar == null || !m764a(bVar.mo1156e())) {
            return false;
        }
        this.f18721a = bVar.mo1156e() ? 1 : 2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC3098a(this, view, this.f18721a, bVar));
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo766a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        AbstractC2972b bVar = (AbstractC2972b) view2;
        if (!m764a(bVar.mo1156e())) {
            return false;
        }
        this.f18721a = bVar.mo1156e() ? 1 : 2;
        return mo751a((View) bVar, view, bVar.mo1156e(), true);
    }
}
