package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.t */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/t.class */
public final class C0910t extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ViewGroup f3834a;

    /* renamed from: b */
    final /* synthetic */ View f3835b;

    /* renamed from: c */
    final /* synthetic */ Fragment f3836c;

    /* renamed from: d */
    final /* synthetic */ LayoutInflater$Factory2C0898n f3837d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0910t(LayoutInflater$Factory2C0898n nVar, ViewGroup viewGroup, View view, Fragment fragment) {
        this.f3837d = nVar;
        this.f3834a = viewGroup;
        this.f3835b = view;
        this.f3836c = fragment;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f3834a.endViewTransition(this.f3835b);
        animator.removeListener(this);
        if (this.f3836c.f3560O != null && this.f3836c.f3553H) {
            this.f3836c.f3560O.setVisibility(8);
        }
    }
}
