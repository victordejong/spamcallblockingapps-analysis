package com.google.android.material.transformation;

import android.animation.ValueAnimator;
import android.view.View;
/* renamed from: com.google.android.material.transformation.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/d.class */
final class C3101d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ View f18741a;

    /* renamed from: b */
    final /* synthetic */ FabTransformationBehavior f18742b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3101d(FabTransformationBehavior fabTransformationBehavior, View view) {
        this.f18742b = fabTransformationBehavior;
        this.f18741a = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f18741a.invalidate();
    }
}
