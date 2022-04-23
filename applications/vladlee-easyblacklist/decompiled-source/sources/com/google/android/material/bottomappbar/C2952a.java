package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.bottomappbar.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/a.class */
public final class C2952a extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ BottomAppBar f17945a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2952a(BottomAppBar bottomAppBar) {
        this.f17945a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f17945a.f17938k = null;
    }
}
