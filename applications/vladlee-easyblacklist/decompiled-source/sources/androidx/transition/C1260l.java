package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.transition.l */
/* loaded from: classes-dex2jar.jar:androidx/transition/l.class */
final class C1260l extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ View f5318a;

    /* renamed from: b */
    final /* synthetic */ ChangeClipBounds f5319b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1260l(ChangeClipBounds changeClipBounds, View view) {
        this.f5319b = changeClipBounds;
        this.f5318a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C0741t.m8352a(this.f5318a, (Rect) null);
    }
}
