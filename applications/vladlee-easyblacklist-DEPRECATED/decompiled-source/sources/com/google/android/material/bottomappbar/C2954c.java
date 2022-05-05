package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.bottomappbar.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/c.class */
public final class C2954c extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ BottomAppBar f17951a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2954c(BottomAppBar bottomAppBar) {
        this.f17951a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f17951a.f17936i = null;
    }
}
