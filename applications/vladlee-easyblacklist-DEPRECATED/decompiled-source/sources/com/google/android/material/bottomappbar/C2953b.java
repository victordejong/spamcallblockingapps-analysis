package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.bottomappbar.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/b.class */
public final class C2953b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f17946a;

    /* renamed from: b */
    final /* synthetic */ ActionMenuView f17947b;

    /* renamed from: c */
    final /* synthetic */ int f17948c;

    /* renamed from: d */
    final /* synthetic */ boolean f17949d;

    /* renamed from: e */
    final /* synthetic */ BottomAppBar f17950e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2953b(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.f17950e = bottomAppBar;
        this.f17947b = actionMenuView;
        this.f17948c = i;
        this.f17949d = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f17946a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f17946a) {
            this.f17950e.m1429a(this.f17947b, this.f17948c, this.f17949d);
        }
    }
}
