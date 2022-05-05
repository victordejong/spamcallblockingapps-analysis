package com.google.android.material.snackbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/b.class */
public final class C3062b extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ int f18525a;

    /* renamed from: b */
    final /* synthetic */ BaseTransientBottomBar f18526b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3062b(BaseTransientBottomBar baseTransientBottomBar, int i) {
        this.f18526b = baseTransientBottomBar;
        this.f18525a = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f18526b.m942d();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        AbstractC3071k kVar;
        kVar = this.f18526b.f18510g;
        kVar.mo921b();
    }
}
