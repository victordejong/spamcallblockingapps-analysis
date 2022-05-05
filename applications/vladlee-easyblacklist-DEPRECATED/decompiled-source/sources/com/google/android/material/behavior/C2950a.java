package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.behavior.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/a.class */
public final class C2950a extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ HideBottomViewOnScrollBehavior f17928a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2950a(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior) {
        this.f17928a = hideBottomViewOnScrollBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f17928a.f17914c = null;
    }
}
