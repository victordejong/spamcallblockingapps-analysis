package p193e.p194a.p804h.p806b.p814e.p815e;

import android.animation.ValueAnimator;
import com.truecaller.calling.dialer.util.ui.DialpadFloatingActionButton;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.h.b.e.e.c */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/e/e/c.class */
public final class C14603c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ DialpadFloatingActionButton f41948a;

    public C14603c(DialpadFloatingActionButton dialpadFloatingActionButton) {
        this.f41948a = dialpadFloatingActionButton;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        DialpadFloatingActionButton dialpadFloatingActionButton = this.f41948a;
        l.d(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        int i = DialpadFloatingActionButton.w;
        dialpadFloatingActionButton.setScaleX(floatValue);
        dialpadFloatingActionButton.setScaleY(floatValue);
    }
}
