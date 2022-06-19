package p193e.p194a.p682e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.truecaller.p183ui.CallMeBackActivity;
/* renamed from: e.a.e.q0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/q0.class */
public class C13304q0 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ CallMeBackActivity f38669a;

    public C13304q0(CallMeBackActivity callMeBackActivity) {
        this.f38669a = callMeBackActivity;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.truecaller.ui.CallMeBackActivity, android.app.Activity] */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C13304q0.super.finish();
        this.f38669a.overridePendingTransition(0, 0);
    }
}
