package p193e.p194a.p372b0.p373a;

import android.animation.ValueAnimator;
import com.truecaller.common.p156ui.HeartbeatRippleView;
import java.util.Objects;
/* renamed from: e.a.b0.a.h */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/h.class */
public final class C8312h implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ ValueAnimator f25598a;

    /* renamed from: b */
    public final /* synthetic */ HeartbeatRippleView f25599b;

    public C8312h(ValueAnimator valueAnimator, HeartbeatRippleView heartbeatRippleView) {
        this.f25598a = valueAnimator;
        this.f25599b = heartbeatRippleView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        HeartbeatRippleView heartbeatRippleView = this.f25599b;
        Object animatedValue = this.f25598a.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        heartbeatRippleView.setRippleProgress(((Float) animatedValue).floatValue());
    }
}
