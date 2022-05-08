package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.s */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/s.class */
public final class C0909s extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ViewGroup f3830a;

    /* renamed from: b */
    final /* synthetic */ View f3831b;

    /* renamed from: c */
    final /* synthetic */ Fragment f3832c;

    /* renamed from: d */
    final /* synthetic */ LayoutInflater$Factory2C0898n f3833d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0909s(LayoutInflater$Factory2C0898n nVar, ViewGroup viewGroup, View view, Fragment fragment) {
        this.f3833d = nVar;
        this.f3830a = viewGroup;
        this.f3831b = view;
        this.f3832c = fragment;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f3830a.endViewTransition(this.f3831b);
        Animator t = this.f3832c.m7868t();
        this.f3832c.m7907a((Animator) null);
        if (t != null && this.f3830a.indexOfChild(this.f3831b) < 0) {
            LayoutInflater$Factory2C0898n nVar = this.f3833d;
            Fragment fragment = this.f3832c;
            nVar.m7712a(fragment, fragment.m7867u(), 0, 0, false);
        }
    }
}
