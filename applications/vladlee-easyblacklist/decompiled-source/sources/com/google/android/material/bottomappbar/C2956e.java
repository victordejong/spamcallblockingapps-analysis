package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.bottomappbar.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/e.class */
public final class C2956e extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ BottomAppBar f17953a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2956e(BottomAppBar bottomAppBar) {
        this.f17953a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        boolean z;
        int i;
        boolean z2;
        BottomAppBar bottomAppBar = this.f17953a;
        z = bottomAppBar.f17941n;
        BottomAppBar.m1424a(bottomAppBar, z);
        BottomAppBar bottomAppBar2 = this.f17953a;
        i = bottomAppBar2.f17939l;
        z2 = this.f17953a.f17941n;
        BottomAppBar.m1427a(bottomAppBar2, i, z2);
    }
}
