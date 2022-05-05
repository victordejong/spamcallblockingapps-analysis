package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.widget.TextView;
/* renamed from: com.google.android.material.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/q.class */
final class C3051q implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ TextView f18491a;

    /* renamed from: b */
    final /* synthetic */ C3050p f18492b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3051q(C3050p pVar, TextView textView) {
        this.f18492b = pVar;
        this.f18491a = textView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f18491a.setScaleX(floatValue);
        this.f18491a.setScaleY(floatValue);
    }
}
