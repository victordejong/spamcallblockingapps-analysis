package p193e.p194a.p682e.p683a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import s1.z.c.l;
/* renamed from: e.a.e.a.e3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/e3.class */
public final class C12719e3 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ DialogC12704d3 f37080a;

    public C12719e3(DialogC12704d3 dialogC12704d3) {
        this.f37080a = dialogC12704d3;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        l.e(animator, "animation");
        C12719e3.super.dismiss();
    }
}
