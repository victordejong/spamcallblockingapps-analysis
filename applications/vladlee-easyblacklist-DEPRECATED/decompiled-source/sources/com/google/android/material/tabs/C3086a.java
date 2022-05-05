package com.google.android.material.tabs;

import android.animation.ValueAnimator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.tabs.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/a.class */
public final class C3086a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ TabLayout f18625a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3086a(TabLayout tabLayout) {
        this.f18625a = tabLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f18625a.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }
}
