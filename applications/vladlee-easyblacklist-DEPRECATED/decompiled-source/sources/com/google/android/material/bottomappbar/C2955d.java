package com.google.android.material.bottomappbar;

import android.animation.ValueAnimator;
import com.google.android.material.p067h.C3017c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.bottomappbar.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/d.class */
public final class C2955d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ BottomAppBar f17952a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2955d(BottomAppBar bottomAppBar) {
        this.f17952a = bottomAppBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        C3017c cVar;
        cVar = this.f17952a.f17934g;
        cVar.m1097a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
