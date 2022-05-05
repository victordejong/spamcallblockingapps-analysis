package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.p060a.C2925a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior.class */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    private int f17912a = 0;

    /* renamed from: b */
    private int f17913b = 2;

    /* renamed from: c */
    private ViewPropertyAnimator f17914c;

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m1444a(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f17914c = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new C2950a(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo1407a(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f17914c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f17913b = 2;
        m1444a((HideBottomViewOnScrollBehavior<V>) v, 0, 225L, C2925a.f17813d);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo1445a(V v, int i) {
        if (this.f17913b != 1 && i > 0) {
            mo1406b(v);
        } else if (this.f17913b != 2 && i < 0) {
            mo1407a((HideBottomViewOnScrollBehavior<V>) v);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo1446a(int i) {
        return i == 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo767a(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f17912a = v.getMeasuredHeight();
        return super.mo767a(coordinatorLayout, (CoordinatorLayout) v, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void mo1406b(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f17914c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f17913b = 1;
        m1444a((HideBottomViewOnScrollBehavior<V>) v, this.f17912a, 175L, C2925a.f17812c);
    }
}
