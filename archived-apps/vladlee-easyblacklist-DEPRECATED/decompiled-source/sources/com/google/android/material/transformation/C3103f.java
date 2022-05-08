package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.circularreveal.AbstractC2987d;
/* renamed from: com.google.android.material.transformation.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/f.class */
final class C3103f extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ AbstractC2987d f18746a;

    /* renamed from: b */
    final /* synthetic */ FabTransformationBehavior f18747b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3103f(FabTransformationBehavior fabTransformationBehavior, AbstractC2987d dVar) {
        this.f18747b = fabTransformationBehavior;
        this.f18746a = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        AbstractC2987d.C2991d l_ = this.f18746a.mo1201l_();
        l_.f18192c = Float.MAX_VALUE;
        this.f18746a.mo1205a(l_);
    }
}
