package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0265f0;
import androidx.fragment.app.c;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$c.class */
class c$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ViewGroup f1455a;

    /* renamed from: b */
    final /* synthetic */ View f1456b;

    /* renamed from: c */
    final /* synthetic */ boolean f1457c;

    /* renamed from: d */
    final /* synthetic */ AbstractC0265f0.C0269e f1458d;

    /* renamed from: e */
    final /* synthetic */ c.k f1459e;

    c$c(c cVar, ViewGroup viewGroup, View view, boolean z, AbstractC0265f0.C0269e c0269e, c.k kVar) {
        this.f1455a = viewGroup;
        this.f1456b = view;
        this.f1457c = z;
        this.f1458d = c0269e;
        this.f1459e = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1455a.endViewTransition(this.f1456b);
        if (this.f1457c) {
            this.f1458d.m5790e().applyState(this.f1456b);
        }
        this.f1459e.m5821a();
    }
}
