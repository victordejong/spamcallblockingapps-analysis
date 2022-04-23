package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.transition.j */
/* loaded from: classes-dex2jar.jar:androidx/transition/j.class */
final class C1258j extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ View f5307a;

    /* renamed from: b */
    final /* synthetic */ Rect f5308b;

    /* renamed from: c */
    final /* synthetic */ int f5309c;

    /* renamed from: d */
    final /* synthetic */ int f5310d;

    /* renamed from: e */
    final /* synthetic */ int f5311e;

    /* renamed from: f */
    final /* synthetic */ int f5312f;

    /* renamed from: g */
    final /* synthetic */ ChangeBounds f5313g;

    /* renamed from: h */
    private boolean f5314h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1258j(ChangeBounds changeBounds, View view, Rect rect, int i, int i2, int i3, int i4) {
        this.f5313g = changeBounds;
        this.f5307a = view;
        this.f5308b = rect;
        this.f5309c = i;
        this.f5310d = i2;
        this.f5311e = i3;
        this.f5312f = i4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f5314h = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f5314h) {
            C0741t.m8352a(this.f5307a, this.f5308b);
            C1239bs.m6521a(this.f5307a, this.f5309c, this.f5310d, this.f5311e, this.f5312f);
        }
    }
}
