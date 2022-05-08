package com.google.android.material.snackbar;

import android.animation.ValueAnimator;
import androidx.core.p037g.C0741t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/c.class */
public final class C3063c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ BaseTransientBottomBar f18527a;

    /* renamed from: b */
    private int f18528b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3063c(BaseTransientBottomBar baseTransientBottomBar) {
        this.f18527a = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        boolean z;
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        z = BaseTransientBottomBar.f18505d;
        if (z) {
            C0741t.m8332c(this.f18527a.f18507b, intValue - this.f18528b);
        } else {
            this.f18527a.f18507b.setTranslationY(intValue);
        }
        this.f18528b = intValue;
    }
}
