package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j$c.class */
class j$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    private boolean f2116a = false;

    /* renamed from: b */
    final /* synthetic */ j f2117b;

    j$c(j jVar) {
        this.f2117b = jVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2116a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f2116a) {
            this.f2116a = false;
        } else if (((Float) this.f2117b.z.getAnimatedValue()).floatValue() == 0.0f) {
            j jVar = this.f2117b;
            jVar.A = 0;
            jVar.s(0);
        } else {
            j jVar2 = this.f2117b;
            jVar2.A = 2;
            jVar2.p();
        }
    }
}
