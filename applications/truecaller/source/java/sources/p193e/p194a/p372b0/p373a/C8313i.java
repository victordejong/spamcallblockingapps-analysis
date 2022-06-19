package p193e.p194a.p372b0.p373a;

import android.animation.Animator;
import s1.z.b.a;
/* renamed from: e.a.b0.a.i */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/i.class */
public final class C8313i implements Animator.AnimatorListener {

    /* renamed from: a */
    public final /* synthetic */ a f25600a;

    public C8313i(a aVar) {
        this.f25600a = aVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f25600a.invoke();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
