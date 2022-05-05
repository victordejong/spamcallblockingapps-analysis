package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: com.google.android.material.transformation.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/g.class */
final class C3104g extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ boolean f18748a;

    /* renamed from: b */
    final /* synthetic */ View f18749b;

    /* renamed from: c */
    final /* synthetic */ FabTransformationScrimBehavior f18750c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3104g(FabTransformationScrimBehavior fabTransformationScrimBehavior, boolean z, View view) {
        this.f18750c = fabTransformationScrimBehavior;
        this.f18748a = z;
        this.f18749b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f18748a) {
            this.f18749b.setVisibility(4);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        if (this.f18748a) {
            this.f18749b.setVisibility(0);
        }
    }
}
