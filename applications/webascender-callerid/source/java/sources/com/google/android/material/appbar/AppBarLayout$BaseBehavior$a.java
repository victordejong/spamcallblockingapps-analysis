package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
class AppBarLayout$BaseBehavior$a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ CoordinatorLayout f4646a;

    /* renamed from: b */
    final /* synthetic */ AppBarLayout f4647b;

    /* renamed from: c */
    final /* synthetic */ AppBarLayout.BaseBehavior f4648c;

    AppBarLayout$BaseBehavior$a(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.f4648c = baseBehavior;
        this.f4646a = coordinatorLayout;
        this.f4647b = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f4648c.i(this.f4646a, this.f4647b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
