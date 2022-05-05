package com.google.android.material.snackbar;

import android.animation.ValueAnimator;
import androidx.core.p037g.C0741t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.i */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/i.class */
public final class C3069i implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ int f18534a;

    /* renamed from: b */
    final /* synthetic */ BaseTransientBottomBar f18535b;

    /* renamed from: c */
    private int f18536c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3069i(BaseTransientBottomBar baseTransientBottomBar, int i) {
        this.f18535b = baseTransientBottomBar;
        this.f18534a = i;
        this.f18536c = this.f18534a;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        boolean z;
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        z = BaseTransientBottomBar.f18505d;
        if (z) {
            C0741t.m8332c(this.f18535b.f18507b, intValue - this.f18536c);
        } else {
            this.f18535b.f18507b.setTranslationY(intValue);
        }
        this.f18536c = intValue;
    }
}
