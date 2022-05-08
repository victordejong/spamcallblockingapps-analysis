package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.view.View;
import androidx.transition.C1200al;
import androidx.transition.ChangeTransform;
/* renamed from: androidx.transition.r */
/* loaded from: classes-dex2jar.jar:androidx/transition/r.class */
final class C1266r extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ boolean f5321a;

    /* renamed from: b */
    final /* synthetic */ Matrix f5322b;

    /* renamed from: c */
    final /* synthetic */ View f5323c;

    /* renamed from: d */
    final /* synthetic */ ChangeTransform.C1176c f5324d;

    /* renamed from: e */
    final /* synthetic */ ChangeTransform.C1175b f5325e;

    /* renamed from: f */
    final /* synthetic */ ChangeTransform f5326f;

    /* renamed from: g */
    private boolean f5327g;

    /* renamed from: h */
    private Matrix f5328h = new Matrix();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1266r(ChangeTransform changeTransform, boolean z, Matrix matrix, View view, ChangeTransform.C1176c cVar, ChangeTransform.C1175b bVar) {
        this.f5326f = changeTransform;
        this.f5321a = z;
        this.f5322b = matrix;
        this.f5323c = view;
        this.f5324d = cVar;
        this.f5325e = bVar;
    }

    /* renamed from: a */
    private void m6499a(Matrix matrix) {
        this.f5328h.set(matrix);
        this.f5323c.setTag(C1200al.C1201a.f5209i, this.f5328h);
        this.f5324d.m6625a(this.f5323c);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f5327g = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f5327g) {
            if (!this.f5321a || !this.f5326f.f5077a) {
                this.f5323c.setTag(C1200al.C1201a.f5209i, null);
                this.f5323c.setTag(C1200al.C1201a.f5202b, null);
            } else {
                m6499a(this.f5322b);
            }
        }
        C1239bs.m6516c(this.f5323c, null);
        this.f5324d.m6625a(this.f5323c);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        m6499a(this.f5325e.m6629a());
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        ChangeTransform.m6633a(this.f5323c);
    }
}
