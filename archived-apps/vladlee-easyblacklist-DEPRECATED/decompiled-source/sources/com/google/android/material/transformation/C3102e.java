package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import com.google.android.material.circularreveal.AbstractC2987d;
/* renamed from: com.google.android.material.transformation.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/e.class */
final class C3102e extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ AbstractC2987d f18743a;

    /* renamed from: b */
    final /* synthetic */ Drawable f18744b;

    /* renamed from: c */
    final /* synthetic */ FabTransformationBehavior f18745c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3102e(FabTransformationBehavior fabTransformationBehavior, AbstractC2987d dVar, Drawable drawable) {
        this.f18745c = fabTransformationBehavior;
        this.f18743a = dVar;
        this.f18744b = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f18743a.mo1206a((Drawable) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f18743a.mo1206a(this.f18744b);
    }
}
