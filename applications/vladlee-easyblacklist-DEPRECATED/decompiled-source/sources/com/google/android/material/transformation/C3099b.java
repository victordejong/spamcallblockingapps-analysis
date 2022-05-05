package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.transformation.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/b.class */
public final class C3099b extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ExpandableTransformationBehavior f18736a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3099b(ExpandableTransformationBehavior expandableTransformationBehavior) {
        this.f18736a = expandableTransformationBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f18736a.f18722a = null;
    }
}
