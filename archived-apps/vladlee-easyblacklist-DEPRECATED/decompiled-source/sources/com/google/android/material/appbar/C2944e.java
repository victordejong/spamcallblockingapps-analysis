package com.google.android.material.appbar;

import android.animation.ValueAnimator;
/* renamed from: com.google.android.material.appbar.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/e.class */
final class C2944e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ CollapsingToolbarLayout f17905a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2944e(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f17905a = collapsingToolbarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f17905a.m1489a(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
