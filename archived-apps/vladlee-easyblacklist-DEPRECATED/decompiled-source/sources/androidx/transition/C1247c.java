package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.transition.c */
/* loaded from: classes-dex2jar.jar:androidx/transition/c.class */
final class C1247c extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ViewGroup f5297a;

    /* renamed from: b */
    final /* synthetic */ BitmapDrawable f5298b;

    /* renamed from: c */
    final /* synthetic */ View f5299c;

    /* renamed from: d */
    final /* synthetic */ float f5300d;

    /* renamed from: e */
    final /* synthetic */ ChangeBounds f5301e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1247c(ChangeBounds changeBounds, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f) {
        this.f5301e = changeBounds;
        this.f5297a = viewGroup;
        this.f5298b = bitmapDrawable;
        this.f5299c = view;
        this.f5300d = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C1239bs.m6524a(this.f5297a).mo6525b(this.f5298b);
        C1239bs.m6523a(this.f5299c, this.f5300d);
    }
}
