package com.google.android.material.snackbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.h */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/h.class */
public final class C3068h extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ BaseTransientBottomBar f18533a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3068h(BaseTransientBottomBar baseTransientBottomBar) {
        this.f18533a = baseTransientBottomBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f18533a.m943c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        AbstractC3071k kVar;
        kVar = this.f18533a.f18510g;
        kVar.mo922a();
    }
}
