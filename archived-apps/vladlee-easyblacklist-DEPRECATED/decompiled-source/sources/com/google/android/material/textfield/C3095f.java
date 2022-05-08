package com.google.android.material.textfield;

import android.animation.ValueAnimator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.textfield.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/f.class */
public final class C3095f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ TextInputLayout f18720a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3095f(TextInputLayout textInputLayout) {
        this.f18720a = textInputLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f18720a.f18664c.m1038b(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
