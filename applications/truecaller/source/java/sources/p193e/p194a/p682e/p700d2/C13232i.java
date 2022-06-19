package p193e.p194a.p682e.p700d2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* renamed from: e.a.e.d2.i */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/i.class */
public class C13232i extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C13235l f38455a;

    public C13232i(C13235l c13235l) {
        this.f38455a = c13235l;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        C13235l c13235l = this.f38455a;
        Drawable[] drawableArr = c13235l.f38462e;
        c13235l.f38464g = drawableArr;
        for (Drawable drawable : drawableArr) {
            C13235l c13235l2 = this.f38455a;
            int i = c13235l2.f38459b;
            drawable.copyBounds(c13235l2.f38466i);
            Rect rect = c13235l2.f38466i;
            rect.offsetTo(rect.left, i);
            drawable.setBounds(c13235l2.f38466i);
            drawable.setAlpha(0);
        }
    }
}
