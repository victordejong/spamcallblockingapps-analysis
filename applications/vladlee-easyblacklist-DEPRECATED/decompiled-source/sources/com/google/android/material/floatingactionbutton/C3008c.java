package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.C3001b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/c.class */
public final class C3008c extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ boolean f18286a = false;

    /* renamed from: b */
    final /* synthetic */ C3001b.AbstractC3005d f18287b;

    /* renamed from: c */
    final /* synthetic */ C3001b f18288c;

    /* renamed from: d */
    private boolean f18289d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3008c(C3001b bVar, C3001b.AbstractC3005d dVar) {
        this.f18288c = bVar;
        this.f18287b = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f18289d = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C3001b bVar = this.f18288c;
        bVar.f18259b = 0;
        bVar.f18260c = null;
        if (!this.f18289d) {
            bVar.f18273v.m1062a(this.f18286a ? 8 : 4, this.f18286a);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f18288c.f18273v.m1062a(0, this.f18286a);
        C3001b bVar = this.f18288c;
        bVar.f18259b = 1;
        bVar.f18260c = animator;
        this.f18289d = false;
    }
}
