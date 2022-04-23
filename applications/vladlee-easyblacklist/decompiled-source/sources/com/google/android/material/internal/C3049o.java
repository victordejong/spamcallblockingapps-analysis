package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/o.class */
public final class C3049o extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ C3047n f18490a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3049o(C3047n nVar) {
        this.f18490a = nVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f18490a.f18484a == animator) {
            this.f18490a.f18484a = null;
        }
    }
}
