package p193e.p194a.p798g5;

import android.animation.ValueAnimator;
/* renamed from: e.a.g5.v */
/* loaded from: classes14-dex2jar.jar:e/a/g5/v.class */
public class C14549v implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC14541t f41846a;

    public C14549v(View$OnClickListenerC14541t view$OnClickListenerC14541t) {
        this.f41846a = view$OnClickListenerC14541t;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f41846a.f41829m.setScaleX(floatValue);
        this.f41846a.f41829m.setScaleY(floatValue);
        this.f41846a.f41829m.setAlpha(Math.min(1.0f, floatValue));
    }
}
