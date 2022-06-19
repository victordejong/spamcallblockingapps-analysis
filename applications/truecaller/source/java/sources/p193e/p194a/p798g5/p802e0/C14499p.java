package p193e.p194a.p798g5.p802e0;

import android.animation.ValueAnimator;
import com.truecaller.common.tag.TagView;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p798g5.p801d0.C14471b;
import s1.z.c.l;
/* renamed from: e.a.g5.e0.p */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/p.class */
public final class C14499p implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C14471b f41740a;

    /* renamed from: b */
    public final /* synthetic */ List f41741b;

    public C14499p(C14471b c14471b, View$OnClickListenerC14484i view$OnClickListenerC14484i, List list, boolean z) {
        this.f41740a = c14471b;
        this.f41741b = list;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        l.d(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        TagView tagView = this.f41740a.f41679m;
        l.d(tagView, "tagSelectedRoot");
        tagView.setScaleX(floatValue);
        TagView tagView2 = this.f41740a.f41679m;
        l.d(tagView2, "tagSelectedRoot");
        tagView2.setScaleY(floatValue);
        TagView tagView3 = this.f41740a.f41679m;
        l.d(tagView3, "tagSelectedRoot");
        tagView3.setAlpha(Math.min(1.0f, floatValue));
    }
}
