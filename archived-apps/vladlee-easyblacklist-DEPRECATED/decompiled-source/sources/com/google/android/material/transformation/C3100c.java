package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: com.google.android.material.transformation.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/c.class */
final class C3100c extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ boolean f18737a;

    /* renamed from: b */
    final /* synthetic */ View f18738b;

    /* renamed from: c */
    final /* synthetic */ View f18739c;

    /* renamed from: d */
    final /* synthetic */ FabTransformationBehavior f18740d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3100c(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
        this.f18740d = fabTransformationBehavior;
        this.f18737a = z;
        this.f18738b = view;
        this.f18739c = view2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f18737a) {
            this.f18738b.setVisibility(4);
            this.f18739c.setAlpha(1.0f);
            this.f18739c.setVisibility(0);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        if (this.f18737a) {
            this.f18738b.setVisibility(0);
            this.f18739c.setAlpha(0.0f);
            this.f18739c.setVisibility(4);
        }
    }
}
