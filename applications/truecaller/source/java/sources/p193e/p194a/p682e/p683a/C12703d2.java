package p193e.p194a.p682e.p683a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: e.a.e.a.d2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/d2.class */
public class C12703d2 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ DialogC12717e2 f37029a;

    public C12703d2(DialogC12717e2 dialogC12717e2) {
        this.f37029a = dialogC12717e2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C12703d2.super.dismiss();
    }
}
