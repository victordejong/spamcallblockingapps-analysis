package p193e.p194a.p682e.p699c2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import p193e.p194a.p1342w4.p1344s.C21231c0;
import p193e.p194a.p682e.p699c2.C13188f0;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.e.c2.g0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/g0.class */
public class C13193g0 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C13188f0 f38317a;

    public C13193g0(C13188f0 c13188f0) {
        this.f38317a = c13188f0;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C13188f0 c13188f0 = this.f38317a;
        c13188f0.f38312d = false;
        C13188f0.AbstractC13190b abstractC13190b = c13188f0.f38310b;
        if (abstractC13190b != null) {
            C15571h.m18654B("INVITE_LAST_DISMISSED");
            C13188f0 c13188f02 = C21231c0.this.f59467i;
            c13188f02.m22000e(null);
            c13188f02.notifyDataSetChanged();
        }
    }
}
