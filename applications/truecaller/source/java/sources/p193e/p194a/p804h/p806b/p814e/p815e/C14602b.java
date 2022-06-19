package p193e.p194a.p804h.p806b.p814e.p815e;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import com.truecaller.calling.dialer.util.ui.DialpadFloatingActionButton;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.h.b.e.e.b */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/e/e/b.class */
public final class C14602b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ DialpadFloatingActionButton f41947a;

    public C14602b(DialpadFloatingActionButton dialpadFloatingActionButton) {
        this.f41947a = dialpadFloatingActionButton;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        DialpadFloatingActionButton dialpadFloatingActionButton = this.f41947a;
        l.d(valueAnimator, "animator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        dialpadFloatingActionButton.setBackgroundTintList(ColorStateList.valueOf(((Integer) animatedValue).intValue()));
    }
}
