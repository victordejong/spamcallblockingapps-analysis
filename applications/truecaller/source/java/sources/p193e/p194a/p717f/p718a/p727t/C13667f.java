package p193e.p194a.p717f.p718a.p727t;

import android.animation.ValueAnimator;
import com.truecaller.incallui.callui.callergradient.CallerGradientView;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.f.a.t.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/t/f.class */
public final class C13667f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ CallerGradientView f39627a;

    public C13667f(CallerGradientView callerGradientView) {
        this.f39627a = callerGradientView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        CallerGradientView callerGradientView = this.f39627a;
        l.d(valueAnimator, "animator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        callerGradientView.setHeightRatio(((Float) animatedValue).floatValue());
    }
}
