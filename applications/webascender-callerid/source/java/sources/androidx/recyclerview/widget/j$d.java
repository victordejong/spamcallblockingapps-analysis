package androidx.recyclerview.widget;

import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j$d.class */
class j$d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ j f2118a;

    j$d(j jVar) {
        this.f2118a = jVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        this.f2118a.c.setAlpha(floatValue);
        this.f2118a.d.setAlpha(floatValue);
        this.f2118a.p();
    }
}
