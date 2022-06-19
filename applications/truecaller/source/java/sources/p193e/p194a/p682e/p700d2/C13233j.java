package p193e.p194a.p682e.p700d2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* renamed from: e.a.e.d2.j */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/j.class */
public class C13233j extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C13235l f38456a;

    public C13233j(C13235l c13235l) {
        this.f38456a = c13235l;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C13235l c13235l = this.f38456a;
        c13235l.f38464g = c13235l.f38461d;
        c13235l.invalidateSelf();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Drawable[] drawableArr;
        C13235l c13235l = this.f38456a;
        c13235l.f38464g = c13235l.f38463f;
        for (Drawable drawable : c13235l.f38461d) {
            C13235l c13235l2 = this.f38456a;
            int i = c13235l2.f38458a;
            drawable.copyBounds(c13235l2.f38466i);
            Rect rect = c13235l2.f38466i;
            rect.offsetTo(rect.left, i);
            drawable.setBounds(c13235l2.f38466i);
        }
    }
}
