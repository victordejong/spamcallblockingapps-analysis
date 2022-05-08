package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.appbar.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/b.class */
public final class C2941b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ CoordinatorLayout f17901a;

    /* renamed from: b */
    final /* synthetic */ AppBarLayout f17902b;

    /* renamed from: c */
    final /* synthetic */ AppBarLayout.BaseBehavior f17903c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2941b(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.f17903c = baseBehavior;
        this.f17901a = coordinatorLayout;
        this.f17902b = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f17903c.m1473a_(this.f17901a, this.f17902b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
