package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.C3001b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d.class */
public final class C3009d extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ boolean f18290a = false;

    /* renamed from: b */
    final /* synthetic */ C3001b.AbstractC3005d f18291b;

    /* renamed from: c */
    final /* synthetic */ C3001b f18292c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3009d(C3001b bVar, C3001b.AbstractC3005d dVar) {
        this.f18292c = bVar;
        this.f18291b = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C3001b bVar = this.f18292c;
        bVar.f18259b = 0;
        bVar.f18260c = null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f18292c.f18273v.m1062a(0, this.f18290a);
        C3001b bVar = this.f18292c;
        bVar.f18259b = 2;
        bVar.f18260c = animator;
    }
}
