package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: com.google.android.material.circularreveal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/b.class */
final class C2984b extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ AbstractC2987d f18173a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2984b(AbstractC2987d dVar) {
        this.f18173a = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f18173a.mo1203b();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f18173a.mo1207a();
    }
}
