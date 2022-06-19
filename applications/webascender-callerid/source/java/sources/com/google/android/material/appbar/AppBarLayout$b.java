package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import g.f.a.e.c0.g;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
class AppBarLayout$b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ g f4649a;

    AppBarLayout$b(AppBarLayout appBarLayout, g gVar) {
        this.f4649a = gVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f4649a.W(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
