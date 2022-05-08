package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.expandable.ExpandableWidget;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: a */
    private int f11615a = 0;

    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: F */
    private boolean m8681F(boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        if (z) {
            int i = this.f11615a;
            if (i == 0 || i == 2) {
                z3 = true;
            }
            return z3;
        }
        if (this.f11615a == 1) {
            z2 = true;
        }
        return z2;
    }

    @Nullable
    /* renamed from: G */
    protected ExpandableWidget m8680G(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
        List<View> v = coordinatorLayout.m19914v(view);
        int size = v.size();
        for (int i = 0; i < size; i++) {
            View view2 = v.get(i);
            if (mo8651e(coordinatorLayout, view, view2)) {
                return (ExpandableWidget) view2;
            }
        }
        return null;
    }

    /* renamed from: H */
    protected abstract boolean mo8650H(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    /* renamed from: h */
    public boolean mo8679h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ExpandableWidget expandableWidget = (ExpandableWidget) view2;
        if (!m8681F(expandableWidget.mo9738c())) {
            return false;
        }
        this.f11615a = expandableWidget.mo9738c() ? 1 : 2;
        return mo8650H((View) expandableWidget, view, expandableWidget.mo9738c(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    /* renamed from: l */
    public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull final View view, int i) {
        final ExpandableWidget G;
        if (ViewCompat.m19218S(view) || (G = m8680G(coordinatorLayout, view)) == null || !m8681F(G.mo9738c())) {
            return false;
        }
        final int i2 = G.mo9738c() ? 1 : 2;
        this.f11615a = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                if (ExpandableBehavior.this.f11615a != i2) {
                    return false;
                }
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                ExpandableWidget expandableWidget = G;
                expandableBehavior.mo8650H((View) expandableWidget, view, expandableWidget.mo9738c(), false);
                return false;
            }
        });
        return false;
    }
}
